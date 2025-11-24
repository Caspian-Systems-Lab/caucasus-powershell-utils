Param(
# Usage:
#   .\Create-HumorStorytellingStructure.ps1
#   .\Create-HumorStorytellingStructure.ps1 "C:\path\to\humor-storytelling-lab"
    [string]$BaseDir = "humor-storytelling-lab"
)

Write-Host "Creating humor storytelling lab structure in: $BaseDir"

function New-DirAndFiles {
    param (
        [string]$SubDir,
        [string[]]$Files
    )

    $fullDir = Join-Path $BaseDir $SubDir
    New-Item -ItemType Directory -Path $fullDir -Force | Out-Null

    foreach ($f in $Files) {
        $path = Join-Path $fullDir $f
        if (-not (Test-Path $path)) {
            New-Item -ItemType File -Path $path | Out-Null
        }
    }
}

# Root
New-Item -ItemType Directory -Path $BaseDir -Force | Out-Null

$indexPath  = Join-Path $BaseDir "index.md"
$readmePath = Join-Path $BaseDir "README.md"
if (-not (Test-Path $indexPath))  { New-Item -ItemType File -Path $indexPath  | Out-Null }
if (-not (Test-Path $readmePath)) { New-Item -ItemType File -Path $readmePath | Out-Null }

#######################################
# 00_inbox
#######################################
New-DirAndFiles "00_inbox" @(
    "inbox.md",
    "to-sort-later.md"
)

#######################################
# 01_maps
#######################################
New-DirAndFiles "01_maps" @(
    "moc-overview.md",
    "moc-russian-humor.md",
    "moc-azerbaijani-humor.md",
    "moc-english-humor.md",
    "moc-rhetoric-and-theory.md",
    "moc-public-speaking.md"
)

#######################################
# 10_russian_humor
#######################################
New-DirAndFiles "10_russian_humor/authors" @(
    "ilf-petrov.md",
    "bulgakov-mikhail.md",
    "averchenko-arkadiy.md",
    "zoshchenko-mikhail.md"
)

New-DirAndFiles "10_russian_humor/works" @(
    "12-stulyev.md",
    "zolotoy-telyonok.md",
    "ponedelnik-nachinaetsya-v-subbotu.md",
    "other-classic-works.md"
)

New-DirAndFiles "10_russian_humor/patterns" @(
    "russian-humor-patterns.md",
    "quotes-and-setups.md",
    "rhetorical-devices-ru.md"
)

New-DirAndFiles "10_russian_humor/snippets" @(
    "short-anecdotes-ru.md",
    "story-templates-ru.md"
)

#######################################
# 20_azerbaijani_humor
#######################################
New-DirAndFiles "20_azerbaijani_humor/authors" @(
    "mirza-alekper-sabir.md",
    "uzeyir-hajibeyov.md",
    "jalil-mammadguluzade.md",
    "molla-nasreddin-persona.md"
)

New-DirAndFiles "20_azerbaijani_humor/journals-and-works" @(
    "molla-nasreddin-journal.md",
    "satirical-felietons-hajibeyov.md",
    "other-azerbaijani-satire.md"
)

New-DirAndFiles "20_azerbaijani_humor/patterns" @(
    "azerbaijani-humor-patterns.md",
    "cultural-references.md",
    "rhetorical-devices-az.md"
)

New-DirAndFiles "20_azerbaijani_humor/snippets" @(
    "molla-nasreddin-stories.md",
    "folk-anecdotes-az.md",
    "story-templates-az.md"
)

#######################################
# 30_english_humor
#######################################
New-DirAndFiles "30_english_humor/traditions" @(
    "british-humor.md",
    "american-humor.md",
    "satire-traditions.md"
)

New-DirAndFiles "30_english_humor/authors" @(
    "mark-twain.md",
    "jonathan-swift.md",
    "oscar-wilde.md",
    "pg-wodehouse.md",
    "george-carlin.md",
    "dave-chappelle.md",
    "john-cleese.md"
)

New-DirAndFiles "30_english_humor/comedy-writing" @(
    "the-comic-toolbox-notes.md",
    "comedy-writing-secrets-notes.md",
    "standup-techniques.md",
    "improv-rules.md",
    "sketch-comedy-structure.md",
    "joke-writing-formulas.md"
)

New-DirAndFiles "30_english_humor/patterns" @(
    "english-humor-patterns.md",
    "irony-satire-parody.md",
    "british-understatement.md",
    "american-setup-punchline.md",
    "rhetorical-devices-en.md"
)

New-DirAndFiles "30_english_humor/snippets" @(
    "one-liners-en.md",
    "short-anecdotes-en.md",
    "story-templates-en.md"
)

#######################################
# 40_rhetoric_theory
#######################################
New-DirAndFiles "40_rhetoric_theory" @(
    "aristotle-rhetoric-summary.md",
    "cicero-oratory-summary.md",
    "satire-vs-sarcasm-vs-irony.md",
    "parody-and-grotesque.md",
    "humor-as-rhetorical-weapon.md",
    "rhetorical-devices-masterlist.md"
)

#######################################
# 50_public_speaking
#######################################
New-DirAndFiles "50_public_speaking" @(
    "public-speaking-basics.md",
    "stage-presence.md",
    "voice-control.md",
    "body-language.md",
    "improv-techniques.md",
    "toast-structure-guide.md",
    "tamada-techniques.md",
    "speech-templates.md",
    "audience-engagement.md"
)

#######################################
# 60_personal_repertoire
#######################################
New-DirAndFiles "60_personal_repertoire" @(
    "icebreakers.md",
    "for-small-talk.md",
    "for-deep-conversations.md",
    "meeting-and-speech-intros.md",
    "bilingual-stories-ru-az.md",
    "bilingual-stories-ru-en.md",
    "bilingual-stories-en-az.md",
    "toasts-master-list.md"
)

#######################################
# 70_practice
#######################################
New-DirAndFiles "70_practice" @(
    "daily-drills.md",
    "rewrite-classics.md",
    "improv-prompts.md",
    "performance-notes.md"
)

#######################################
# 80_reading_lists
#######################################
New-DirAndFiles "80_reading_lists" @(
    "reading-list-humor-ru.md",
    "reading-list-humor-az.md",
    "reading-list-humor-en.md",
    "reading-list-rhetoric.md",
    "reading-list-public-speaking-ru.md",
    "reading-list-public-speaking-az.md",
    "reading-list-public-speaking-en.md"
)

#######################################
# 90_meta
#######################################
New-DirAndFiles "90_meta" @(
    "workflow-obsidian-git-quartz.md",
    "ideas-for-website-structure.md",
    "repo-standards.md"
)

Write-Host "Done."
