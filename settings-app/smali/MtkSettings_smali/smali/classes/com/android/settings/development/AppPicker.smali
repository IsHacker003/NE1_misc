.class public Lcom/android/settings/development/AppPicker;
.super Landroid/app/ListActivity;
.source "AppPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/development/AppPicker$AppListAdapter;,
        Lcom/android/settings/development/AppPicker$MyApplicationInfo;
    }
.end annotation


# static fields
.field private static final sDisplayNameComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/development/AppPicker$MyApplicationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdapter:Lcom/android/settings/development/AppPicker$AppListAdapter;

.field private mDebuggableOnly:Z

.field private mPermissionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 171
    new-instance v0, Lcom/android/settings/development/AppPicker$1;

    invoke-direct {v0}, Lcom/android/settings/development/AppPicker$1;-><init>()V

    sput-object v0, Lcom/android/settings/development/AppPicker;->sDisplayNameComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/development/AppPicker;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/android/settings/development/AppPicker;->mDebuggableOnly:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/settings/development/AppPicker;)Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/settings/development/AppPicker;->mPermissionName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200()Ljava/util/Comparator;
    .locals 1

    .line 42
    sget-object v0, Lcom/android/settings/development/AppPicker;->sDisplayNameComparator:Ljava/util/Comparator;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 54
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/development/AppPicker;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.android.settings.extra.REQUESTIING_PERMISSION"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/AppPicker;->mPermissionName:Ljava/lang/String;

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/development/AppPicker;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.android.settings.extra.DEBUGGABLE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/development/AppPicker;->mDebuggableOnly:Z

    .line 59
    new-instance p1, Lcom/android/settings/development/AppPicker$AppListAdapter;

    invoke-direct {p1, p0, p0}, Lcom/android/settings/development/AppPicker$AppListAdapter;-><init>(Lcom/android/settings/development/AppPicker;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/development/AppPicker;->mAdapter:Lcom/android/settings/development/AppPicker$AppListAdapter;

    .line 60
    iget-object p1, p0, Lcom/android/settings/development/AppPicker;->mAdapter:Lcom/android/settings/development/AppPicker$AppListAdapter;

    invoke-virtual {p1}, Lcom/android/settings/development/AppPicker$AppListAdapter;->getCount()I

    move-result p1

    if-gtz p1, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/development/AppPicker;->finish()V

    goto :goto_0

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/android/settings/development/AppPicker;->mAdapter:Lcom/android/settings/development/AppPicker$AppListAdapter;

    invoke-virtual {p0, p1}, Lcom/android/settings/development/AppPicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 65
    :goto_0
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    .line 79
    iget-object p1, p0, Lcom/android/settings/development/AppPicker;->mAdapter:Lcom/android/settings/development/AppPicker$AppListAdapter;

    invoke-virtual {p1, p3}, Lcom/android/settings/development/AppPicker$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/development/AppPicker$MyApplicationInfo;

    .line 80
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 81
    iget-object p3, p1, Lcom/android/settings/development/AppPicker$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz p3, :cond_0

    iget-object p1, p1, Lcom/android/settings/development/AppPicker$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    :cond_0
    const/4 p1, -0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/development/AppPicker;->setResult(ILandroid/content/Intent;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/development/AppPicker;->finish()V

    .line 84
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 69
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 70
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 74
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 75
    return-void
.end method
