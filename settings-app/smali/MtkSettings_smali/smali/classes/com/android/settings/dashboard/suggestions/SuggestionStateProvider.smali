.class public Lcom/android/settings/dashboard/suggestions/SuggestionStateProvider;
.super Landroid/content/ContentProvider;
.source "SuggestionStateProvider.java"


# static fields
.field static final EXTRA_CANDIDATE_ID:Ljava/lang/String; = "candidate_id"

.field static final METHOD_GET_SUGGESTION_STATE:Ljava/lang/String; = "getSuggestionState"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    .line 76
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 77
    const-string v0, "getSuggestionState"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 78
    const-string p1, "candidate_id"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 79
    const-string v0, "android.intent.extra.COMPONENT_NAME"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Landroid/content/ComponentName;

    .line 81
    if-nez p3, :cond_0

    .line 82
    const/4 p3, 0x1

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/dashboard/suggestions/SuggestionStateProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 85
    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    .line 86
    invoke-virtual {v1, v0}, Lcom/android/settings/overlay/FeatureFactory;->getSuggestionFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

    move-result-object v1

    .line 87
    invoke-interface {v1, v0, p3}, Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;->isSuggestionComplete(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result p3

    .line 89
    :goto_0
    const-string v0, "SugstStatusProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Suggestion "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " complete: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-string p1, "candidate_is_complete"

    invoke-virtual {p2, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 92
    :cond_1
    return-object p2
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 66
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "delete operation not supported currently."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .line 56
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getType operation not supported currently."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 61
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "insert operation not supported currently."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreate()Z
    .locals 1

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 51
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "query operation not supported currently."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 71
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "update operation not supported currently."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
