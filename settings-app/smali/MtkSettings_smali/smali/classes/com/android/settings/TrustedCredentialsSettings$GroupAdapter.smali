.class Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/ExpandableListView$OnChildClickListener;
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final mData:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

.field final synthetic this$0:Lcom/android/settings/TrustedCredentialsSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$Tab;)V
    .locals 2

    .line 333
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 334
    new-instance v0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p0, v1}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$Tab;Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;Lcom/android/settings/TrustedCredentialsSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->mData:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    .line 335
    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->load()V

    .line 336
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$Tab;Lcom/android/settings/TrustedCredentialsSettings$1;)V
    .locals 0

    .line 328
    invoke-direct {p0, p1, p2}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$Tab;)V

    return-void
.end method

.method private getUserIdByGroup(I)I
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->mData:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->access$700(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p1

    return p1
.end method

.method private getViewForCertificate(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;Lcom/android/settings/TrustedCredentialsSettings$Tab;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 480
    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 481
    new-instance p3, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {p3, p0, v1}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;-><init>(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;Lcom/android/settings/TrustedCredentialsSettings$1;)V

    .line 482
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {v1}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 483
    const v2, 0x7f0d01b1    # @layout/trusted_credential 'res/layout/trusted_credential.xml'

    invoke-virtual {v1, v2, p4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    .line 484
    invoke-virtual {p4, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 485
    const v1, 0x7f0a039d    # @id/trusted_credential_subject_primary

    .line 486
    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 485
    invoke-static {p3, v1}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;->access$1402(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 487
    const v1, 0x7f0a039e    # @id/trusted_credential_subject_secondary

    .line 488
    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 487
    invoke-static {p3, v1}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;->access$1502(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 489
    const v1, 0x7f0a039c    # @id/trusted_credential_status

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    invoke-static {p3, v1}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;->access$1602(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;Landroid/widget/Switch;)Landroid/widget/Switch;

    .line 491
    invoke-static {p3}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;->access$1600(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 492
    goto :goto_0

    .line 493
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;

    .line 495
    move-object v5, p4

    move-object p4, p3

    move-object p3, v5

    :goto_0
    invoke-static {p3}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;->access$1400(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$1700(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    invoke-static {p3}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;->access$1500(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$1800(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    invoke-static {p2}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->access$1900(Lcom/android/settings/TrustedCredentialsSettings$Tab;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 498
    invoke-static {p3}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;->access$1600(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;)Landroid/widget/Switch;

    move-result-object p2

    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$2000(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 499
    invoke-static {p3}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;->access$1600(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;)Landroid/widget/Switch;

    move-result-object p2

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings;->access$800(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/os/UserManager;

    move-result-object v1

    const-string v2, "no_config_credentials"

    new-instance v3, Landroid/os/UserHandle;

    iget v4, p1, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mProfileId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 502
    invoke-static {p3}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;->access$1600(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;)Landroid/widget/Switch;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/Switch;->setVisibility(I)V

    .line 503
    invoke-static {p3}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;->access$1600(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;)Landroid/widget/Switch;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/Switch;->setTag(Ljava/lang/Object;)V

    .line 505
    :cond_1
    return-object p4
.end method


# virtual methods
.method public checkGroupExpandableAndStartWarningActivity(I)Z
    .locals 1

    .line 450
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->checkGroupExpandableAndStartWarningActivity(IZ)Z

    move-result p1

    return p1
.end method

.method public checkGroupExpandableAndStartWarningActivity(IZ)Z
    .locals 3

    .line 455
    invoke-virtual {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getGroup(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 456
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 457
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings;->access$800(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 458
    invoke-static {v0}, Lcom/android/internal/app/UnlaunchableAppActivity;->createInQuietModeDialogIntent(I)Landroid/content/Intent;

    move-result-object p1

    .line 460
    if-eqz p2, :cond_0

    .line 461
    iget-object p2, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {p2}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 463
    :cond_0
    return v2

    .line 464
    :cond_1
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings;->access$800(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 465
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    .line 466
    invoke-virtual {v1}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 467
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 468
    if-eqz p2, :cond_2

    .line 469
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {p1, v0}, Lcom/android/settings/TrustedCredentialsSettings;->access$1200(Lcom/android/settings/TrustedCredentialsSettings;I)Z

    .line 471
    :cond_2
    return v2

    .line 474
    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public getChild(II)Lcom/android/settings/TrustedCredentialsSettings$CertHolder;
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->mData:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->access$700(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getUserIdByGroup(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    return-object p1
.end method

.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .locals 0

    .line 328
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getChild(II)Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    move-result-object p1

    return-object p1
.end method

.method public getChildAdapter(I)Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;
    .locals 3

    .line 446
    new-instance v0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;ILcom/android/settings/TrustedCredentialsSettings$1;)V

    return-object v0
.end method

.method public getChildId(II)J
    .locals 0

    .line 371
    int-to-long p1, p2

    return-wide p1
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 399
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getChild(II)Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->mData:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {p2}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->access$900(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Lcom/android/settings/TrustedCredentialsSettings$Tab;

    move-result-object p2

    invoke-direct {p0, p1, p2, p4, p5}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getViewForCertificate(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;Lcom/android/settings/TrustedCredentialsSettings$Tab;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getChildrenCount(I)I
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->mData:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->access$700(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 345
    if-eqz p1, :cond_0

    .line 346
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1

    .line 348
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getGroup(I)Landroid/os/UserHandle;
    .locals 2

    .line 352
    new-instance v0, Landroid/os/UserHandle;

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->mData:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->access$700(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p1

    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0
.end method

.method public bridge synthetic getGroup(I)Ljava/lang/Object;
    .locals 0

    .line 328
    invoke-virtual {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getGroup(I)Landroid/os/UserHandle;

    move-result-object p1

    return-object p1
.end method

.method public getGroupCount()I
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->mData:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->access$700(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2

    .line 361
    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getUserIdByGroup(I)I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 380
    if-nez p3, :cond_0

    .line 381
    iget-object p2, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {p2}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string p3, "layout_inflater"

    .line 382
    invoke-virtual {p2, p3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 383
    invoke-static {p2, p4}, Lcom/android/settings/Utils;->inflateCategoryHeader(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 386
    :cond_0
    const p2, 0x1020016    # @android:id/title

    invoke-virtual {p3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 387
    invoke-virtual {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getUserInfoByGroup(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 388
    const p1, 0x7f12038d    # @string/category_work 'Work'

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 390
    :cond_1
    const p1, 0x7f12038c    # @string/category_personal 'Personal'

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(I)V

    .line 392
    :goto_0
    const/4 p1, 0x6

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 394
    return-object p3
.end method

.method public getUserInfoByGroup(I)Landroid/content/pm/UserInfo;
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings;->access$800(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/os/UserManager;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getUserIdByGroup(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    return-object p1
.end method

.method public hasStableIds()Z
    .locals 1

    .line 375
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 0

    .line 404
    const/4 p1, 0x1

    return p1
.end method

.method public load()V
    .locals 2

    .line 431
    new-instance v0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->mData:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;-><init>(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 432
    return-void
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 0

    .line 410
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {p0, p3, p4}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getChild(II)Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/TrustedCredentialsSettings;->access$1000(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V

    .line 411
    const/4 p1, 0x1

    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 420
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    .line 421
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {v0, p1}, Lcom/android/settings/TrustedCredentialsSettings;->removeOrInstallCert(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V

    .line 422
    return-void
.end method

.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 0

    .line 427
    invoke-virtual {p0, p3}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->checkGroupExpandableAndStartWarningActivity(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public remove(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V
    .locals 1

    .line 435
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->mData:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-virtual {v0, p1}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->remove(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V

    .line 436
    return-void
.end method
