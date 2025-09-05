.class Lcom/android/settings/PreviewPagerAdapter$1;
.super Ljava/lang/Object;
.source "PreviewPagerAdapter.java"

# interfaces
.implements Landroid/view/ViewStub$OnInflateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/PreviewPagerAdapter;-><init>(Landroid/content/Context;Z[I[Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PreviewPagerAdapter;

.field final synthetic val$fi:I

.field final synthetic val$fj:I


# direct methods
.method constructor <init>(Lcom/android/settings/PreviewPagerAdapter;II)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/android/settings/PreviewPagerAdapter$1;->this$0:Lcom/android/settings/PreviewPagerAdapter;

    iput p2, p0, Lcom/android/settings/PreviewPagerAdapter$1;->val$fi:I

    iput p3, p0, Lcom/android/settings/PreviewPagerAdapter$1;->val$fj:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInflate(Landroid/view/ViewStub;Landroid/view/View;)V
    .locals 1

    .line 86
    invoke-virtual {p1}, Landroid/view/ViewStub;->getVisibility()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 87
    iget-object p1, p0, Lcom/android/settings/PreviewPagerAdapter$1;->this$0:Lcom/android/settings/PreviewPagerAdapter;

    invoke-static {p1}, Lcom/android/settings/PreviewPagerAdapter;->access$000(Lcom/android/settings/PreviewPagerAdapter;)[[Z

    move-result-object p1

    iget p2, p0, Lcom/android/settings/PreviewPagerAdapter$1;->val$fi:I

    aget-object p1, p1, p2

    iget p2, p0, Lcom/android/settings/PreviewPagerAdapter$1;->val$fj:I

    const/4 v0, 0x1

    aput-boolean v0, p1, p2

    .line 88
    return-void
.end method
