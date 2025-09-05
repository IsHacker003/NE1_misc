.class public Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;
.super Ljava/lang/Object;
.source "ChooseLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentBuilder"
.end annotation


# instance fields
.field private final mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/password/ChooseLockPattern;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->mIntent:Landroid/content/Intent;

    .line 100
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v0, "extra_require_password"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 101
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v0, "confirm_credentials"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 102
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v0, "has_challenge"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 103
    return-void
.end method


# virtual methods
.method public build()Landroid/content/Intent;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public setChallenge(J)Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "has_challenge"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 112
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "challenge"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 113
    return-object p0
.end method

.method public setForFingerprint(Z)Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "for_fingerprint"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 123
    return-object p0
.end method

.method public setPattern(Ljava/lang/String;)Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "password"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    return-object p0
.end method

.method public setUserId(I)Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 107
    return-object p0
.end method
