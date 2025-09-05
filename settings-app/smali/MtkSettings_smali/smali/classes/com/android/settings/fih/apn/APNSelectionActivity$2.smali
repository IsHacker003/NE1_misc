.class Lcom/android/settings/fih/apn/APNSelectionActivity$2;
.super Ljava/lang/Object;
.source "APNSelectionActivity.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


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

    .line 194
    iput-object p1, p0, Lcom/android/settings/fih/apn/APNSelectionActivity$2;->this$0:Lcom/android/settings/fih/apn/APNSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 2

    .line 197
    invoke-static {}, Lcom/android/settings/fih/apn/APNSelectionActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onTabChanged:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/android/settings/fih/apn/APNSelectionActivity$2;->this$0:Lcom/android/settings/fih/apn/APNSelectionActivity;

    invoke-static {v0}, Lcom/android/settings/fih/apn/APNSelectionActivity;->access$200(Lcom/android/settings/fih/apn/APNSelectionActivity;)V

    .line 200
    iget-object v0, p0, Lcom/android/settings/fih/apn/APNSelectionActivity$2;->this$0:Lcom/android/settings/fih/apn/APNSelectionActivity;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/settings/fih/apn/APNSelectionActivity;->access$300(Lcom/android/settings/fih/apn/APNSelectionActivity;I)V

    .line 201
    iget-object p1, p0, Lcom/android/settings/fih/apn/APNSelectionActivity$2;->this$0:Lcom/android/settings/fih/apn/APNSelectionActivity;

    invoke-static {p1}, Lcom/android/settings/fih/apn/APNSelectionActivity;->access$400(Lcom/android/settings/fih/apn/APNSelectionActivity;)V

    .line 202
    return-void
.end method
