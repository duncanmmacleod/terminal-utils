
gtconvert() {
    local gpsordate="$@"
    python -c "
from gwpy.time import tconvert;
print(tconvert('${gpsordate}'));
"
}
