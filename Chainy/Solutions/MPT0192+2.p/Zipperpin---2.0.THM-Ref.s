%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0192+2 : TPTP v7.4.0. Released v7.4.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.OaHbTAyO5m

% Computer   : n015.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Wed Dec 16 12:10:48 EST 2020

% Result     : Theorem 0.49s
% Output     : Refutation 0.49s
% Verified   : 
% Statistics : Number of formulae       :   14 (  14 expanded)
%              Number of leaves         :    8 (   8 expanded)
%              Depth                    :    4
%              Number of atoms          :   89 (  89 expanded)
%              Number of equality atoms :    8 (   8 expanded)
%              Maximal formula depth    :   11 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(sk_D_7_type,type,(
    sk_D_7: $i )).

thf(sk_B_2_type,type,(
    sk_B_2: $i )).

thf(sk_C_6_type,type,(
    sk_C_6: $i )).

thf(k2_enumset1_type,type,(
    k2_enumset1: $i > $i > $i > $i > $i )).

thf(sk_A_2_type,type,(
    sk_A_2: $i )).

thf(t111_enumset1,conjecture,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( k2_enumset1 @ ( A @ ( B @ ( C @ D ) ) ) )
      = ( k2_enumset1 @ ( B @ ( C @ ( D @ A ) ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i,D: $i] :
        ( ( k2_enumset1 @ ( A @ ( B @ ( C @ D ) ) ) )
        = ( k2_enumset1 @ ( B @ ( C @ ( D @ A ) ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t111_enumset1])).

thf('0',plain,(
    ( k2_enumset1 @ ( sk_A_2 @ ( sk_B_2 @ ( sk_C_6 @ sk_D_7 ) ) ) )
 != ( k2_enumset1 @ ( sk_B_2 @ ( sk_C_6 @ ( sk_D_7 @ sk_A_2 ) ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t103_enumset1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( k2_enumset1 @ ( A @ ( B @ ( C @ D ) ) ) )
      = ( k2_enumset1 @ ( A @ ( B @ ( D @ C ) ) ) ) ) )).

thf('1',plain,(
    ! [X487: $i,X488: $i,X489: $i,X490: $i] :
      ( ( k2_enumset1 @ ( X487 @ ( X488 @ ( X490 @ X489 ) ) ) )
      = ( k2_enumset1 @ ( X487 @ ( X488 @ ( X489 @ X490 ) ) ) ) ) ),
    inference(cnf,[status(esa)],[t103_enumset1])).

thf(l123_enumset1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( k2_enumset1 @ ( A @ ( B @ ( C @ D ) ) ) )
      = ( k2_enumset1 @ ( B @ ( C @ ( A @ D ) ) ) ) ) )).

thf('2',plain,(
    ! [X447: $i,X448: $i,X449: $i,X450: $i] :
      ( ( k2_enumset1 @ ( X449 @ ( X447 @ ( X448 @ X450 ) ) ) )
      = ( k2_enumset1 @ ( X447 @ ( X448 @ ( X449 @ X450 ) ) ) ) ) ),
    inference(cnf,[status(esa)],[l123_enumset1])).

thf('3',plain,(
    ( k2_enumset1 @ ( sk_A_2 @ ( sk_B_2 @ ( sk_C_6 @ sk_D_7 ) ) ) )
 != ( k2_enumset1 @ ( sk_A_2 @ ( sk_B_2 @ ( sk_C_6 @ sk_D_7 ) ) ) ) ),
    inference(demod,[status(thm)],['0','1','2'])).

thf('4',plain,(
    $false ),
    inference(simplify,[status(thm)],['3'])).

%------------------------------------------------------------------------------
