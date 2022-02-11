
gtconvert() {
    local gpsordate="$@"
    ${PYTHON:-python3} -c "
from gwpy.time import tconvert;
print(tconvert('${gpsordate}'));
"
}
