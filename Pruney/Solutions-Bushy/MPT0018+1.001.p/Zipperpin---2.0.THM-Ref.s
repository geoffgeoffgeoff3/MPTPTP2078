%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0018+1.001 : TPTP v7.4.0. Released v7.4.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.BEzxgJzsfN

% Computer   : n026.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 08:51:11 EST 2020

% Result     : Theorem 0.21s
% Output     : Refutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :   16 (  18 expanded)
%              Number of leaves         :    8 (   9 expanded)
%              Depth                    :    4
%              Number of atoms          :   64 (  80 expanded)
%              Number of equality atoms :    0 (   0 expanded)
%              Maximal formula depth    :   10 (   5 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(sk_C_type,type,(
    sk_C: $i )).

thf(k2_xboole_0_type,type,(
    k2_xboole_0: $i > $i > $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(t11_xboole_1,conjecture,(
    ! [A: $i,B: $i,C: $i] :
      ( ( r1_tarski @ ( k2_xboole_0 @ A @ B ) @ C )
     => ( r1_tarski @ A @ C ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i] :
        ( ( r1_tarski @ ( k2_xboole_0 @ A @ B ) @ C )
       => ( r1_tarski @ A @ C ) ) ),
    inference('cnf.neg',[status(esa)],[t11_xboole_1])).

thf('0',plain,(
    ~ ( r1_tarski @ sk_A @ sk_C ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,(
    r1_tarski @ ( k2_xboole_0 @ sk_A @ sk_B ) @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t7_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( r1_tarski @ A @ ( k2_xboole_0 @ A @ B ) ) )).

thf('2',plain,(
    ! [X3: $i,X4: $i] :
      ( r1_tarski @ X3 @ ( k2_xboole_0 @ X3 @ X4 ) ) ),
    inference(cnf,[status(esa)],[t7_xboole_1])).

thf(t1_xboole_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( r1_tarski @ A @ B )
        & ( r1_tarski @ B @ C ) )
     => ( r1_tarski @ A @ C ) ) )).

thf('3',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( r1_tarski @ X0 @ X1 )
      | ~ ( r1_tarski @ X1 @ X2 )
      | ( r1_tarski @ X0 @ X2 ) ) ),
    inference(cnf,[status(esa)],[t1_xboole_1])).

thf('4',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( r1_tarski @ X1 @ X2 )
      | ~ ( r1_tarski @ ( k2_xboole_0 @ X1 @ X0 ) @ X2 ) ) ),
    inference('sup-',[status(thm)],['2','3'])).

thf('5',plain,(
    r1_tarski @ sk_A @ sk_C ),
    inference('sup-',[status(thm)],['1','4'])).

thf('6',plain,(
    $false ),
    inference(demod,[status(thm)],['0','5'])).


%------------------------------------------------------------------------------
