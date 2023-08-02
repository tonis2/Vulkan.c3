module types;

struct QueueFamily {
    int graphics;
    int present;
    int compute;
}


fn bool QueueFamily.is_ready(&self)
{
    return self.graphics >= 0 && self.present >= 0;
}