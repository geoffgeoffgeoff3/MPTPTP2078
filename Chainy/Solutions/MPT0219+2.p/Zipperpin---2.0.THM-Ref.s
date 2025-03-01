%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0219+2 : TPTP v7.4.0. Released v7.4.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.TH1dT5O9wQ

% Computer   : n020.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Wed Dec 16 12:10:50 EST 2020

% Result     : Theorem 0.20s
% Output     : Refutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   19 (  21 expanded)
%              Number of leaves         :    9 (  10 expanded)
%              Depth                    :    6
%              Number of atoms          :   90 ( 112 expanded)
%              Number of equality atoms :   12 (  16 expanded)
%              Maximal formula depth    :   10 (   5 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(sk_A_2_type,type,(
    sk_A_2: $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(sk_B_2_type,type,(
    sk_B_2: $i )).

thf(k2_xboole_0_type,type,(
    k2_xboole_0: $i > $i > $i )).

thf(k1_tarski_type,type,(
    k1_tarski: $i > $i )).

thf(t13_zfmisc_1,conjecture,(
    ! [A: $i,B: $i] :
      ( ( ( k2_xboole_0 @ ( k1_tarski @ A @ ( k1_tarski @ B ) ) )
        = ( k1_tarski @ A ) )
     => ( A = B ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i] :
        ( ( ( k2_xboole_0 @ ( k1_tarski @ A @ ( k1_tarski @ B ) ) )
          = ( k1_tarski @ A ) )
       => ( A = B ) ) ),
    inference('cnf.neg',[status(esa)],[t13_zfmisc_1])).

thf('0',plain,
    ( ( k2_xboole_0 @ ( k1_tarski @ sk_A_2 @ ( k1_tarski @ sk_B_2 ) ) )
    = ( k1_tarski @ sk_A_2 ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(commutativity_k2_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( k2_xboole_0 @ ( A @ B ) )
      = ( k2_xboole_0 @ ( B @ A ) ) ) )).

thf('1',plain,(
    ! [X4: $i,X5: $i] :
      ( ( k2_xboole_0 @ ( X5 @ X4 ) )
      = ( k2_xboole_0 @ ( X4 @ X5 ) ) ) ),
    inference(cnf,[status(esa)],[commutativity_k2_xboole_0])).

thf('2',plain,
    ( ( k2_xboole_0 @ ( k1_tarski @ sk_B_2 @ ( k1_tarski @ sk_A_2 ) ) )
    = ( k1_tarski @ sk_A_2 ) ),
    inference(demod,[status(thm)],['0','1'])).

thf(t7_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( r1_tarski @ ( A @ ( k2_xboole_0 @ ( A @ B ) ) ) ) )).

thf('3',plain,(
    ! [X363: $i,X364: $i] :
      ( r1_tarski @ ( X363 @ ( k2_xboole_0 @ ( X363 @ X364 ) ) ) ) ),
    inference(cnf,[status(esa)],[t7_xboole_1])).

thf('4',plain,(
    r1_tarski @ ( k1_tarski @ sk_B_2 @ ( k1_tarski @ sk_A_2 ) ) ),
    inference('sup+',[status(thm)],['2','3'])).

thf(t6_zfmisc_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_tarski @ ( k1_tarski @ A @ ( k1_tarski @ B ) ) )
     => ( A = B ) ) )).

thf('5',plain,(
    ! [X986: $i,X987: $i] :
      ( ( X987 = X986 )
      | ~ ( r1_tarski @ ( k1_tarski @ X987 @ ( k1_tarski @ X986 ) ) ) ) ),
    inference(cnf,[status(esa)],[t6_zfmisc_1])).

thf('6',plain,(
    sk_B_2 = sk_A_2 ),
    inference('sup-',[status(thm)],['4','5'])).

thf('7',plain,(
    sk_A_2 != sk_B_2 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('8',plain,(
    $false ),
    inference('simplify_reflect-',[status(thm)],['6','7'])).

%------------------------------------------------------------------------------
