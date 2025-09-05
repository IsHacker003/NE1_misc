.class Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$1;
.super Lcom/android/ims/ImsConnectionStateListener;
.source "AdvancedCallingOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$1;->this$0:Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;

    invoke-direct {p0}, Lcom/android/ims/ImsConnectionStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFeatureCapabilityChanged(I[I[I)V
    .locals 2

    .line 68
    const-string v0, "OP12AdvancedCallingOptionsFragment"

    const-string v1, "Receive IMS FeatureCapabilityChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$1;->this$0:Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;

    invoke-static {v0, p1, p2, p3}, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->access$000(Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;I[I[I)V

    .line 70
    return-void
.end method
