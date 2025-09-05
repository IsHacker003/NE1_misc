.class Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "UserDictionarySettings.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/inputmethod/UserDictionarySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyAdapter"
.end annotation


# instance fields
.field private mIndexer:Landroid/widget/AlphabetIndexer;

.field private final mViewBinder:Landroid/widget/SimpleCursorAdapter$ViewBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 0

    .line 274
    invoke-direct/range {p0 .. p5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 253
    new-instance p2, Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter$1;

    invoke-direct {p2, p0}, Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter$1;-><init>(Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter;)V

    iput-object p2, p0, Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter;->mViewBinder:Landroid/widget/SimpleCursorAdapter$ViewBinder;

    .line 276
    if-eqz p3, :cond_0

    .line 277
    const p2, 0x104021c    # @android:string/fingerprint_acquired_insufficient

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 279
    const-string p2, "word"

    invoke-interface {p3, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    .line 280
    new-instance p4, Landroid/widget/AlphabetIndexer;

    invoke-direct {p4, p3, p2, p1}, Landroid/widget/AlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object p4, p0, Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    .line 282
    :cond_0
    iget-object p1, p0, Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter;->mViewBinder:Landroid/widget/SimpleCursorAdapter$ViewBinder;

    invoke-virtual {p0, p1}, Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter;->setViewBinder(Landroid/widget/SimpleCursorAdapter$ViewBinder;)V

    .line 283
    return-void
.end method


# virtual methods
.method public getPositionForSection(I)I
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0, p1}, Landroid/widget/AlphabetIndexer;->getPositionForSection(I)I

    move-result p1

    :goto_0
    return p1
.end method

.method public getSectionForPosition(I)I
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0, p1}, Landroid/widget/AlphabetIndexer;->getSectionForPosition(I)I

    move-result p1

    :goto_0
    return p1
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0}, Landroid/widget/AlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method
