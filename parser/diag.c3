module parser;

import std::io;
import std::collections::list;
import std::collections::map;

alias StringList = List{String};

// Collects everything the generator skips or drops so a run is never silent.
// Individual warnings print to stderr as they happen; report() prints the
// end-of-run summary. stdout stays clean.
struct Diagnostics {
    StringList skipped_extensions;
    StringList dropped_structs;
    StringList dropped_commands;
    StringList unknown_types;        // deduped root-cause type names
    StringList lost_lengths;
    StringList bad_prefixes;
    StringList skipped_result_codes; // deduped non-VK_ERROR codes in errorcodes attrs
    usz structs_emitted;
    usz unions_emitted;
    usz enums_emitted;
    usz commands_emitted;
    usz extensions_enabled;
    bool strict;
}

Diagnostics diag;

fn void Diagnostics.warn(&self, StringList* bucket, String msg) {
    bucket.push(msg);
    io::eprintfn("warning: %s", msg);
}

// Push without duplicates, and without printing per-occurrence (used for
// values that repeat across many commands/structs).
fn void Diagnostics.note_unique(&self, StringList* bucket, String msg) {
    foreach (entry : *bucket) if (entry == msg) return;
    bucket.push(msg);
}

// Record a struct/union/command dropped because of an unresolvable member type.
// Types that were themselves removed earlier are cascade drops; anything else is
// a root-cause unknown type worth listing in the summary.
fn void Diagnostics.record_dropped_type(&self, StringList* bucket, String owner, String member, String type_name, HashMap{String, bool}* removed) {
    if (removed.has_key(type_name)) {
        self.note_unique(bucket, dstring::join(mem,
            {owner, " — '", member, "' depends on dropped '", type_name, "'"}, "").str_view());
    } else {
        self.note_unique(bucket, dstring::join(mem,
            {owner, " — '", member, "' has unresolved type '", type_name, "'"}, "").str_view());
        self.note_unique(&self.unknown_types, type_name);
    }
}

fn bool Diagnostics.has_warnings(&self) {
    return self.skipped_extensions.len() + self.dropped_structs.len()
        + self.dropped_commands.len() + self.unknown_types.len()
        + self.lost_lengths.len() + self.bad_prefixes.len() > 0;
}

fn void Diagnostics.report(&self) {
    io::eprintfn("\n==== vk.xml generator summary ====");
    io::eprintfn("emitted: %d structs, %d unions, %d enums, %d commands; %d extensions enabled",
        self.structs_emitted, self.unions_emitted, self.enums_emitted,
        self.commands_emitted, self.extensions_enabled);
    io::eprintfn("skipped extensions: %d", self.skipped_extensions.len());
    foreach (entry : self.skipped_extensions) io::eprintfn("  - %s", entry);
    io::eprintfn("dropped structs/unions: %d", self.dropped_structs.len());
    io::eprintfn("dropped commands: %d", self.dropped_commands.len());
    io::eprintfn("array lengths discarded: %d", self.lost_lengths.len());
    io::eprintfn("prefix warnings: %d", self.bad_prefixes.len());
    io::eprintfn("non-error result codes ignored: %d", self.skipped_result_codes.len());
    if (self.unknown_types.len() > 0) {
        io::eprintfn("unresolved root-cause types (%d):", self.unknown_types.len());
        foreach (entry : self.unknown_types) io::eprintfn("  - %s", entry);
    }
}
