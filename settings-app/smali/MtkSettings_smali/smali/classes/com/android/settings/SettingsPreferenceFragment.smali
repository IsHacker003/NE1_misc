.class public abstract Lcom/android/settings/SettingsPreferenceFragment;
.super Lcom/android/settings/core/InstrumentedPreferenceFragment;
.source "SettingsPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/DialogCreatable;
.implements Lcom/android/settings/support/actionbar/HelpResourceProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;
    }
.end annotation


# static fields
.field private static final ORDER_FIRST:I = -0x1

.field private static final SAVE_HIGHLIGHTED_KEY:Ljava/lang/String; = "android:preference_highlighted"

.field private static final TAG:Ljava/lang/String; = "SettingsPreference"


# instance fields
.field public mAdapter:Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;

.field private mAnimationAllowed:Z

.field private mButtonBar:Landroid/view/ViewGroup;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentRootAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

.field private mDataSetObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

.field private mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

.field private mEmptyView:Landroid/view/View;

.field protected final mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixin;

.field private mHeader:Lcom/android/settings/applications/LayoutPreference;

.field private mIsDataSetObserverRegistered:Z

.field private mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

.field private mPreferenceCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field public mPreferenceHighlighted:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 62
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;-><init>()V

    .line 69
    new-instance v0, Lcom/android/settingslib/widget/FooterPreferenceMixin;

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settingslib/widget/FooterPreferenceMixin;-><init>(Landroid/support/v14/preference/PreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixin;

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    .line 81
    new-instance v1, Lcom/android/settings/SettingsPreferenceFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings/SettingsPreferenceFragment$1;-><init>(Lcom/android/settings/SettingsPreferenceFragment;)V

    iput-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDataSetObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    .line 126
    iput-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPreferenceHighlighted:Z

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/SettingsPreferenceFragment;)Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;)Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    return-object p1
.end method

.method private addPreferenceToTop(Lcom/android/settings/applications/LayoutPreference;)V
    .locals 1

    .line 284
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/LayoutPreference;->setOrder(I)V

    .line 285
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 288
    :cond_0
    return-void
.end method

.method private checkAvailablePrefs(Landroid/support/v7/preference/PreferenceGroup;)V
    .locals 4

    .line 157
    if-nez p1, :cond_0

    return-void

    .line 158
    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 159
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 160
    instance-of v2, v1, Lcom/android/settings/SelfAvailablePreference;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lcom/android/settings/SelfAvailablePreference;

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/settings/SelfAvailablePreference;->isAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 162
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1

    .line 163
    :cond_1
    instance-of v2, v1, Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v2, :cond_2

    .line 164
    check-cast v1, Landroid/support/v7/preference/PreferenceGroup;

    invoke-direct {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->checkAvailablePrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 158
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_3
    return-void
.end method


# virtual methods
.method public addPreferencesFromResource(I)V
    .locals 0

    .line 152
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->addPreferencesFromResource(I)V

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->checkAvailablePrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 154
    return-void
.end method

.method protected cacheRemoveAllPrefs(Landroid/support/v7/preference/PreferenceGroup;)V
    .locals 5

    .line 352
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPreferenceCache:Landroid/util/ArrayMap;

    .line 353
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 354
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 355
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 356
    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 357
    goto :goto_1

    .line 359
    :cond_0
    iget-object v3, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPreferenceCache:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 361
    :cond_1
    return-void
.end method

.method public finish()V
    .locals 2

    .line 655
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 656
    if-nez v0, :cond_0

    return-void

    .line 657
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 658
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 660
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 662
    :goto_0
    return-void
.end method

.method public final finishFragment()V
    .locals 1

    .line 408
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 409
    return-void
.end method

.method public getButtonBar()Landroid/view/ViewGroup;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mButtonBar:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected getCachedCount()I
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPreferenceCache:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPreferenceCache:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected getCachedPreference(Ljava/lang/String;)Landroid/support/v7/preference/Preference;
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPreferenceCache:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPreferenceCache:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/preference/Preference;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method protected getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .line 417
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 418
    if-eqz v0, :cond_0

    .line 419
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mContentResolver:Landroid/content/ContentResolver;

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method public getDialogMetricsCategory(I)I
    .locals 0

    .line 466
    const/4 p1, 0x0

    return p1
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method public getHeaderView()Lcom/android/settings/applications/LayoutPreference;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mHeader:Lcom/android/settings/applications/LayoutPreference;

    return-object v0
.end method

.method public getInitialExpandedChildCount()I
    .locals 1

    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method protected getIntent()Landroid/content/Intent;
    .locals 1

    .line 665
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 666
    const/4 v0, 0x0

    return-object v0

    .line 668
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    .line 651
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ButtonBarHandler;

    invoke-interface {v0}, Lcom/android/settings/ButtonBarHandler;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .line 435
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method protected getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 428
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected hasNextButton()Z
    .locals 1

    .line 647
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ButtonBarHandler;

    invoke-interface {v0}, Lcom/android/settings/ButtonBarHandler;->hasNextButton()Z

    move-result v0

    return v0
.end method

.method public highlightPreferenceIfNeeded()V
    .locals 3

    .line 247
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mAdapter:Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mAdapter:Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->requestHighlight(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)V

    .line 253
    :cond_1
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 197
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 198
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setHasOptionsMenu(Z)V

    .line 199
    return-void
.end method

.method protected onBindPreferences()V
    .locals 0

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->registerObserverIfNeeded()V

    .line 210
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 131
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 132
    invoke-static {p0}, Lcom/android/settings/search/actionbar/SearchMenuController;->init(Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;)V

    .line 133
    invoke-static {p0}, Lcom/android/settings/support/actionbar/HelpMenuController;->init(Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;)V

    .line 135
    if-eqz p1, :cond_0

    .line 136
    const-string v0, "android:preference_highlighted"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPreferenceHighlighted:Z

    .line 138
    :cond_0
    invoke-static {p0}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->adjustInitialExpandedChildCount(Lcom/android/settings/SettingsPreferenceFragment;)V

    .line 139
    return-void
.end method

.method protected onCreateAdapter(Landroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 3

    .line 339
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 340
    new-instance v1, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;

    .line 341
    if-nez v0, :cond_0

    .line 342
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v2, ":settings:fragment_args_key"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-boolean v2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPreferenceHighlighted:Z

    invoke-direct {v1, p1, v0, v2}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;-><init>(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mAdapter:Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;

    .line 344
    iget-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mAdapter:Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;

    return-object p1
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 0

    .line 461
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreateLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 2

    .line 333
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 334
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 144
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 145
    const p2, 0x7f0a0265    # @id/pinned_header

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

    .line 146
    const p2, 0x7f0a0092    # @id/button_bar

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mButtonBar:Landroid/view/ViewGroup;

    .line 147
    return-object p1
.end method

.method protected onDataSetChanged()V
    .locals 0

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->highlightPreferenceIfNeeded()V

    .line 266
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->updateEmptyView()V

    .line 267
    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 440
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->dismiss()V

    .line 443
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 446
    :cond_0
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onDetach()V

    .line 447
    return-void
.end method

.method public onDialogShowing()V
    .locals 0

    .line 503
    return-void
.end method

.method public onDisplayPreferenceDialog(Landroid/support/v7/preference/Preference;)V
    .locals 2

    .line 507
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 509
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 511
    :cond_0
    nop

    .line 512
    instance-of v0, p1, Lcom/android/settings/RestrictedListPreference;

    if-eqz v0, :cond_1

    .line 513
    nop

    .line 514
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Landroid/support/v14/preference/ListPreferenceDialogFragment;

    move-result-object p1

    goto :goto_0

    .line 515
    :cond_1
    instance-of v0, p1, Lcom/android/settings/CustomListPreference;

    if-eqz v0, :cond_2

    .line 516
    nop

    .line 517
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Landroid/support/v14/preference/ListPreferenceDialogFragment;

    move-result-object p1

    goto :goto_0

    .line 518
    :cond_2
    instance-of v0, p1, Lcom/android/settingslib/CustomDialogPreference;

    if-eqz v0, :cond_3

    .line 519
    nop

    .line 520
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settingslib/CustomDialogPreference$CustomPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Lcom/android/settingslib/CustomDialogPreference$CustomPreferenceDialogFragment;

    move-result-object p1

    goto :goto_0

    .line 521
    :cond_3
    instance-of v0, p1, Lcom/android/settingslib/CustomEditTextPreference;

    if-eqz v0, :cond_4

    .line 522
    nop

    .line 523
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settingslib/CustomEditTextPreference$CustomPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Lcom/android/settingslib/CustomEditTextPreference$CustomPreferenceDialogFragment;

    move-result-object p1

    .line 528
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 529
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "dialog_preference"

    invoke-virtual {p1, v0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 530
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDialogShowing()V

    .line 531
    return-void

    .line 525
    :cond_4
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onDisplayPreferenceDialog(Landroid/support/v7/preference/Preference;)V

    .line 526
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 203
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onResume()V

    .line 204
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->highlightPreferenceIfNeeded()V

    .line 205
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 188
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 190
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mAdapter:Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;

    if-eqz v0, :cond_0

    .line 191
    const-string v0, "android:preference_highlighted"

    iget-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mAdapter:Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;

    invoke-virtual {v1}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->isHighlightRequested()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 193
    :cond_0
    return-void
.end method

.method protected onUnbindPreferences()V
    .locals 0

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->unregisterObserverIfNeeded()V

    .line 215
    return-void
.end method

.method public registerObserverIfNeeded()V
    .locals 2

    .line 225
    iget-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    if-nez v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDataSetObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 230
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDataSetObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 231
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDataSetChanged()V

    .line 234
    :cond_1
    return-void
.end method

.method protected removeCachedPrefs(Landroid/support/v7/preference/PreferenceGroup;)V
    .locals 2

    .line 368
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPreferenceCache:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/Preference;

    .line 369
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 370
    goto :goto_0

    .line 371
    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPreferenceCache:Landroid/util/ArrayMap;

    .line 372
    return-void
.end method

.method protected removeDialog(I)V
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->getDialogId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 474
    iget-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->dismissAllowingStateLoss()V

    .line 476
    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 477
    return-void
.end method

.method removePreference(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;)Z
    .locals 5

    .line 385
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 386
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 387
    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v3

    .line 388
    invoke-virtual {v3}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 390
    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 391
    invoke-virtual {p1, v3}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    move-result p1

    return p1

    .line 394
    :cond_0
    instance-of v4, v3, Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v4, :cond_1

    .line 395
    check-cast v3, Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {p0, v3, p2}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 396
    const/4 p1, 0x1

    return p1

    .line 386
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 400
    :cond_2
    return v1
.end method

.method public removePreference(Ljava/lang/String;)Z
    .locals 1

    .line 380
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected setAnimationAllowed(Z)V
    .locals 0

    .line 348
    iput-boolean p1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mAnimationAllowed:Z

    .line 349
    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 2

    .line 320
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mEmptyView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 323
    :cond_0
    iput-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mEmptyView:Landroid/view/View;

    .line 324
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->updateEmptyView()V

    .line 325
    return-void
.end method

.method protected setHeaderView(I)V
    .locals 2

    .line 274
    new-instance v0, Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/settings/applications/LayoutPreference;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mHeader:Lcom/android/settings/applications/LayoutPreference;

    .line 275
    iget-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mHeader:Lcom/android/settings/applications/LayoutPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferenceToTop(Lcom/android/settings/applications/LayoutPreference;)V

    .line 276
    return-void
.end method

.method protected setHeaderView(Landroid/view/View;)V
    .locals 2

    .line 279
    new-instance v0, Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/settings/applications/LayoutPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mHeader:Lcom/android/settings/applications/LayoutPreference;

    .line 280
    iget-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mHeader:Lcom/android/settings/applications/LayoutPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferenceToTop(Lcom/android/settings/applications/LayoutPreference;)V

    .line 281
    return-void
.end method

.method public setLoading(ZZ)V
    .locals 2

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a01f4    # @id/loading_container

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {v0, v1, p1, p2}, Lcom/android/settings/widget/LoadingViewController;->handleLoadingContainer(Landroid/view/View;Landroid/view/View;ZZ)V

    .line 222
    return-void
.end method

.method protected setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 1

    .line 485
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-static {v0, p1}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->access$002(Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;Landroid/content/DialogInterface$OnCancelListener;)Landroid/content/DialogInterface$OnCancelListener;

    .line 488
    :cond_0
    return-void
.end method

.method protected setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1

    .line 496
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-static {v0, p1}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->access$102(Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;Landroid/content/DialogInterface$OnDismissListener;)Landroid/content/DialogInterface$OnDismissListener;

    .line 499
    :cond_0
    return-void
.end method

.method public setPinnedHeaderView(I)Landroid/view/View;
    .locals 3

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

    .line 176
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 177
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setPinnedHeaderView(Landroid/view/View;)V

    .line 178
    return-object p1
.end method

.method public setPinnedHeaderView(Landroid/view/View;)V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 183
    iget-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 184
    return-void
.end method

.method public setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    .line 292
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceScreen;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    iget-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mAnimationAllowed:Z

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->setShouldUseGeneratedIds(Z)V

    .line 296
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 297
    if-eqz p1, :cond_1

    .line 298
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mHeader:Lcom/android/settings/applications/LayoutPreference;

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mHeader:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 302
    :cond_1
    return-void
.end method

.method protected setResult(I)V
    .locals 1

    .line 679
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 680
    return-void

    .line 682
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 683
    return-void
.end method

.method protected setResult(ILandroid/content/Intent;)V
    .locals 1

    .line 672
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 673
    return-void

    .line 675
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 676
    return-void
.end method

.method protected showDialog(I)V
    .locals 2

    .line 452
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 453
    const-string v0, "SettingsPreference"

    const-string v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_0
    new-instance v0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/settings/DialogCreatable;I)V

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 456
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 457
    return-void
.end method

.method public unregisterObserverIfNeeded()V
    .locals 2

    .line 237
    iget-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDataSetObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 242
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    .line 244
    :cond_1
    return-void
.end method

.method updateEmptyView()V
    .locals 5

    .line 306
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 307
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 308
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x102003f    # @android:id/list_container

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 309
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    .line 310
    iget-object v3, p0, Lcom/android/settings/SettingsPreferenceFragment;->mHeader:Lcom/android/settings/applications/LayoutPreference;

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    sub-int/2addr v2, v3

    .line 311
    iget-object v3, p0, Lcom/android/settings/SettingsPreferenceFragment;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixin;

    invoke-virtual {v3}, Lcom/android/settingslib/widget/FooterPreferenceMixin;->hasFooter()Z

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_3

    if-eqz v0, :cond_2

    .line 312
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 313
    :cond_2
    move v4, v1

    goto :goto_2

    .line 312
    :cond_3
    :goto_1
    nop

    .line 313
    :goto_2
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mEmptyView:Landroid/view/View;

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    const/16 v1, 0x8

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 314
    goto :goto_4

    .line 315
    :cond_5
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 317
    :goto_4
    return-void
.end method
