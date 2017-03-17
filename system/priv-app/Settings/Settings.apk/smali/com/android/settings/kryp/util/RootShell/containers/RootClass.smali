.class public Lcom/android/settings/kryp/util/RootShell/containers/RootClass;
.super Ljava/lang/Object;
.source "RootClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/kryp/util/RootShell/containers/RootClass$1;,
        Lcom/android/settings/kryp/util/RootShell/containers/RootClass$AnnotationsFinder;,
        Lcom/android/settings/kryp/util/RootShell/containers/RootClass$RootArgs;,
        Lcom/android/settings/kryp/util/RootShell/containers/RootClass$Candidate;,
        Lcom/android/settings/kryp/util/RootShell/containers/RootClass$READ_STATE;
    }
.end annotation


# static fields
.field static PATH_TO_DX:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "/Users/Chris/Projects/android-sdk-macosx/build-tools/18.0.1/dx"

    sput-object v0, Lcom/android/settings/kryp/util/RootShell/containers/RootClass;->PATH_TO_DX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    aget-object v3, p1, v6

    new-instance v0, Lcom/android/settings/kryp/util/RootShell/containers/RootClass$RootArgs;

    invoke-direct {v0, p0}, Lcom/android/settings/kryp/util/RootShell/containers/RootClass$RootArgs;-><init>(Lcom/android/settings/kryp/util/RootShell/containers/RootClass;)V

    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, v0, Lcom/android/settings/kryp/util/RootShell/containers/RootClass$RootArgs;->args:[Ljava/lang/String;

    iget-object v4, v0, Lcom/android/settings/kryp/util/RootShell/containers/RootClass$RootArgs;->args:[Ljava/lang/String;

    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    invoke-static {p1, v7, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Lcom/android/settings/kryp/util/RootShell/containers/RootClass$RootArgs;

    aput-object v5, v4, v6

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static displayError(Ljava/lang/Exception;)V
    .locals 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##ERR##"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "##"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2

    :try_start_0
    array-length v1, p0

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/settings/kryp/util/RootShell/containers/RootClass$AnnotationsFinder;

    invoke-direct {v1}, Lcom/android/settings/kryp/util/RootShell/containers/RootClass$AnnotationsFinder;-><init>()V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/android/settings/kryp/util/RootShell/containers/RootClass;

    invoke-direct {v1, p0}, Lcom/android/settings/kryp/util/RootShell/containers/RootClass;-><init>([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/android/settings/kryp/util/RootShell/containers/RootClass;->displayError(Ljava/lang/Exception;)V

    goto :goto_0
.end method
