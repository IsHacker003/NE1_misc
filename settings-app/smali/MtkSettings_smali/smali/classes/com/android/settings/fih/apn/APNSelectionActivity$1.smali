.class Lcom/android/settings/fih/apn/APNSelectionActivity$1;
.super Ljava/lang/Object;
.source "APNSelectionActivity.java"

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fih/apn/APNSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fih/apn/APNSelectionActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/fih/apn/APNSelectionActivity;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/android/settings/fih/apn/APNSelectionActivity$1;->this$0:Lcom/android/settings/fih/apn/APNSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 1

    .line 173
    new-instance p1, Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/fih/apn/APNSelectionActivity$1;->this$0:Lcom/android/settings/fih/apn/APNSelectionActivity;

    invoke-static {v0}, Lcom/android/settings/fih/apn/APNSelectionActivity;->access$000(Lcom/android/settings/fih/apn/APNSelectionActivity;)Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabHost;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1
.end method
