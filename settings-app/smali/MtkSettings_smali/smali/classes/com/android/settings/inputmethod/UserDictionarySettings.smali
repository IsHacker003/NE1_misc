.class public Lcom/android/settings/inputmethod/UserDictionarySettings;
.super Landroid/app/ListFragment;
.source "UserDictionarySettings.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lcom/android/settingslib/core/instrumentation/Instrumentable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/ListFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/android/settingslib/core/instrumentation/Instrumentable;"
    }
.end annotation


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private mLocale:Ljava/lang/String;

.field private mVisibilityLoggerMixin:Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    return-void
.end method

.method private createAdapter()Landroid/widget/ListAdapter;
    .locals 7

    .line 137
    new-instance v6, Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    const-string v0, "word"

    const-string v2, "shortcut"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x2

    new-array v5, v0, [I

    fill-array-data v5, :array_0

    const v2, 0x7f0d01c6    # @layout/user_dictionary_item 'res/layout/user_dictionary_item.xml'

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    return-object v6

    :array_0
    .array-data 4
        0x1020014    # @android:id/text1
        0x1020015    # @android:id/text2
    .end array-data
.end method

.method public static deleteWord(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V
    .locals 5

    .line 222
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 223
    sget-object p1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "word=? AND shortcut is null OR shortcut=\'\'"

    new-array v2, v2, [Ljava/lang/String;

    aput-object p0, v2, v1

    invoke-virtual {p2, p1, v0, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 227
    :cond_0
    sget-object v0, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "word=? AND shortcut=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p0, v4, v1

    aput-object p1, v4, v2

    invoke-virtual {p2, v0, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 231
    :goto_0
    return-void
.end method

.method private getShortcut(I)Ljava/lang/String;
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 214
    iget-object p1, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v1

    .line 216
    :cond_1
    iget-object p1, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    const-string v1, "shortcut"

    .line 217
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 216
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getWord(I)Ljava/lang/String;
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 204
    iget-object p1, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v1

    .line 206
    :cond_1
    iget-object p1, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    const-string v1, "word"

    .line 207
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 206
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private showAddOrEditDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 183
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 184
    const-string v1, "mode"

    if-nez p1, :cond_0

    .line 185
    const/4 v2, 0x1

    goto :goto_0

    .line 186
    :cond_0
    const/4 v2, 0x0

    .line 184
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 187
    const-string v1, "word"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string p1, "shortcut"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string p1, "locale"

    iget-object p2, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mLocale:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionarySettings;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p2, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;

    .line 192
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 193
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    const p2, 0x7f120ee7    # @string/user_dict_settings_add_dialog_title 'Add to dictionary'

    .line 194
    invoke-virtual {p1, p2}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionarySettings;->getMetricsCategory()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 196
    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 198
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 70
    const/16 v0, 0x202

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 75
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 77
    new-instance p1, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionarySettings;->getMetricsCategory()I

    move-result v0

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionarySettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;-><init>(ILcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V

    iput-object p1, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mVisibilityLoggerMixin:Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 82
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 84
    move-object p1, v0

    goto :goto_0

    .line 82
    :cond_0
    const-string v1, "locale"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 84
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionarySettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 86
    if-nez v1, :cond_1

    .line 89
    move-object v1, v0

    goto :goto_1

    .line 86
    :cond_1
    const-string v2, "locale"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    :goto_1
    if-eqz v1, :cond_2

    .line 90
    nop

    .line 97
    move-object p1, v1

    goto :goto_2

    .line 91
    :cond_2
    if-eqz p1, :cond_3

    .line 92
    goto :goto_2

    .line 94
    :cond_3
    nop

    .line 97
    move-object p1, v0

    :goto_2
    iput-object p1, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mLocale:Ljava/lang/String;

    .line 99
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/inputmethod/UserDictionarySettings;->setHasOptionsMenu(Z)V

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionarySettings;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 101
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .line 235
    new-instance p1, Lcom/android/settings/inputmethod/UserDictionaryCursorLoader;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionarySettings;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mLocale:Ljava/lang/String;

    invoke-direct {p1, p2, v0}, Lcom/android/settings/inputmethod/UserDictionaryCursorLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 154
    nop

    .line 155
    const/4 p2, 0x0

    const/4 v0, 0x1

    const v1, 0x7f120ee9    # @string/user_dict_settings_add_menu_title 'Add'

    invoke-interface {p1, p2, v0, p2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    .line 156
    const p2, 0x7f080131    # @drawable/ic_menu_add_white 'res/drawable/ic_menu_add_white.xml'

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 157
    const/4 p2, 0x5

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 159
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p3

    .line 108
    if-eqz p3, :cond_0

    .line 109
    const v0, 0x7f120ef6    # @string/user_dict_settings_title 'Personal dictionary'

    invoke-virtual {p3, v0}, Landroid/app/ActionBar;->setTitle(I)V

    .line 110
    nop

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mLocale:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/inputmethod/UserDictionarySettingsUtils;->getLocaleDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-virtual {p3, v0}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 114
    :cond_0
    const p3, 0x10900c2    # @android:layout/preference_list_fragment

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    .line 145
    invoke-direct {p0, p3}, Lcom/android/settings/inputmethod/UserDictionarySettings;->getWord(I)Ljava/lang/String;

    move-result-object p1

    .line 146
    invoke-direct {p0, p3}, Lcom/android/settings/inputmethod/UserDictionarySettings;->getShortcut(I)Ljava/lang/String;

    move-result-object p2

    .line 147
    if-eqz p1, :cond_0

    .line 148
    invoke-direct {p0, p1, p2}, Lcom/android/settings/inputmethod/UserDictionarySettings;->showAddOrEditDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_0
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .line 240
    iput-object p2, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionarySettings;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-direct {p0}, Lcom/android/settings/inputmethod/UserDictionarySettings;->createAdapter()Landroid/widget/ListAdapter;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 242
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 51
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/inputmethod/UserDictionarySettings;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .line 247
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 163
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 164
    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Lcom/android/settings/inputmethod/UserDictionarySettings;->showAddOrEditDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return v0

    .line 167
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onPause()V
    .locals 1

    .line 172
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 173
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mVisibilityLoggerMixin:Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;

    invoke-virtual {v0}, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->onPause()V

    .line 174
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 131
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 132
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionarySettings;->mVisibilityLoggerMixin:Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;

    invoke-virtual {v0}, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->onResume()V

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionarySettings;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 134
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 120
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionarySettings;->getView()Landroid/view/View;

    move-result-object p1

    const p2, 0x1020004    # @android:id/empty

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 122
    const p2, 0x7f120ef3    # @string/user_dict_settings_empty_text 'You don’t have any words in the user dictionary. To add a word, tap the Add (+) button.'

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionarySettings;->getListView()Landroid/widget/ListView;

    move-result-object p2

    .line 125
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 126
    invoke-virtual {p2, p1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 127
    return-void
.end method
