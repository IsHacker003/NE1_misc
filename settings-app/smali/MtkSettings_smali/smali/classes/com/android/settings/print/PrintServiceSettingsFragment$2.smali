.class Lcom/android/settings/print/PrintServiceSettingsFragment$2;
.super Ljava/lang/Object;
.source "PrintServiceSettingsFragment.java"

# interfaces
.implements Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/print/PrintServiceSettingsFragment;->initComponents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/print/PrintServiceSettingsFragment;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$2;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/android/settings/widget/ToggleSwitch;Z)Z
    .locals 1

    .line 269
    iget-object p1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$2;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$2;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->access$400(Lcom/android/settings/print/PrintServiceSettingsFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/android/settings/print/PrintServiceSettingsFragment;->access$500(Lcom/android/settings/print/PrintServiceSettingsFragment;Ljava/lang/String;Z)V

    .line 270
    const/4 p1, 0x0

    return p1
.end method
