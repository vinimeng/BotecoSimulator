var lay_id = layer_get_id("Collision");
if layer_get_visible(lay_id)
{
    layer_set_visible(lay_id, false);
}
else
{
    layer_set_visible(lay_id, true);
}
