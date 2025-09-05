.class public Lcom/android/settings/development/AppViewHolder;
.super Ljava/lang/Object;
.source "AppViewHolder.java"


# instance fields
.field public appIcon:Landroid/widget/ImageView;

.field public appName:Landroid/widget/TextView;

.field public disabled:Landroid/widget/TextView;

.field public rootView:Landroid/view/View;

.field public summary:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createOrRecycle(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/android/settings/development/AppViewHolder;
    .locals 1

    .line 37
    if-nez p1, :cond_0

    .line 38
    const p1, 0x7f0d00df    # @layout/preference_app 'res/layout/preference_app.xml'

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .line 42
    new-instance p1, Lcom/android/settings/development/AppViewHolder;

    invoke-direct {p1}, Lcom/android/settings/development/AppViewHolder;-><init>()V

    .line 43
    iput-object p0, p1, Lcom/android/settings/development/AppViewHolder;->rootView:Landroid/view/View;

    .line 44
    const v0, 0x1020016    # @android:id/title

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/android/settings/development/AppViewHolder;->appName:Landroid/widget/TextView;

    .line 45
    const v0, 0x1020006    # @android:id/icon

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/android/settings/development/AppViewHolder;->appIcon:Landroid/widget/ImageView;

    .line 46
    const v0, 0x1020010    # @android:id/summary

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/android/settings/development/AppViewHolder;->summary:Landroid/widget/TextView;

    .line 47
    const v0, 0x7f0a0059    # @id/appendix

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/android/settings/development/AppViewHolder;->disabled:Landroid/widget/TextView;

    .line 48
    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 49
    return-object p1

    .line 53
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/development/AppViewHolder;

    return-object p0
.end method
