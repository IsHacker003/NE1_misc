.class Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference$1;
.super Ljava/lang/Object;
.source "FingerprintSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;)V
    .locals 0

    .line 901
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference$1;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 904
    iget-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference$1;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;

    invoke-static {p1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->access$1600(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;)Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference$OnDeleteClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 905
    iget-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference$1;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;

    invoke-static {p1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->access$1600(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;)Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference$OnDeleteClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference$1;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;

    invoke-interface {p1, v0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference$OnDeleteClickListener;->onDeleteClick(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;)V

    .line 907
    :cond_0
    return-void
.end method
