%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0076+1.001 : TPTP v7.4.0. Released v7.4.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.OSVQOjCJXz

% Computer   : n028.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 08:51:16 EST 2020

% Result     : Theorem 0.23s
% Output     : Refutation 0.23s
% Verified   : 
% Statistics : Number of formulae       :   28 (  33 expanded)
%              Number of leaves         :   13 (  16 expanded)
%              Depth                    :    5
%              Number of atoms          :   91 ( 125 expanded)
%              Number of equality atoms :   10 (  10 expanded)
%              Maximal formula depth    :    9 (   4 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(o_0_0_xboole_0_type,type,(
    o_0_0_xboole_0: $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(k3_xboole_0_type,type,(
    k3_xboole_0: $i > $i > $i )).

thf(r1_xboole_0_type,type,(
    r1_xboole_0: $i > $i > $o )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(v1_xboole_0_type,type,(
    v1_xboole_0: $i > $o )).

thf(t69_xboole_1,conjecture,(
    ! [A: $i,B: $i] :
      ( ~ ( v1_xboole_0 @ B )
     => ~ ( ( r1_tarski @ B @ A )
          & ( r1_xboole_0 @ B @ A ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i] :
        ( ~ ( v1_xboole_0 @ B )
       => ~ ( ( r1_tarski @ B @ A )
            & ( r1_xboole_0 @ B @ A ) ) ) ),
    inference('cnf.neg',[status(esa)],[t69_xboole_1])).

thf('0',plain,(
    ~ ( v1_xboole_0 @ sk_B ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,(
    r1_tarski @ sk_B @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t28_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_tarski @ A @ B )
     => ( ( k3_xboole_0 @ A @ B )
        = A ) ) )).

thf('2',plain,(
    ! [X3: $i,X4: $i] :
      ( ( ( k3_xboole_0 @ X3 @ X4 )
        = X3 )
      | ~ ( r1_tarski @ X3 @ X4 ) ) ),
    inference(cnf,[status(esa)],[t28_xboole_1])).

thf('3',plain,
    ( ( k3_xboole_0 @ sk_B @ sk_A )
    = sk_B ),
    inference('sup-',[status(thm)],['1','2'])).

thf('4',plain,(
    r1_xboole_0 @ sk_B @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(d7_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_xboole_0 @ A @ B )
    <=> ( ( k3_xboole_0 @ A @ B )
        = k1_xboole_0 ) ) )).

thf('5',plain,(
    ! [X0: $i,X1: $i] :
      ( ( ( k3_xboole_0 @ X0 @ X1 )
        = k1_xboole_0 )
      | ~ ( r1_xboole_0 @ X0 @ X1 ) ) ),
    inference(cnf,[status(esa)],[d7_xboole_0])).

thf('6',plain,
    ( ( k3_xboole_0 @ sk_B @ sk_A )
    = k1_xboole_0 ),
    inference('sup-',[status(thm)],['4','5'])).

thf('7',plain,(
    sk_B = k1_xboole_0 ),
    inference('sup+',[status(thm)],['3','6'])).

thf(dt_o_0_0_xboole_0,axiom,(
    v1_xboole_0 @ o_0_0_xboole_0 )).

thf('8',plain,(
    v1_xboole_0 @ o_0_0_xboole_0 ),
    inference(cnf,[status(esa)],[dt_o_0_0_xboole_0])).

thf('9',plain,(
    v1_xboole_0 @ o_0_0_xboole_0 ),
    inference(cnf,[status(esa)],[dt_o_0_0_xboole_0])).

thf(t6_boole,axiom,(
    ! [A: $i] :
      ( ( v1_xboole_0 @ A )
     => ( A = k1_xboole_0 ) ) )).

thf('10',plain,(
    ! [X5: $i] :
      ( ( X5 = k1_xboole_0 )
      | ~ ( v1_xboole_0 @ X5 ) ) ),
    inference(cnf,[status(esa)],[t6_boole])).

thf('11',plain,(
    o_0_0_xboole_0 = k1_xboole_0 ),
    inference('sup-',[status(thm)],['9','10'])).

thf('12',plain,(
    v1_xboole_0 @ k1_xboole_0 ),
    inference(demod,[status(thm)],['8','11'])).

thf('13',plain,(
    $false ),
    inference(demod,[status(thm)],['0','7','12'])).


%------------------------------------------------------------------------------
