.class Lcom/android/settings/sim/SimSettings$2;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "SimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sim/SimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sim/SimSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/SimSettings;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/android/settings/sim/SimSettings$2;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$2;->this$0:Lcom/android/settings/sim/SimSettings;

    const-string v1, "onSubscriptionsChanged:"

    invoke-static {v0, v1}, Lcom/android/settings/sim/SimSettings;->access$800(Lcom/android/settings/sim/SimSettings;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$2;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v0}, Lcom/android/settings/sim/SimSettings;->access$400(Lcom/android/settings/sim/SimSettings;)V

    .line 221
    return-void
.end method
