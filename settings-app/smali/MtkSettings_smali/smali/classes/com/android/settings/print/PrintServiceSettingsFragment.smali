.class public Lcom/android/settings/print/PrintServiceSettingsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PrintServiceSettingsFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;,
        Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/SettingsPreferenceFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Ljava/util/List<",
        "Landroid/printservice/PrintServiceInfo;",
        ">;>;",
        "Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;"
    }
.end annotation


# instance fields
.field private mAddPrintersIntent:Landroid/content/Intent;

.field private mComponentName:Landroid/content/ComponentName;

.field private final mDataObserver:Landroid/database/DataSetObserver;

.field private mLastUnfilteredItemCount:I

.field private mPreferenceKey:Ljava/lang/String;

.field private mPrintersAdapter:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

.field private mSearchView:Landroid/widget/SearchView;

.field private mServiceEnabled:Z

.field private mSettingsIntent:Landroid/content/Intent;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 85
    new-instance v0, Lcom/android/settings/print/PrintServiceSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$1;-><init>(Lcom/android/settings/print/PrintServiceSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mDataObserver:Landroid/database/DataSetObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/print/PrintServiceSettingsFragment;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->updateEmptyView()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/print/PrintServiceSettingsFragment;)Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/settings/print/PrintServiceSettingsFragment;)Landroid/content/ComponentName;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/print/PrintServiceSettingsFragment;)I
    .locals 0

    .line 76
    iget p0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mLastUnfilteredItemCount:I

    return p0
.end method

.method static synthetic access$202(Lcom/android/settings/print/PrintServiceSettingsFragment;I)I
    .locals 0

    .line 76
    iput p1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mLastUnfilteredItemCount:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/print/PrintServiceSettingsFragment;)Ljava/lang/String;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPreferenceKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settings/print/PrintServiceSettingsFragment;Ljava/lang/String;Z)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/settings/print/PrintServiceSettingsFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    return-void
.end method

.method private getBackupListView()Landroid/widget/ListView;
    .locals 2

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0062    # @id/backup_list

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    return-object v0
.end method

.method private initComponents()V
    .locals 3

    .line 256
    new-instance v0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;-><init>(Lcom/android/settings/print/PrintServiceSettingsFragment;Lcom/android/settings/print/PrintServiceSettingsFragment$1;)V

    iput-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    .line 257
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 259
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 261
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 262
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 263
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 265
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    .line 266
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    new-instance v1, Lcom/android/settings/print/PrintServiceSettingsFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$2;-><init>(Lcom/android/settings/print/PrintServiceSettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 274
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getBackupListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 275
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getBackupListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 276
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getBackupListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/print/PrintServiceSettingsFragment$3;

    invoke-direct {v1, p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$3;-><init>(Lcom/android/settings/print/PrintServiceSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 291
    return-void
.end method

.method private onPreferenceToggled(Ljava/lang/String;Z)V
    .locals 1

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "print"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/print/PrintManager;

    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mComponentName:Landroid/content/ComponentName;

    .line 189
    invoke-virtual {p1, v0, p2}, Landroid/print/PrintManager;->setPrintServiceEnabled(Landroid/content/ComponentName;Z)V

    .line 190
    return-void
.end method

.method private updateEmptyView()V
    .locals 9

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 198
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getBackupListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v1

    .line 199
    iget-object v2, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v2}, Lcom/android/settings/widget/ToggleSwitch;->isChecked()Z

    move-result v2

    const v3, 0x7f0a020b    # @id/message

    const v4, 0x7f0a0196    # @id/icon

    const v5, 0x7f0d008c    # @layout/empty_print_state 'res/layout/empty_print_state.xml'

    const v6, 0x7f0a012c    # @id/empty_print_state

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-nez v2, :cond_1

    .line 200
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    if-eq v2, v6, :cond_0

    .line 201
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 202
    nop

    .line 204
    move-object v1, v8

    :cond_0
    if-nez v1, :cond_5

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v5, v0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 207
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 208
    const v4, 0x7f120a8c    # @string/print_service_disabled 'Service disabled'

    invoke-virtual {p0, v4}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 209
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 210
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 211
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 212
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getBackupListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 213
    goto/16 :goto_0

    .line 214
    :cond_1
    iget-object v2, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {v2}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->getUnfilteredCount()I

    move-result v2

    if-gtz v2, :cond_3

    .line 215
    if-eqz v1, :cond_2

    .line 216
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0a012d    # @id/empty_printers_list_service_enabled

    if-eq v2, v3, :cond_2

    .line 217
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 218
    nop

    .line 220
    move-object v1, v8

    :cond_2
    if-nez v1, :cond_5

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d008d    # @layout/empty_printers_list_service_enabled 'res/layout/empty_printers_list_service_enabled.xml'

    invoke-virtual {v1, v2, v0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 223
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 224
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getBackupListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0

    .line 226
    :cond_3
    iget-object v2, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {v2}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->getCount()I

    move-result v2

    if-gtz v2, :cond_5

    .line 227
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    if-eq v2, v6, :cond_4

    .line 228
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 229
    nop

    .line 231
    move-object v1, v8

    :cond_4
    if-nez v1, :cond_5

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v5, v0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 234
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 235
    const v4, 0x7f120a83    # @string/print_no_printers_found 'No printers found'

    invoke-virtual {p0, v4}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 236
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 237
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 238
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 239
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getBackupListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 242
    :cond_5
    :goto_0
    return-void
.end method

.method private updateUiForArguments()V
    .locals 3

    .line 300
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 303
    const-string v1, "EXTRA_SERVICE_COMPONENT_NAME"

    .line 304
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 303
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mComponentName:Landroid/content/ComponentName;

    .line 307
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPreferenceKey:Ljava/lang/String;

    .line 310
    const-string v1, "EXTRA_CHECKED"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 311
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 313
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 314
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->setHasOptionsMenu(Z)V

    .line 315
    return-void
.end method

.method private updateUiForServiceState()V
    .locals 2

    .line 245
    iget-boolean v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mServiceEnabled:Z

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 247
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {v0}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->enable()V

    goto :goto_0

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 250
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {v0}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->disable()V

    .line 252
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 253
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 128
    const/16 v0, 0x4f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 133
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "EXTRA_TITLE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 136
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 139
    :cond_0
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Ljava/util/List<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;>;"
        }
    .end annotation

    .line 319
    new-instance p1, Landroid/print/PrintServicesLoader;

    .line 320
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "print"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/print/PrintManager;

    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p1, p2, v0, v1}, Landroid/print/PrintServicesLoader;-><init>(Landroid/print/PrintManager;Landroid/content/Context;I)V

    .line 319
    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 394
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 395
    const v0, 0x7f0e0004    # @menu/print_service_settings 'res/menu/print_service_settings.xml'

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 397
    const p2, 0x7f0a0274    # @id/print_menu_item_add_printer

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 398
    iget-boolean v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mServiceEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mAddPrintersIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 399
    iget-object p2, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mAddPrintersIntent:Landroid/content/Intent;

    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto :goto_0

    .line 401
    :cond_0
    invoke-interface {p1, p2}, Landroid/view/Menu;->removeItem(I)V

    .line 404
    :goto_0
    const p2, 0x7f0a0276    # @id/print_menu_item_settings

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 405
    iget-boolean v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mServiceEnabled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSettingsIntent:Landroid/content/Intent;

    if-eqz v1, :cond_1

    .line 406
    iget-object p2, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSettingsIntent:Landroid/content/Intent;

    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto :goto_1

    .line 408
    :cond_1
    invoke-interface {p1, p2}, Landroid/view/Menu;->removeItem(I)V

    .line 411
    :goto_1
    const p2, 0x7f0a0275    # @id/print_menu_item_search

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 412
    iget-boolean v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mServiceEnabled:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {v1}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->getUnfilteredCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 413
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SearchView;

    iput-object p1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSearchView:Landroid/widget/SearchView;

    .line 414
    iget-object p1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSearchView:Landroid/widget/SearchView;

    new-instance p2, Lcom/android/settings/print/PrintServiceSettingsFragment$4;

    invoke-direct {p2, p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$4;-><init>(Lcom/android/settings/print/PrintServiceSettingsFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 431
    iget-object p1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSearchView:Landroid/widget/SearchView;

    new-instance p2, Lcom/android/settings/print/PrintServiceSettingsFragment$5;

    invoke-direct {p2, p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$5;-><init>(Lcom/android/settings/print/PrintServiceSettingsFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/SearchView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_2

    .line 450
    :cond_2
    invoke-interface {p1, p2}, Landroid/view/Menu;->removeItem(I)V

    .line 452
    :goto_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 144
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "EXTRA_CHECKED"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mServiceEnabled:Z

    .line 148
    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 182
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 183
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 184
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 185
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 76
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/print/PrintServiceSettingsFragment;->onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Ljava/util/List<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;>;",
            "Ljava/util/List<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;)V"
        }
    .end annotation

    .line 327
    nop

    .line 329
    const/4 p1, 0x0

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 330
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 331
    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 332
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/printservice/PrintServiceInfo;

    invoke-virtual {v3}, Landroid/printservice/PrintServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 333
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/printservice/PrintServiceInfo;

    .line 334
    goto :goto_1

    .line 331
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 339
    :cond_1
    move-object p2, p1

    :goto_1
    if-nez p2, :cond_2

    .line 341
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->finishFragment()V

    .line 344
    :cond_2
    invoke-virtual {p2}, Landroid/printservice/PrintServiceInfo;->isEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mServiceEnabled:Z

    .line 346
    invoke-virtual {p2}, Landroid/printservice/PrintServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 347
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 349
    new-instance v2, Landroid/content/ComponentName;

    .line 350
    invoke-virtual {p2}, Landroid/printservice/PrintServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 351
    invoke-virtual {p2}, Landroid/printservice/PrintServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 353
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 355
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 357
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v2, v2, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v2, :cond_3

    .line 358
    iput-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSettingsIntent:Landroid/content/Intent;

    .line 361
    :cond_3
    goto :goto_2

    .line 362
    :cond_4
    iput-object p1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSettingsIntent:Landroid/content/Intent;

    .line 365
    :goto_2
    invoke-virtual {p2}, Landroid/printservice/PrintServiceInfo;->getAddPrintersActivityName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 366
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 368
    new-instance v1, Landroid/content/ComponentName;

    .line 369
    invoke-virtual {p2}, Landroid/printservice/PrintServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 370
    invoke-virtual {p2}, Landroid/printservice/PrintServiceInfo;->getAddPrintersActivityName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, v2, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 372
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p2

    .line 374
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 376
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ResolveInfo;

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean p2, p2, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz p2, :cond_5

    .line 377
    iput-object p1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mAddPrintersIntent:Landroid/content/Intent;

    .line 380
    :cond_5
    goto :goto_3

    .line 381
    :cond_6
    iput-object p1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mAddPrintersIntent:Landroid/content/Intent;

    .line 384
    :goto_3
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->updateUiForServiceState()V

    .line 385
    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Ljava/util/List<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 389
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->updateUiForServiceState()V

    .line 390
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 163
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 164
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 153
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 154
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->updateEmptyView()V

    .line 155
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->updateUiForServiceState()V

    .line 156
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 168
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 169
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 0

    .line 296
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->updateEmptyView()V

    .line 297
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 173
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 174
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->initComponents()V

    .line 175
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->updateUiForArguments()V

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 177
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getBackupListView()Landroid/widget/ListView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 178
    return-void
.end method
