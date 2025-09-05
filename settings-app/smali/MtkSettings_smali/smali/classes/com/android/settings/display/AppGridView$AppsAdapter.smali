.class public Lcom/android/settings/display/AppGridView$AppsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AppGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/AppGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/android/settings/display/AppGridView$ActivityEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final mIconResId:I

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 77
    iput p4, p0, Lcom/android/settings/display/AppGridView$AppsAdapter;->mIconResId:I

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/AppGridView$AppsAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 80
    invoke-direct {p0}, Lcom/android/settings/display/AppGridView$AppsAdapter;->loadAllApps()V

    .line 81
    return-void
.end method

.method private loadAllApps()V
    .locals 7

    .line 108
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 109
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    iget-object v1, p0, Lcom/android/settings/display/AppGridView$AppsAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 112
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 113
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/display/AppGridView$AppsAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v3

    .line 115
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 116
    invoke-virtual {v4, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 117
    if-eqz v5, :cond_0

    .line 118
    new-instance v6, Lcom/android/settings/display/AppGridView$ActivityEntry;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v4, v5, v3}, Lcom/android/settings/display/AppGridView$ActivityEntry;-><init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Landroid/util/IconDrawableFactory;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_0
    goto :goto_0

    .line 122
    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 124
    invoke-virtual {p0, v2}, Lcom/android/settings/display/AppGridView$AppsAdapter;->addAll(Ljava/util/Collection;)V

    .line 125
    return-void
.end method


# virtual methods
.method public getItemId(I)J
    .locals 2

    .line 99
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 85
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 86
    invoke-virtual {p0, p1}, Lcom/android/settings/display/AppGridView$AppsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/display/AppGridView$ActivityEntry;

    .line 87
    iget p3, p0, Lcom/android/settings/display/AppGridView$AppsAdapter;->mIconResId:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 88
    invoke-virtual {p1}, Lcom/android/settings/display/AppGridView$ActivityEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    return-object p2
.end method

.method public hasStableIds()Z
    .locals 1

    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 0

    .line 104
    const/4 p1, 0x0

    return p1
.end method
