%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.9lFdrzAsNU

% Computer   : n002.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:46:21 EST 2020

% Result     : Theorem 1.49s
% Output     : Refutation 1.53s
% Verified   : 
% Statistics : Number of formulae       :  117 ( 383 expanded)
%              Number of leaves         :   23 ( 125 expanded)
%              Depth                    :   32
%              Number of atoms          :  910 (3507 expanded)
%              Number of equality atoms :   52 ( 169 expanded)
%              Maximal formula depth    :   10 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(k2_xboole_0_type,type,(
    k2_xboole_0: $i > $i > $i )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k3_xboole_0_type,type,(
    k3_xboole_0: $i > $i > $i )).

thf(k9_relat_1_type,type,(
    k9_relat_1: $i > $i > $i )).

thf(k2_relat_1_type,type,(
    k2_relat_1: $i > $i )).

thf(k10_relat_1_type,type,(
    k10_relat_1: $i > $i > $i )).

thf(k7_relat_1_type,type,(
    k7_relat_1: $i > $i > $i )).

thf(k1_relat_1_type,type,(
    k1_relat_1: $i > $i )).

thf(t146_funct_1,conjecture,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( ( r1_tarski @ A @ ( k1_relat_1 @ B ) )
       => ( r1_tarski @ A @ ( k10_relat_1 @ B @ ( k9_relat_1 @ B @ A ) ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i] :
        ( ( v1_relat_1 @ B )
       => ( ( r1_tarski @ A @ ( k1_relat_1 @ B ) )
         => ( r1_tarski @ A @ ( k10_relat_1 @ B @ ( k9_relat_1 @ B @ A ) ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t146_funct_1])).

thf('0',plain,(
    ~ ( r1_tarski @ sk_A @ ( k10_relat_1 @ sk_B @ ( k9_relat_1 @ sk_B @ sk_A ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t139_funct_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( v1_relat_1 @ C )
     => ( ( k10_relat_1 @ ( k7_relat_1 @ C @ A ) @ B )
        = ( k3_xboole_0 @ A @ ( k10_relat_1 @ C @ B ) ) ) ) )).

thf('1',plain,(
    ! [X27: $i,X28: $i,X29: $i] :
      ( ( ( k10_relat_1 @ ( k7_relat_1 @ X28 @ X27 ) @ X29 )
        = ( k3_xboole_0 @ X27 @ ( k10_relat_1 @ X28 @ X29 ) ) )
      | ~ ( v1_relat_1 @ X28 ) ) ),
    inference(cnf,[status(esa)],[t139_funct_1])).

thf(t148_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( ( k2_relat_1 @ ( k7_relat_1 @ B @ A ) )
        = ( k9_relat_1 @ B @ A ) ) ) )).

thf('2',plain,(
    ! [X19: $i,X20: $i] :
      ( ( ( k2_relat_1 @ ( k7_relat_1 @ X19 @ X20 ) )
        = ( k9_relat_1 @ X19 @ X20 ) )
      | ~ ( v1_relat_1 @ X19 ) ) ),
    inference(cnf,[status(esa)],[t148_relat_1])).

thf(t169_relat_1,axiom,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ( ( k10_relat_1 @ A @ ( k2_relat_1 @ A ) )
        = ( k1_relat_1 @ A ) ) ) )).

thf('3',plain,(
    ! [X23: $i] :
      ( ( ( k10_relat_1 @ X23 @ ( k2_relat_1 @ X23 ) )
        = ( k1_relat_1 @ X23 ) )
      | ~ ( v1_relat_1 @ X23 ) ) ),
    inference(cnf,[status(esa)],[t169_relat_1])).

thf('4',plain,(
    ! [X0: $i,X1: $i] :
      ( ( ( k10_relat_1 @ ( k7_relat_1 @ X1 @ X0 ) @ ( k9_relat_1 @ X1 @ X0 ) )
        = ( k1_relat_1 @ ( k7_relat_1 @ X1 @ X0 ) ) )
      | ~ ( v1_relat_1 @ X1 )
      | ~ ( v1_relat_1 @ ( k7_relat_1 @ X1 @ X0 ) ) ) ),
    inference('sup+',[status(thm)],['2','3'])).

thf(dt_k7_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ A )
     => ( v1_relat_1 @ ( k7_relat_1 @ A @ B ) ) ) )).

thf('5',plain,(
    ! [X17: $i,X18: $i] :
      ( ~ ( v1_relat_1 @ X17 )
      | ( v1_relat_1 @ ( k7_relat_1 @ X17 @ X18 ) ) ) ),
    inference(cnf,[status(esa)],[dt_k7_relat_1])).

thf('6',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v1_relat_1 @ X1 )
      | ( ( k10_relat_1 @ ( k7_relat_1 @ X1 @ X0 ) @ ( k9_relat_1 @ X1 @ X0 ) )
        = ( k1_relat_1 @ ( k7_relat_1 @ X1 @ X0 ) ) ) ) ),
    inference(clc,[status(thm)],['4','5'])).

thf('7',plain,(
    ! [X17: $i,X18: $i] :
      ( ~ ( v1_relat_1 @ X17 )
      | ( v1_relat_1 @ ( k7_relat_1 @ X17 @ X18 ) ) ) ),
    inference(cnf,[status(esa)],[dt_k7_relat_1])).

thf('8',plain,(
    r1_tarski @ sk_A @ ( k1_relat_1 @ sk_B ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t28_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_tarski @ A @ B )
     => ( ( k3_xboole_0 @ A @ B )
        = A ) ) )).

thf('9',plain,(
    ! [X15: $i,X16: $i] :
      ( ( ( k3_xboole_0 @ X15 @ X16 )
        = X15 )
      | ~ ( r1_tarski @ X15 @ X16 ) ) ),
    inference(cnf,[status(esa)],[t28_xboole_1])).

thf('10',plain,
    ( ( k3_xboole_0 @ sk_A @ ( k1_relat_1 @ sk_B ) )
    = sk_A ),
    inference('sup-',[status(thm)],['8','9'])).

thf('11',plain,(
    ! [X23: $i] :
      ( ( ( k10_relat_1 @ X23 @ ( k2_relat_1 @ X23 ) )
        = ( k1_relat_1 @ X23 ) )
      | ~ ( v1_relat_1 @ X23 ) ) ),
    inference(cnf,[status(esa)],[t169_relat_1])).

thf('12',plain,(
    ! [X23: $i] :
      ( ( ( k10_relat_1 @ X23 @ ( k2_relat_1 @ X23 ) )
        = ( k1_relat_1 @ X23 ) )
      | ~ ( v1_relat_1 @ X23 ) ) ),
    inference(cnf,[status(esa)],[t169_relat_1])).

thf(t167_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( r1_tarski @ ( k10_relat_1 @ B @ A ) @ ( k1_relat_1 @ B ) ) ) )).

thf('13',plain,(
    ! [X21: $i,X22: $i] :
      ( ( r1_tarski @ ( k10_relat_1 @ X21 @ X22 ) @ ( k1_relat_1 @ X21 ) )
      | ~ ( v1_relat_1 @ X21 ) ) ),
    inference(cnf,[status(esa)],[t167_relat_1])).

thf('14',plain,(
    ! [X15: $i,X16: $i] :
      ( ( ( k3_xboole_0 @ X15 @ X16 )
        = X15 )
      | ~ ( r1_tarski @ X15 @ X16 ) ) ),
    inference(cnf,[status(esa)],[t28_xboole_1])).

thf('15',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v1_relat_1 @ X0 )
      | ( ( k3_xboole_0 @ ( k10_relat_1 @ X0 @ X1 ) @ ( k1_relat_1 @ X0 ) )
        = ( k10_relat_1 @ X0 @ X1 ) ) ) ),
    inference('sup-',[status(thm)],['13','14'])).

thf(commutativity_k3_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( k3_xboole_0 @ A @ B )
      = ( k3_xboole_0 @ B @ A ) ) )).

thf('16',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k3_xboole_0 @ X1 @ X0 )
      = ( k3_xboole_0 @ X0 @ X1 ) ) ),
    inference(cnf,[status(esa)],[commutativity_k3_xboole_0])).

thf('17',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v1_relat_1 @ X0 )
      | ( ( k3_xboole_0 @ ( k1_relat_1 @ X0 ) @ ( k10_relat_1 @ X0 @ X1 ) )
        = ( k10_relat_1 @ X0 @ X1 ) ) ) ),
    inference(demod,[status(thm)],['15','16'])).

thf('18',plain,(
    ! [X27: $i,X28: $i,X29: $i] :
      ( ( ( k10_relat_1 @ ( k7_relat_1 @ X28 @ X27 ) @ X29 )
        = ( k3_xboole_0 @ X27 @ ( k10_relat_1 @ X28 @ X29 ) ) )
      | ~ ( v1_relat_1 @ X28 ) ) ),
    inference(cnf,[status(esa)],[t139_funct_1])).

thf('19',plain,(
    ! [X21: $i,X22: $i] :
      ( ( r1_tarski @ ( k10_relat_1 @ X21 @ X22 ) @ ( k1_relat_1 @ X21 ) )
      | ~ ( v1_relat_1 @ X21 ) ) ),
    inference(cnf,[status(esa)],[t167_relat_1])).

thf('20',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( r1_tarski @ ( k3_xboole_0 @ X2 @ ( k10_relat_1 @ X1 @ X0 ) ) @ ( k1_relat_1 @ ( k7_relat_1 @ X1 @ X2 ) ) )
      | ~ ( v1_relat_1 @ X1 )
      | ~ ( v1_relat_1 @ ( k7_relat_1 @ X1 @ X2 ) ) ) ),
    inference('sup+',[status(thm)],['18','19'])).

thf('21',plain,(
    ! [X17: $i,X18: $i] :
      ( ~ ( v1_relat_1 @ X17 )
      | ( v1_relat_1 @ ( k7_relat_1 @ X17 @ X18 ) ) ) ),
    inference(cnf,[status(esa)],[dt_k7_relat_1])).

thf('22',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( v1_relat_1 @ X1 )
      | ( r1_tarski @ ( k3_xboole_0 @ X2 @ ( k10_relat_1 @ X1 @ X0 ) ) @ ( k1_relat_1 @ ( k7_relat_1 @ X1 @ X2 ) ) ) ) ),
    inference(clc,[status(thm)],['20','21'])).

thf('23',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r1_tarski @ ( k10_relat_1 @ X1 @ X0 ) @ ( k1_relat_1 @ ( k7_relat_1 @ X1 @ ( k1_relat_1 @ X1 ) ) ) )
      | ~ ( v1_relat_1 @ X1 )
      | ~ ( v1_relat_1 @ X1 ) ) ),
    inference('sup+',[status(thm)],['17','22'])).

thf('24',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v1_relat_1 @ X1 )
      | ( r1_tarski @ ( k10_relat_1 @ X1 @ X0 ) @ ( k1_relat_1 @ ( k7_relat_1 @ X1 @ ( k1_relat_1 @ X1 ) ) ) ) ) ),
    inference(simplify,[status(thm)],['23'])).

thf('25',plain,(
    ! [X0: $i] :
      ( ( r1_tarski @ ( k1_relat_1 @ X0 ) @ ( k1_relat_1 @ ( k7_relat_1 @ X0 @ ( k1_relat_1 @ X0 ) ) ) )
      | ~ ( v1_relat_1 @ X0 )
      | ~ ( v1_relat_1 @ X0 ) ) ),
    inference('sup+',[status(thm)],['12','24'])).

thf('26',plain,(
    ! [X0: $i] :
      ( ~ ( v1_relat_1 @ X0 )
      | ( r1_tarski @ ( k1_relat_1 @ X0 ) @ ( k1_relat_1 @ ( k7_relat_1 @ X0 @ ( k1_relat_1 @ X0 ) ) ) ) ) ),
    inference(simplify,[status(thm)],['25'])).

thf('27',plain,(
    ! [X27: $i,X28: $i,X29: $i] :
      ( ( ( k10_relat_1 @ ( k7_relat_1 @ X28 @ X27 ) @ X29 )
        = ( k3_xboole_0 @ X27 @ ( k10_relat_1 @ X28 @ X29 ) ) )
      | ~ ( v1_relat_1 @ X28 ) ) ),
    inference(cnf,[status(esa)],[t139_funct_1])).

thf('28',plain,(
    ! [X23: $i] :
      ( ( ( k10_relat_1 @ X23 @ ( k2_relat_1 @ X23 ) )
        = ( k1_relat_1 @ X23 ) )
      | ~ ( v1_relat_1 @ X23 ) ) ),
    inference(cnf,[status(esa)],[t169_relat_1])).

thf('29',plain,(
    ! [X0: $i,X1: $i] :
      ( ( ( k3_xboole_0 @ X0 @ ( k10_relat_1 @ X1 @ ( k2_relat_1 @ ( k7_relat_1 @ X1 @ X0 ) ) ) )
        = ( k1_relat_1 @ ( k7_relat_1 @ X1 @ X0 ) ) )
      | ~ ( v1_relat_1 @ X1 )
      | ~ ( v1_relat_1 @ ( k7_relat_1 @ X1 @ X0 ) ) ) ),
    inference('sup+',[status(thm)],['27','28'])).

thf('30',plain,(
    ! [X17: $i,X18: $i] :
      ( ~ ( v1_relat_1 @ X17 )
      | ( v1_relat_1 @ ( k7_relat_1 @ X17 @ X18 ) ) ) ),
    inference(cnf,[status(esa)],[dt_k7_relat_1])).

thf('31',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v1_relat_1 @ X1 )
      | ( ( k3_xboole_0 @ X0 @ ( k10_relat_1 @ X1 @ ( k2_relat_1 @ ( k7_relat_1 @ X1 @ X0 ) ) ) )
        = ( k1_relat_1 @ ( k7_relat_1 @ X1 @ X0 ) ) ) ) ),
    inference(clc,[status(thm)],['29','30'])).

thf(t17_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( r1_tarski @ ( k3_xboole_0 @ A @ B ) @ A ) )).

thf('32',plain,(
    ! [X13: $i,X14: $i] :
      ( r1_tarski @ ( k3_xboole_0 @ X13 @ X14 ) @ X13 ) ),
    inference(cnf,[status(esa)],[t17_xboole_1])).

thf('33',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r1_tarski @ ( k1_relat_1 @ ( k7_relat_1 @ X1 @ X0 ) ) @ X0 )
      | ~ ( v1_relat_1 @ X1 ) ) ),
    inference('sup+',[status(thm)],['31','32'])).

thf(d10_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( A = B )
    <=> ( ( r1_tarski @ A @ B )
        & ( r1_tarski @ B @ A ) ) ) )).

thf('34',plain,(
    ! [X2: $i,X4: $i] :
      ( ( X2 = X4 )
      | ~ ( r1_tarski @ X4 @ X2 )
      | ~ ( r1_tarski @ X2 @ X4 ) ) ),
    inference(cnf,[status(esa)],[d10_xboole_0])).

thf('35',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v1_relat_1 @ X1 )
      | ~ ( r1_tarski @ X0 @ ( k1_relat_1 @ ( k7_relat_1 @ X1 @ X0 ) ) )
      | ( X0
        = ( k1_relat_1 @ ( k7_relat_1 @ X1 @ X0 ) ) ) ) ),
    inference('sup-',[status(thm)],['33','34'])).

thf('36',plain,(
    ! [X0: $i] :
      ( ~ ( v1_relat_1 @ X0 )
      | ( ( k1_relat_1 @ X0 )
        = ( k1_relat_1 @ ( k7_relat_1 @ X0 @ ( k1_relat_1 @ X0 ) ) ) )
      | ~ ( v1_relat_1 @ X0 ) ) ),
    inference('sup-',[status(thm)],['26','35'])).

thf('37',plain,(
    ! [X0: $i] :
      ( ( ( k1_relat_1 @ X0 )
        = ( k1_relat_1 @ ( k7_relat_1 @ X0 @ ( k1_relat_1 @ X0 ) ) ) )
      | ~ ( v1_relat_1 @ X0 ) ) ),
    inference(simplify,[status(thm)],['36'])).

thf('38',plain,(
    ! [X0: $i] :
      ( ~ ( v1_relat_1 @ X0 )
      | ( r1_tarski @ ( k1_relat_1 @ X0 ) @ ( k1_relat_1 @ ( k7_relat_1 @ X0 @ ( k1_relat_1 @ X0 ) ) ) ) ) ),
    inference(simplify,[status(thm)],['25'])).

thf('39',plain,(
    r1_tarski @ sk_A @ ( k1_relat_1 @ sk_B ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t12_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_tarski @ A @ B )
     => ( ( k2_xboole_0 @ A @ B )
        = B ) ) )).

thf('40',plain,(
    ! [X11: $i,X12: $i] :
      ( ( ( k2_xboole_0 @ X12 @ X11 )
        = X11 )
      | ~ ( r1_tarski @ X12 @ X11 ) ) ),
    inference(cnf,[status(esa)],[t12_xboole_1])).

thf('41',plain,
    ( ( k2_xboole_0 @ sk_A @ ( k1_relat_1 @ sk_B ) )
    = ( k1_relat_1 @ sk_B ) ),
    inference('sup-',[status(thm)],['39','40'])).

thf(t11_xboole_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( r1_tarski @ ( k2_xboole_0 @ A @ B ) @ C )
     => ( r1_tarski @ A @ C ) ) )).

thf('42',plain,(
    ! [X8: $i,X9: $i,X10: $i] :
      ( ( r1_tarski @ X8 @ X9 )
      | ~ ( r1_tarski @ ( k2_xboole_0 @ X8 @ X10 ) @ X9 ) ) ),
    inference(cnf,[status(esa)],[t11_xboole_1])).

thf('43',plain,(
    ! [X0: $i] :
      ( ~ ( r1_tarski @ ( k1_relat_1 @ sk_B ) @ X0 )
      | ( r1_tarski @ sk_A @ X0 ) ) ),
    inference('sup-',[status(thm)],['41','42'])).

thf('44',plain,
    ( ~ ( v1_relat_1 @ sk_B )
    | ( r1_tarski @ sk_A @ ( k1_relat_1 @ ( k7_relat_1 @ sk_B @ ( k1_relat_1 @ sk_B ) ) ) ) ),
    inference('sup-',[status(thm)],['38','43'])).

thf('45',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('46',plain,(
    r1_tarski @ sk_A @ ( k1_relat_1 @ ( k7_relat_1 @ sk_B @ ( k1_relat_1 @ sk_B ) ) ) ),
    inference(demod,[status(thm)],['44','45'])).

thf('47',plain,(
    ! [X11: $i,X12: $i] :
      ( ( ( k2_xboole_0 @ X12 @ X11 )
        = X11 )
      | ~ ( r1_tarski @ X12 @ X11 ) ) ),
    inference(cnf,[status(esa)],[t12_xboole_1])).

thf('48',plain,
    ( ( k2_xboole_0 @ sk_A @ ( k1_relat_1 @ ( k7_relat_1 @ sk_B @ ( k1_relat_1 @ sk_B ) ) ) )
    = ( k1_relat_1 @ ( k7_relat_1 @ sk_B @ ( k1_relat_1 @ sk_B ) ) ) ),
    inference('sup-',[status(thm)],['46','47'])).

thf('49',plain,
    ( ( ( k2_xboole_0 @ sk_A @ ( k1_relat_1 @ sk_B ) )
      = ( k1_relat_1 @ ( k7_relat_1 @ sk_B @ ( k1_relat_1 @ sk_B ) ) ) )
    | ~ ( v1_relat_1 @ sk_B ) ),
    inference('sup+',[status(thm)],['37','48'])).

thf('50',plain,
    ( ( k2_xboole_0 @ sk_A @ ( k1_relat_1 @ sk_B ) )
    = ( k1_relat_1 @ sk_B ) ),
    inference('sup-',[status(thm)],['39','40'])).

thf('51',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('52',plain,
    ( ( k1_relat_1 @ sk_B )
    = ( k1_relat_1 @ ( k7_relat_1 @ sk_B @ ( k1_relat_1 @ sk_B ) ) ) ),
    inference(demod,[status(thm)],['49','50','51'])).

thf('53',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v1_relat_1 @ X1 )
      | ( r1_tarski @ ( k10_relat_1 @ X1 @ X0 ) @ ( k1_relat_1 @ ( k7_relat_1 @ X1 @ ( k1_relat_1 @ X1 ) ) ) ) ) ),
    inference(simplify,[status(thm)],['23'])).

thf('54',plain,(
    ! [X0: $i] :
      ( ( r1_tarski @ ( k10_relat_1 @ sk_B @ X0 ) @ ( k1_relat_1 @ sk_B ) )
      | ~ ( v1_relat_1 @ sk_B ) ) ),
    inference('sup+',[status(thm)],['52','53'])).

thf('55',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('56',plain,(
    ! [X0: $i] :
      ( r1_tarski @ ( k10_relat_1 @ sk_B @ X0 ) @ ( k1_relat_1 @ sk_B ) ) ),
    inference(demod,[status(thm)],['54','55'])).

thf('57',plain,(
    ! [X2: $i,X4: $i] :
      ( ( X2 = X4 )
      | ~ ( r1_tarski @ X4 @ X2 )
      | ~ ( r1_tarski @ X2 @ X4 ) ) ),
    inference(cnf,[status(esa)],[d10_xboole_0])).

thf('58',plain,(
    ! [X0: $i] :
      ( ~ ( r1_tarski @ ( k1_relat_1 @ sk_B ) @ ( k10_relat_1 @ sk_B @ X0 ) )
      | ( ( k1_relat_1 @ sk_B )
        = ( k10_relat_1 @ sk_B @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['56','57'])).

thf('59',plain,
    ( ~ ( r1_tarski @ ( k1_relat_1 @ sk_B ) @ ( k1_relat_1 @ sk_B ) )
    | ~ ( v1_relat_1 @ sk_B )
    | ( ( k1_relat_1 @ sk_B )
      = ( k10_relat_1 @ sk_B @ ( k2_relat_1 @ sk_B ) ) ) ),
    inference('sup-',[status(thm)],['11','58'])).

thf('60',plain,(
    ! [X2: $i,X3: $i] :
      ( ( r1_tarski @ X2 @ X3 )
      | ( X2 != X3 ) ) ),
    inference(cnf,[status(esa)],[d10_xboole_0])).

thf('61',plain,(
    ! [X3: $i] :
      ( r1_tarski @ X3 @ X3 ) ),
    inference(simplify,[status(thm)],['60'])).

thf('62',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('63',plain,
    ( ( k1_relat_1 @ sk_B )
    = ( k10_relat_1 @ sk_B @ ( k2_relat_1 @ sk_B ) ) ),
    inference(demod,[status(thm)],['59','61','62'])).

thf('64',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( v1_relat_1 @ X1 )
      | ( r1_tarski @ ( k3_xboole_0 @ X2 @ ( k10_relat_1 @ X1 @ X0 ) ) @ ( k1_relat_1 @ ( k7_relat_1 @ X1 @ X2 ) ) ) ) ),
    inference(clc,[status(thm)],['20','21'])).

thf('65',plain,(
    ! [X0: $i] :
      ( ( r1_tarski @ ( k3_xboole_0 @ X0 @ ( k1_relat_1 @ sk_B ) ) @ ( k1_relat_1 @ ( k7_relat_1 @ sk_B @ X0 ) ) )
      | ~ ( v1_relat_1 @ sk_B ) ) ),
    inference('sup+',[status(thm)],['63','64'])).

thf('66',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('67',plain,(
    ! [X0: $i] :
      ( r1_tarski @ ( k3_xboole_0 @ X0 @ ( k1_relat_1 @ sk_B ) ) @ ( k1_relat_1 @ ( k7_relat_1 @ sk_B @ X0 ) ) ) ),
    inference(demod,[status(thm)],['65','66'])).

thf('68',plain,(
    r1_tarski @ sk_A @ ( k1_relat_1 @ ( k7_relat_1 @ sk_B @ sk_A ) ) ),
    inference('sup+',[status(thm)],['10','67'])).

thf('69',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v1_relat_1 @ X1 )
      | ~ ( r1_tarski @ X0 @ ( k1_relat_1 @ ( k7_relat_1 @ X1 @ X0 ) ) )
      | ( X0
        = ( k1_relat_1 @ ( k7_relat_1 @ X1 @ X0 ) ) ) ) ),
    inference('sup-',[status(thm)],['33','34'])).

thf('70',plain,
    ( ( sk_A
      = ( k1_relat_1 @ ( k7_relat_1 @ sk_B @ sk_A ) ) )
    | ~ ( v1_relat_1 @ sk_B ) ),
    inference('sup-',[status(thm)],['68','69'])).

thf('71',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('72',plain,
    ( sk_A
    = ( k1_relat_1 @ ( k7_relat_1 @ sk_B @ sk_A ) ) ),
    inference(demod,[status(thm)],['70','71'])).

thf('73',plain,(
    ! [X21: $i,X22: $i] :
      ( ( r1_tarski @ ( k10_relat_1 @ X21 @ X22 ) @ ( k1_relat_1 @ X21 ) )
      | ~ ( v1_relat_1 @ X21 ) ) ),
    inference(cnf,[status(esa)],[t167_relat_1])).

thf('74',plain,(
    ! [X0: $i] :
      ( ( r1_tarski @ ( k10_relat_1 @ ( k7_relat_1 @ sk_B @ sk_A ) @ X0 ) @ sk_A )
      | ~ ( v1_relat_1 @ ( k7_relat_1 @ sk_B @ sk_A ) ) ) ),
    inference('sup+',[status(thm)],['72','73'])).

thf('75',plain,(
    ! [X0: $i] :
      ( ~ ( v1_relat_1 @ sk_B )
      | ( r1_tarski @ ( k10_relat_1 @ ( k7_relat_1 @ sk_B @ sk_A ) @ X0 ) @ sk_A ) ) ),
    inference('sup-',[status(thm)],['7','74'])).

thf('76',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('77',plain,(
    ! [X0: $i] :
      ( r1_tarski @ ( k10_relat_1 @ ( k7_relat_1 @ sk_B @ sk_A ) @ X0 ) @ sk_A ) ),
    inference(demod,[status(thm)],['75','76'])).

thf('78',plain,(
    ! [X2: $i,X4: $i] :
      ( ( X2 = X4 )
      | ~ ( r1_tarski @ X4 @ X2 )
      | ~ ( r1_tarski @ X2 @ X4 ) ) ),
    inference(cnf,[status(esa)],[d10_xboole_0])).

thf('79',plain,(
    ! [X0: $i] :
      ( ~ ( r1_tarski @ sk_A @ ( k10_relat_1 @ ( k7_relat_1 @ sk_B @ sk_A ) @ X0 ) )
      | ( sk_A
        = ( k10_relat_1 @ ( k7_relat_1 @ sk_B @ sk_A ) @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['77','78'])).

thf('80',plain,
    ( ~ ( r1_tarski @ sk_A @ ( k1_relat_1 @ ( k7_relat_1 @ sk_B @ sk_A ) ) )
    | ~ ( v1_relat_1 @ sk_B )
    | ( sk_A
      = ( k10_relat_1 @ ( k7_relat_1 @ sk_B @ sk_A ) @ ( k9_relat_1 @ sk_B @ sk_A ) ) ) ),
    inference('sup-',[status(thm)],['6','79'])).

thf('81',plain,
    ( sk_A
    = ( k1_relat_1 @ ( k7_relat_1 @ sk_B @ sk_A ) ) ),
    inference(demod,[status(thm)],['70','71'])).

thf('82',plain,(
    ! [X3: $i] :
      ( r1_tarski @ X3 @ X3 ) ),
    inference(simplify,[status(thm)],['60'])).

thf('83',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('84',plain,
    ( sk_A
    = ( k10_relat_1 @ ( k7_relat_1 @ sk_B @ sk_A ) @ ( k9_relat_1 @ sk_B @ sk_A ) ) ),
    inference(demod,[status(thm)],['80','81','82','83'])).

thf('85',plain,
    ( ( sk_A
      = ( k3_xboole_0 @ sk_A @ ( k10_relat_1 @ sk_B @ ( k9_relat_1 @ sk_B @ sk_A ) ) ) )
    | ~ ( v1_relat_1 @ sk_B ) ),
    inference('sup+',[status(thm)],['1','84'])).

thf('86',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('87',plain,
    ( sk_A
    = ( k3_xboole_0 @ sk_A @ ( k10_relat_1 @ sk_B @ ( k9_relat_1 @ sk_B @ sk_A ) ) ) ),
    inference(demod,[status(thm)],['85','86'])).

thf('88',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k3_xboole_0 @ X1 @ X0 )
      = ( k3_xboole_0 @ X0 @ X1 ) ) ),
    inference(cnf,[status(esa)],[commutativity_k3_xboole_0])).

thf('89',plain,(
    ! [X13: $i,X14: $i] :
      ( r1_tarski @ ( k3_xboole_0 @ X13 @ X14 ) @ X13 ) ),
    inference(cnf,[status(esa)],[t17_xboole_1])).

thf('90',plain,(
    ! [X0: $i,X1: $i] :
      ( r1_tarski @ ( k3_xboole_0 @ X1 @ X0 ) @ X0 ) ),
    inference('sup+',[status(thm)],['88','89'])).

thf('91',plain,(
    r1_tarski @ sk_A @ ( k10_relat_1 @ sk_B @ ( k9_relat_1 @ sk_B @ sk_A ) ) ),
    inference('sup+',[status(thm)],['87','90'])).

thf('92',plain,(
    $false ),
    inference(demod,[status(thm)],['0','91'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.9lFdrzAsNU
% 0.13/0.34  % Computer   : n002.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 10:41:22 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.13/0.35  % Running portfolio for 600 s
% 0.13/0.35  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.13/0.35  % Number of cores: 8
% 0.13/0.35  % Python version: Python 3.6.8
% 0.13/0.35  % Running in FO mode
% 1.49/1.68  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 1.49/1.68  % Solved by: fo/fo7.sh
% 1.49/1.68  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 1.49/1.68  % done 2149 iterations in 1.201s
% 1.49/1.68  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 1.49/1.68  % SZS output start Refutation
% 1.49/1.68  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 1.49/1.68  thf(k2_xboole_0_type, type, k2_xboole_0: $i > $i > $i).
% 1.49/1.68  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 1.49/1.68  thf(sk_B_type, type, sk_B: $i).
% 1.49/1.68  thf(sk_A_type, type, sk_A: $i).
% 1.49/1.68  thf(k3_xboole_0_type, type, k3_xboole_0: $i > $i > $i).
% 1.49/1.68  thf(k9_relat_1_type, type, k9_relat_1: $i > $i > $i).
% 1.49/1.68  thf(k2_relat_1_type, type, k2_relat_1: $i > $i).
% 1.49/1.68  thf(k10_relat_1_type, type, k10_relat_1: $i > $i > $i).
% 1.49/1.68  thf(k7_relat_1_type, type, k7_relat_1: $i > $i > $i).
% 1.49/1.68  thf(k1_relat_1_type, type, k1_relat_1: $i > $i).
% 1.49/1.68  thf(t146_funct_1, conjecture,
% 1.49/1.68    (![A:$i,B:$i]:
% 1.49/1.68     ( ( v1_relat_1 @ B ) =>
% 1.49/1.68       ( ( r1_tarski @ A @ ( k1_relat_1 @ B ) ) =>
% 1.49/1.68         ( r1_tarski @ A @ ( k10_relat_1 @ B @ ( k9_relat_1 @ B @ A ) ) ) ) ))).
% 1.49/1.68  thf(zf_stmt_0, negated_conjecture,
% 1.49/1.68    (~( ![A:$i,B:$i]:
% 1.49/1.68        ( ( v1_relat_1 @ B ) =>
% 1.49/1.68          ( ( r1_tarski @ A @ ( k1_relat_1 @ B ) ) =>
% 1.49/1.68            ( r1_tarski @ A @ ( k10_relat_1 @ B @ ( k9_relat_1 @ B @ A ) ) ) ) ) )),
% 1.49/1.68    inference('cnf.neg', [status(esa)], [t146_funct_1])).
% 1.49/1.68  thf('0', plain,
% 1.49/1.68      (~ (r1_tarski @ sk_A @ (k10_relat_1 @ sk_B @ (k9_relat_1 @ sk_B @ sk_A)))),
% 1.49/1.68      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.49/1.68  thf(t139_funct_1, axiom,
% 1.49/1.68    (![A:$i,B:$i,C:$i]:
% 1.49/1.68     ( ( v1_relat_1 @ C ) =>
% 1.49/1.68       ( ( k10_relat_1 @ ( k7_relat_1 @ C @ A ) @ B ) =
% 1.49/1.68         ( k3_xboole_0 @ A @ ( k10_relat_1 @ C @ B ) ) ) ))).
% 1.49/1.68  thf('1', plain,
% 1.49/1.68      (![X27 : $i, X28 : $i, X29 : $i]:
% 1.49/1.68         (((k10_relat_1 @ (k7_relat_1 @ X28 @ X27) @ X29)
% 1.49/1.68            = (k3_xboole_0 @ X27 @ (k10_relat_1 @ X28 @ X29)))
% 1.49/1.68          | ~ (v1_relat_1 @ X28))),
% 1.49/1.68      inference('cnf', [status(esa)], [t139_funct_1])).
% 1.49/1.68  thf(t148_relat_1, axiom,
% 1.49/1.68    (![A:$i,B:$i]:
% 1.49/1.68     ( ( v1_relat_1 @ B ) =>
% 1.49/1.68       ( ( k2_relat_1 @ ( k7_relat_1 @ B @ A ) ) = ( k9_relat_1 @ B @ A ) ) ))).
% 1.49/1.68  thf('2', plain,
% 1.49/1.68      (![X19 : $i, X20 : $i]:
% 1.49/1.68         (((k2_relat_1 @ (k7_relat_1 @ X19 @ X20)) = (k9_relat_1 @ X19 @ X20))
% 1.49/1.68          | ~ (v1_relat_1 @ X19))),
% 1.49/1.68      inference('cnf', [status(esa)], [t148_relat_1])).
% 1.49/1.68  thf(t169_relat_1, axiom,
% 1.49/1.68    (![A:$i]:
% 1.49/1.68     ( ( v1_relat_1 @ A ) =>
% 1.49/1.68       ( ( k10_relat_1 @ A @ ( k2_relat_1 @ A ) ) = ( k1_relat_1 @ A ) ) ))).
% 1.49/1.68  thf('3', plain,
% 1.49/1.68      (![X23 : $i]:
% 1.49/1.68         (((k10_relat_1 @ X23 @ (k2_relat_1 @ X23)) = (k1_relat_1 @ X23))
% 1.49/1.68          | ~ (v1_relat_1 @ X23))),
% 1.49/1.68      inference('cnf', [status(esa)], [t169_relat_1])).
% 1.49/1.68  thf('4', plain,
% 1.49/1.68      (![X0 : $i, X1 : $i]:
% 1.49/1.68         (((k10_relat_1 @ (k7_relat_1 @ X1 @ X0) @ (k9_relat_1 @ X1 @ X0))
% 1.49/1.68            = (k1_relat_1 @ (k7_relat_1 @ X1 @ X0)))
% 1.49/1.68          | ~ (v1_relat_1 @ X1)
% 1.49/1.68          | ~ (v1_relat_1 @ (k7_relat_1 @ X1 @ X0)))),
% 1.49/1.68      inference('sup+', [status(thm)], ['2', '3'])).
% 1.49/1.68  thf(dt_k7_relat_1, axiom,
% 1.49/1.68    (![A:$i,B:$i]:
% 1.49/1.68     ( ( v1_relat_1 @ A ) => ( v1_relat_1 @ ( k7_relat_1 @ A @ B ) ) ))).
% 1.49/1.68  thf('5', plain,
% 1.49/1.68      (![X17 : $i, X18 : $i]:
% 1.49/1.68         (~ (v1_relat_1 @ X17) | (v1_relat_1 @ (k7_relat_1 @ X17 @ X18)))),
% 1.49/1.68      inference('cnf', [status(esa)], [dt_k7_relat_1])).
% 1.49/1.68  thf('6', plain,
% 1.49/1.68      (![X0 : $i, X1 : $i]:
% 1.49/1.68         (~ (v1_relat_1 @ X1)
% 1.49/1.68          | ((k10_relat_1 @ (k7_relat_1 @ X1 @ X0) @ (k9_relat_1 @ X1 @ X0))
% 1.49/1.68              = (k1_relat_1 @ (k7_relat_1 @ X1 @ X0))))),
% 1.49/1.68      inference('clc', [status(thm)], ['4', '5'])).
% 1.49/1.68  thf('7', plain,
% 1.49/1.68      (![X17 : $i, X18 : $i]:
% 1.49/1.68         (~ (v1_relat_1 @ X17) | (v1_relat_1 @ (k7_relat_1 @ X17 @ X18)))),
% 1.49/1.68      inference('cnf', [status(esa)], [dt_k7_relat_1])).
% 1.49/1.68  thf('8', plain, ((r1_tarski @ sk_A @ (k1_relat_1 @ sk_B))),
% 1.49/1.68      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.49/1.68  thf(t28_xboole_1, axiom,
% 1.49/1.68    (![A:$i,B:$i]:
% 1.49/1.68     ( ( r1_tarski @ A @ B ) => ( ( k3_xboole_0 @ A @ B ) = ( A ) ) ))).
% 1.49/1.68  thf('9', plain,
% 1.49/1.68      (![X15 : $i, X16 : $i]:
% 1.49/1.68         (((k3_xboole_0 @ X15 @ X16) = (X15)) | ~ (r1_tarski @ X15 @ X16))),
% 1.49/1.68      inference('cnf', [status(esa)], [t28_xboole_1])).
% 1.49/1.68  thf('10', plain, (((k3_xboole_0 @ sk_A @ (k1_relat_1 @ sk_B)) = (sk_A))),
% 1.49/1.68      inference('sup-', [status(thm)], ['8', '9'])).
% 1.49/1.68  thf('11', plain,
% 1.49/1.68      (![X23 : $i]:
% 1.49/1.68         (((k10_relat_1 @ X23 @ (k2_relat_1 @ X23)) = (k1_relat_1 @ X23))
% 1.49/1.68          | ~ (v1_relat_1 @ X23))),
% 1.49/1.68      inference('cnf', [status(esa)], [t169_relat_1])).
% 1.49/1.68  thf('12', plain,
% 1.49/1.68      (![X23 : $i]:
% 1.49/1.68         (((k10_relat_1 @ X23 @ (k2_relat_1 @ X23)) = (k1_relat_1 @ X23))
% 1.49/1.68          | ~ (v1_relat_1 @ X23))),
% 1.49/1.68      inference('cnf', [status(esa)], [t169_relat_1])).
% 1.49/1.68  thf(t167_relat_1, axiom,
% 1.49/1.68    (![A:$i,B:$i]:
% 1.49/1.68     ( ( v1_relat_1 @ B ) =>
% 1.49/1.68       ( r1_tarski @ ( k10_relat_1 @ B @ A ) @ ( k1_relat_1 @ B ) ) ))).
% 1.49/1.68  thf('13', plain,
% 1.49/1.68      (![X21 : $i, X22 : $i]:
% 1.49/1.68         ((r1_tarski @ (k10_relat_1 @ X21 @ X22) @ (k1_relat_1 @ X21))
% 1.49/1.68          | ~ (v1_relat_1 @ X21))),
% 1.49/1.68      inference('cnf', [status(esa)], [t167_relat_1])).
% 1.49/1.68  thf('14', plain,
% 1.49/1.68      (![X15 : $i, X16 : $i]:
% 1.49/1.68         (((k3_xboole_0 @ X15 @ X16) = (X15)) | ~ (r1_tarski @ X15 @ X16))),
% 1.49/1.68      inference('cnf', [status(esa)], [t28_xboole_1])).
% 1.49/1.68  thf('15', plain,
% 1.49/1.68      (![X0 : $i, X1 : $i]:
% 1.49/1.68         (~ (v1_relat_1 @ X0)
% 1.49/1.68          | ((k3_xboole_0 @ (k10_relat_1 @ X0 @ X1) @ (k1_relat_1 @ X0))
% 1.49/1.68              = (k10_relat_1 @ X0 @ X1)))),
% 1.49/1.68      inference('sup-', [status(thm)], ['13', '14'])).
% 1.49/1.68  thf(commutativity_k3_xboole_0, axiom,
% 1.49/1.68    (![A:$i,B:$i]: ( ( k3_xboole_0 @ A @ B ) = ( k3_xboole_0 @ B @ A ) ))).
% 1.49/1.68  thf('16', plain,
% 1.49/1.68      (![X0 : $i, X1 : $i]: ((k3_xboole_0 @ X1 @ X0) = (k3_xboole_0 @ X0 @ X1))),
% 1.49/1.68      inference('cnf', [status(esa)], [commutativity_k3_xboole_0])).
% 1.49/1.68  thf('17', plain,
% 1.49/1.68      (![X0 : $i, X1 : $i]:
% 1.49/1.68         (~ (v1_relat_1 @ X0)
% 1.49/1.68          | ((k3_xboole_0 @ (k1_relat_1 @ X0) @ (k10_relat_1 @ X0 @ X1))
% 1.49/1.68              = (k10_relat_1 @ X0 @ X1)))),
% 1.49/1.68      inference('demod', [status(thm)], ['15', '16'])).
% 1.49/1.68  thf('18', plain,
% 1.49/1.68      (![X27 : $i, X28 : $i, X29 : $i]:
% 1.49/1.68         (((k10_relat_1 @ (k7_relat_1 @ X28 @ X27) @ X29)
% 1.49/1.68            = (k3_xboole_0 @ X27 @ (k10_relat_1 @ X28 @ X29)))
% 1.49/1.68          | ~ (v1_relat_1 @ X28))),
% 1.49/1.68      inference('cnf', [status(esa)], [t139_funct_1])).
% 1.49/1.68  thf('19', plain,
% 1.49/1.68      (![X21 : $i, X22 : $i]:
% 1.49/1.68         ((r1_tarski @ (k10_relat_1 @ X21 @ X22) @ (k1_relat_1 @ X21))
% 1.49/1.68          | ~ (v1_relat_1 @ X21))),
% 1.49/1.68      inference('cnf', [status(esa)], [t167_relat_1])).
% 1.49/1.68  thf('20', plain,
% 1.49/1.68      (![X0 : $i, X1 : $i, X2 : $i]:
% 1.49/1.68         ((r1_tarski @ (k3_xboole_0 @ X2 @ (k10_relat_1 @ X1 @ X0)) @ 
% 1.49/1.68           (k1_relat_1 @ (k7_relat_1 @ X1 @ X2)))
% 1.49/1.68          | ~ (v1_relat_1 @ X1)
% 1.49/1.68          | ~ (v1_relat_1 @ (k7_relat_1 @ X1 @ X2)))),
% 1.49/1.68      inference('sup+', [status(thm)], ['18', '19'])).
% 1.49/1.68  thf('21', plain,
% 1.49/1.68      (![X17 : $i, X18 : $i]:
% 1.49/1.68         (~ (v1_relat_1 @ X17) | (v1_relat_1 @ (k7_relat_1 @ X17 @ X18)))),
% 1.49/1.68      inference('cnf', [status(esa)], [dt_k7_relat_1])).
% 1.49/1.68  thf('22', plain,
% 1.49/1.68      (![X0 : $i, X1 : $i, X2 : $i]:
% 1.49/1.68         (~ (v1_relat_1 @ X1)
% 1.49/1.68          | (r1_tarski @ (k3_xboole_0 @ X2 @ (k10_relat_1 @ X1 @ X0)) @ 
% 1.49/1.68             (k1_relat_1 @ (k7_relat_1 @ X1 @ X2))))),
% 1.49/1.68      inference('clc', [status(thm)], ['20', '21'])).
% 1.49/1.68  thf('23', plain,
% 1.49/1.68      (![X0 : $i, X1 : $i]:
% 1.49/1.68         ((r1_tarski @ (k10_relat_1 @ X1 @ X0) @ 
% 1.49/1.68           (k1_relat_1 @ (k7_relat_1 @ X1 @ (k1_relat_1 @ X1))))
% 1.49/1.68          | ~ (v1_relat_1 @ X1)
% 1.49/1.68          | ~ (v1_relat_1 @ X1))),
% 1.49/1.68      inference('sup+', [status(thm)], ['17', '22'])).
% 1.49/1.68  thf('24', plain,
% 1.49/1.68      (![X0 : $i, X1 : $i]:
% 1.49/1.68         (~ (v1_relat_1 @ X1)
% 1.49/1.68          | (r1_tarski @ (k10_relat_1 @ X1 @ X0) @ 
% 1.49/1.68             (k1_relat_1 @ (k7_relat_1 @ X1 @ (k1_relat_1 @ X1)))))),
% 1.49/1.68      inference('simplify', [status(thm)], ['23'])).
% 1.49/1.68  thf('25', plain,
% 1.49/1.68      (![X0 : $i]:
% 1.49/1.68         ((r1_tarski @ (k1_relat_1 @ X0) @ 
% 1.49/1.68           (k1_relat_1 @ (k7_relat_1 @ X0 @ (k1_relat_1 @ X0))))
% 1.49/1.68          | ~ (v1_relat_1 @ X0)
% 1.49/1.68          | ~ (v1_relat_1 @ X0))),
% 1.49/1.68      inference('sup+', [status(thm)], ['12', '24'])).
% 1.49/1.68  thf('26', plain,
% 1.49/1.68      (![X0 : $i]:
% 1.49/1.68         (~ (v1_relat_1 @ X0)
% 1.49/1.68          | (r1_tarski @ (k1_relat_1 @ X0) @ 
% 1.49/1.68             (k1_relat_1 @ (k7_relat_1 @ X0 @ (k1_relat_1 @ X0)))))),
% 1.49/1.68      inference('simplify', [status(thm)], ['25'])).
% 1.49/1.68  thf('27', plain,
% 1.49/1.68      (![X27 : $i, X28 : $i, X29 : $i]:
% 1.49/1.68         (((k10_relat_1 @ (k7_relat_1 @ X28 @ X27) @ X29)
% 1.49/1.68            = (k3_xboole_0 @ X27 @ (k10_relat_1 @ X28 @ X29)))
% 1.49/1.68          | ~ (v1_relat_1 @ X28))),
% 1.53/1.68      inference('cnf', [status(esa)], [t139_funct_1])).
% 1.53/1.68  thf('28', plain,
% 1.53/1.68      (![X23 : $i]:
% 1.53/1.68         (((k10_relat_1 @ X23 @ (k2_relat_1 @ X23)) = (k1_relat_1 @ X23))
% 1.53/1.68          | ~ (v1_relat_1 @ X23))),
% 1.53/1.68      inference('cnf', [status(esa)], [t169_relat_1])).
% 1.53/1.68  thf('29', plain,
% 1.53/1.68      (![X0 : $i, X1 : $i]:
% 1.53/1.68         (((k3_xboole_0 @ X0 @ 
% 1.53/1.68            (k10_relat_1 @ X1 @ (k2_relat_1 @ (k7_relat_1 @ X1 @ X0))))
% 1.53/1.68            = (k1_relat_1 @ (k7_relat_1 @ X1 @ X0)))
% 1.53/1.68          | ~ (v1_relat_1 @ X1)
% 1.53/1.68          | ~ (v1_relat_1 @ (k7_relat_1 @ X1 @ X0)))),
% 1.53/1.68      inference('sup+', [status(thm)], ['27', '28'])).
% 1.53/1.68  thf('30', plain,
% 1.53/1.68      (![X17 : $i, X18 : $i]:
% 1.53/1.68         (~ (v1_relat_1 @ X17) | (v1_relat_1 @ (k7_relat_1 @ X17 @ X18)))),
% 1.53/1.68      inference('cnf', [status(esa)], [dt_k7_relat_1])).
% 1.53/1.68  thf('31', plain,
% 1.53/1.68      (![X0 : $i, X1 : $i]:
% 1.53/1.68         (~ (v1_relat_1 @ X1)
% 1.53/1.68          | ((k3_xboole_0 @ X0 @ 
% 1.53/1.68              (k10_relat_1 @ X1 @ (k2_relat_1 @ (k7_relat_1 @ X1 @ X0))))
% 1.53/1.68              = (k1_relat_1 @ (k7_relat_1 @ X1 @ X0))))),
% 1.53/1.68      inference('clc', [status(thm)], ['29', '30'])).
% 1.53/1.68  thf(t17_xboole_1, axiom,
% 1.53/1.68    (![A:$i,B:$i]: ( r1_tarski @ ( k3_xboole_0 @ A @ B ) @ A ))).
% 1.53/1.68  thf('32', plain,
% 1.53/1.68      (![X13 : $i, X14 : $i]: (r1_tarski @ (k3_xboole_0 @ X13 @ X14) @ X13)),
% 1.53/1.68      inference('cnf', [status(esa)], [t17_xboole_1])).
% 1.53/1.68  thf('33', plain,
% 1.53/1.68      (![X0 : $i, X1 : $i]:
% 1.53/1.68         ((r1_tarski @ (k1_relat_1 @ (k7_relat_1 @ X1 @ X0)) @ X0)
% 1.53/1.68          | ~ (v1_relat_1 @ X1))),
% 1.53/1.68      inference('sup+', [status(thm)], ['31', '32'])).
% 1.53/1.68  thf(d10_xboole_0, axiom,
% 1.53/1.68    (![A:$i,B:$i]:
% 1.53/1.68     ( ( ( A ) = ( B ) ) <=> ( ( r1_tarski @ A @ B ) & ( r1_tarski @ B @ A ) ) ))).
% 1.53/1.68  thf('34', plain,
% 1.53/1.68      (![X2 : $i, X4 : $i]:
% 1.53/1.68         (((X2) = (X4)) | ~ (r1_tarski @ X4 @ X2) | ~ (r1_tarski @ X2 @ X4))),
% 1.53/1.68      inference('cnf', [status(esa)], [d10_xboole_0])).
% 1.53/1.68  thf('35', plain,
% 1.53/1.68      (![X0 : $i, X1 : $i]:
% 1.53/1.68         (~ (v1_relat_1 @ X1)
% 1.53/1.68          | ~ (r1_tarski @ X0 @ (k1_relat_1 @ (k7_relat_1 @ X1 @ X0)))
% 1.53/1.68          | ((X0) = (k1_relat_1 @ (k7_relat_1 @ X1 @ X0))))),
% 1.53/1.68      inference('sup-', [status(thm)], ['33', '34'])).
% 1.53/1.68  thf('36', plain,
% 1.53/1.68      (![X0 : $i]:
% 1.53/1.68         (~ (v1_relat_1 @ X0)
% 1.53/1.68          | ((k1_relat_1 @ X0)
% 1.53/1.68              = (k1_relat_1 @ (k7_relat_1 @ X0 @ (k1_relat_1 @ X0))))
% 1.53/1.68          | ~ (v1_relat_1 @ X0))),
% 1.53/1.68      inference('sup-', [status(thm)], ['26', '35'])).
% 1.53/1.68  thf('37', plain,
% 1.53/1.68      (![X0 : $i]:
% 1.53/1.68         (((k1_relat_1 @ X0)
% 1.53/1.68            = (k1_relat_1 @ (k7_relat_1 @ X0 @ (k1_relat_1 @ X0))))
% 1.53/1.68          | ~ (v1_relat_1 @ X0))),
% 1.53/1.68      inference('simplify', [status(thm)], ['36'])).
% 1.53/1.68  thf('38', plain,
% 1.53/1.68      (![X0 : $i]:
% 1.53/1.68         (~ (v1_relat_1 @ X0)
% 1.53/1.68          | (r1_tarski @ (k1_relat_1 @ X0) @ 
% 1.53/1.68             (k1_relat_1 @ (k7_relat_1 @ X0 @ (k1_relat_1 @ X0)))))),
% 1.53/1.68      inference('simplify', [status(thm)], ['25'])).
% 1.53/1.68  thf('39', plain, ((r1_tarski @ sk_A @ (k1_relat_1 @ sk_B))),
% 1.53/1.68      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.53/1.68  thf(t12_xboole_1, axiom,
% 1.53/1.68    (![A:$i,B:$i]:
% 1.53/1.68     ( ( r1_tarski @ A @ B ) => ( ( k2_xboole_0 @ A @ B ) = ( B ) ) ))).
% 1.53/1.68  thf('40', plain,
% 1.53/1.68      (![X11 : $i, X12 : $i]:
% 1.53/1.68         (((k2_xboole_0 @ X12 @ X11) = (X11)) | ~ (r1_tarski @ X12 @ X11))),
% 1.53/1.68      inference('cnf', [status(esa)], [t12_xboole_1])).
% 1.53/1.68  thf('41', plain,
% 1.53/1.68      (((k2_xboole_0 @ sk_A @ (k1_relat_1 @ sk_B)) = (k1_relat_1 @ sk_B))),
% 1.53/1.68      inference('sup-', [status(thm)], ['39', '40'])).
% 1.53/1.68  thf(t11_xboole_1, axiom,
% 1.53/1.68    (![A:$i,B:$i,C:$i]:
% 1.53/1.68     ( ( r1_tarski @ ( k2_xboole_0 @ A @ B ) @ C ) => ( r1_tarski @ A @ C ) ))).
% 1.53/1.68  thf('42', plain,
% 1.53/1.68      (![X8 : $i, X9 : $i, X10 : $i]:
% 1.53/1.68         ((r1_tarski @ X8 @ X9) | ~ (r1_tarski @ (k2_xboole_0 @ X8 @ X10) @ X9))),
% 1.53/1.68      inference('cnf', [status(esa)], [t11_xboole_1])).
% 1.53/1.68  thf('43', plain,
% 1.53/1.68      (![X0 : $i]:
% 1.53/1.68         (~ (r1_tarski @ (k1_relat_1 @ sk_B) @ X0) | (r1_tarski @ sk_A @ X0))),
% 1.53/1.68      inference('sup-', [status(thm)], ['41', '42'])).
% 1.53/1.68  thf('44', plain,
% 1.53/1.68      ((~ (v1_relat_1 @ sk_B)
% 1.53/1.68        | (r1_tarski @ sk_A @ 
% 1.53/1.68           (k1_relat_1 @ (k7_relat_1 @ sk_B @ (k1_relat_1 @ sk_B)))))),
% 1.53/1.68      inference('sup-', [status(thm)], ['38', '43'])).
% 1.53/1.68  thf('45', plain, ((v1_relat_1 @ sk_B)),
% 1.53/1.68      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.53/1.68  thf('46', plain,
% 1.53/1.68      ((r1_tarski @ sk_A @ 
% 1.53/1.68        (k1_relat_1 @ (k7_relat_1 @ sk_B @ (k1_relat_1 @ sk_B))))),
% 1.53/1.68      inference('demod', [status(thm)], ['44', '45'])).
% 1.53/1.68  thf('47', plain,
% 1.53/1.68      (![X11 : $i, X12 : $i]:
% 1.53/1.68         (((k2_xboole_0 @ X12 @ X11) = (X11)) | ~ (r1_tarski @ X12 @ X11))),
% 1.53/1.68      inference('cnf', [status(esa)], [t12_xboole_1])).
% 1.53/1.68  thf('48', plain,
% 1.53/1.68      (((k2_xboole_0 @ sk_A @ 
% 1.53/1.68         (k1_relat_1 @ (k7_relat_1 @ sk_B @ (k1_relat_1 @ sk_B))))
% 1.53/1.68         = (k1_relat_1 @ (k7_relat_1 @ sk_B @ (k1_relat_1 @ sk_B))))),
% 1.53/1.68      inference('sup-', [status(thm)], ['46', '47'])).
% 1.53/1.68  thf('49', plain,
% 1.53/1.68      ((((k2_xboole_0 @ sk_A @ (k1_relat_1 @ sk_B))
% 1.53/1.68          = (k1_relat_1 @ (k7_relat_1 @ sk_B @ (k1_relat_1 @ sk_B))))
% 1.53/1.68        | ~ (v1_relat_1 @ sk_B))),
% 1.53/1.68      inference('sup+', [status(thm)], ['37', '48'])).
% 1.53/1.68  thf('50', plain,
% 1.53/1.68      (((k2_xboole_0 @ sk_A @ (k1_relat_1 @ sk_B)) = (k1_relat_1 @ sk_B))),
% 1.53/1.68      inference('sup-', [status(thm)], ['39', '40'])).
% 1.53/1.68  thf('51', plain, ((v1_relat_1 @ sk_B)),
% 1.53/1.68      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.53/1.68  thf('52', plain,
% 1.53/1.68      (((k1_relat_1 @ sk_B)
% 1.53/1.68         = (k1_relat_1 @ (k7_relat_1 @ sk_B @ (k1_relat_1 @ sk_B))))),
% 1.53/1.68      inference('demod', [status(thm)], ['49', '50', '51'])).
% 1.53/1.68  thf('53', plain,
% 1.53/1.68      (![X0 : $i, X1 : $i]:
% 1.53/1.68         (~ (v1_relat_1 @ X1)
% 1.53/1.68          | (r1_tarski @ (k10_relat_1 @ X1 @ X0) @ 
% 1.53/1.68             (k1_relat_1 @ (k7_relat_1 @ X1 @ (k1_relat_1 @ X1)))))),
% 1.53/1.68      inference('simplify', [status(thm)], ['23'])).
% 1.53/1.68  thf('54', plain,
% 1.53/1.68      (![X0 : $i]:
% 1.53/1.68         ((r1_tarski @ (k10_relat_1 @ sk_B @ X0) @ (k1_relat_1 @ sk_B))
% 1.53/1.68          | ~ (v1_relat_1 @ sk_B))),
% 1.53/1.68      inference('sup+', [status(thm)], ['52', '53'])).
% 1.53/1.68  thf('55', plain, ((v1_relat_1 @ sk_B)),
% 1.53/1.68      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.53/1.68  thf('56', plain,
% 1.53/1.68      (![X0 : $i]:
% 1.53/1.68         (r1_tarski @ (k10_relat_1 @ sk_B @ X0) @ (k1_relat_1 @ sk_B))),
% 1.53/1.68      inference('demod', [status(thm)], ['54', '55'])).
% 1.53/1.68  thf('57', plain,
% 1.53/1.68      (![X2 : $i, X4 : $i]:
% 1.53/1.68         (((X2) = (X4)) | ~ (r1_tarski @ X4 @ X2) | ~ (r1_tarski @ X2 @ X4))),
% 1.53/1.68      inference('cnf', [status(esa)], [d10_xboole_0])).
% 1.53/1.68  thf('58', plain,
% 1.53/1.68      (![X0 : $i]:
% 1.53/1.68         (~ (r1_tarski @ (k1_relat_1 @ sk_B) @ (k10_relat_1 @ sk_B @ X0))
% 1.53/1.68          | ((k1_relat_1 @ sk_B) = (k10_relat_1 @ sk_B @ X0)))),
% 1.53/1.68      inference('sup-', [status(thm)], ['56', '57'])).
% 1.53/1.68  thf('59', plain,
% 1.53/1.68      ((~ (r1_tarski @ (k1_relat_1 @ sk_B) @ (k1_relat_1 @ sk_B))
% 1.53/1.68        | ~ (v1_relat_1 @ sk_B)
% 1.53/1.68        | ((k1_relat_1 @ sk_B) = (k10_relat_1 @ sk_B @ (k2_relat_1 @ sk_B))))),
% 1.53/1.68      inference('sup-', [status(thm)], ['11', '58'])).
% 1.53/1.68  thf('60', plain,
% 1.53/1.68      (![X2 : $i, X3 : $i]: ((r1_tarski @ X2 @ X3) | ((X2) != (X3)))),
% 1.53/1.68      inference('cnf', [status(esa)], [d10_xboole_0])).
% 1.53/1.68  thf('61', plain, (![X3 : $i]: (r1_tarski @ X3 @ X3)),
% 1.53/1.68      inference('simplify', [status(thm)], ['60'])).
% 1.53/1.68  thf('62', plain, ((v1_relat_1 @ sk_B)),
% 1.53/1.68      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.53/1.68  thf('63', plain,
% 1.53/1.68      (((k1_relat_1 @ sk_B) = (k10_relat_1 @ sk_B @ (k2_relat_1 @ sk_B)))),
% 1.53/1.68      inference('demod', [status(thm)], ['59', '61', '62'])).
% 1.53/1.68  thf('64', plain,
% 1.53/1.68      (![X0 : $i, X1 : $i, X2 : $i]:
% 1.53/1.68         (~ (v1_relat_1 @ X1)
% 1.53/1.68          | (r1_tarski @ (k3_xboole_0 @ X2 @ (k10_relat_1 @ X1 @ X0)) @ 
% 1.53/1.68             (k1_relat_1 @ (k7_relat_1 @ X1 @ X2))))),
% 1.53/1.68      inference('clc', [status(thm)], ['20', '21'])).
% 1.53/1.68  thf('65', plain,
% 1.53/1.68      (![X0 : $i]:
% 1.53/1.68         ((r1_tarski @ (k3_xboole_0 @ X0 @ (k1_relat_1 @ sk_B)) @ 
% 1.53/1.68           (k1_relat_1 @ (k7_relat_1 @ sk_B @ X0)))
% 1.53/1.68          | ~ (v1_relat_1 @ sk_B))),
% 1.53/1.68      inference('sup+', [status(thm)], ['63', '64'])).
% 1.53/1.68  thf('66', plain, ((v1_relat_1 @ sk_B)),
% 1.53/1.68      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.53/1.68  thf('67', plain,
% 1.53/1.68      (![X0 : $i]:
% 1.53/1.68         (r1_tarski @ (k3_xboole_0 @ X0 @ (k1_relat_1 @ sk_B)) @ 
% 1.53/1.68          (k1_relat_1 @ (k7_relat_1 @ sk_B @ X0)))),
% 1.53/1.68      inference('demod', [status(thm)], ['65', '66'])).
% 1.53/1.68  thf('68', plain,
% 1.53/1.68      ((r1_tarski @ sk_A @ (k1_relat_1 @ (k7_relat_1 @ sk_B @ sk_A)))),
% 1.53/1.68      inference('sup+', [status(thm)], ['10', '67'])).
% 1.53/1.68  thf('69', plain,
% 1.53/1.68      (![X0 : $i, X1 : $i]:
% 1.53/1.68         (~ (v1_relat_1 @ X1)
% 1.53/1.68          | ~ (r1_tarski @ X0 @ (k1_relat_1 @ (k7_relat_1 @ X1 @ X0)))
% 1.53/1.68          | ((X0) = (k1_relat_1 @ (k7_relat_1 @ X1 @ X0))))),
% 1.53/1.68      inference('sup-', [status(thm)], ['33', '34'])).
% 1.53/1.68  thf('70', plain,
% 1.53/1.68      ((((sk_A) = (k1_relat_1 @ (k7_relat_1 @ sk_B @ sk_A)))
% 1.53/1.68        | ~ (v1_relat_1 @ sk_B))),
% 1.53/1.68      inference('sup-', [status(thm)], ['68', '69'])).
% 1.53/1.68  thf('71', plain, ((v1_relat_1 @ sk_B)),
% 1.53/1.68      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.53/1.68  thf('72', plain, (((sk_A) = (k1_relat_1 @ (k7_relat_1 @ sk_B @ sk_A)))),
% 1.53/1.68      inference('demod', [status(thm)], ['70', '71'])).
% 1.53/1.68  thf('73', plain,
% 1.53/1.68      (![X21 : $i, X22 : $i]:
% 1.53/1.68         ((r1_tarski @ (k10_relat_1 @ X21 @ X22) @ (k1_relat_1 @ X21))
% 1.53/1.68          | ~ (v1_relat_1 @ X21))),
% 1.53/1.68      inference('cnf', [status(esa)], [t167_relat_1])).
% 1.53/1.68  thf('74', plain,
% 1.53/1.68      (![X0 : $i]:
% 1.53/1.68         ((r1_tarski @ (k10_relat_1 @ (k7_relat_1 @ sk_B @ sk_A) @ X0) @ sk_A)
% 1.53/1.68          | ~ (v1_relat_1 @ (k7_relat_1 @ sk_B @ sk_A)))),
% 1.53/1.68      inference('sup+', [status(thm)], ['72', '73'])).
% 1.53/1.68  thf('75', plain,
% 1.53/1.68      (![X0 : $i]:
% 1.53/1.68         (~ (v1_relat_1 @ sk_B)
% 1.53/1.68          | (r1_tarski @ (k10_relat_1 @ (k7_relat_1 @ sk_B @ sk_A) @ X0) @ sk_A))),
% 1.53/1.68      inference('sup-', [status(thm)], ['7', '74'])).
% 1.53/1.68  thf('76', plain, ((v1_relat_1 @ sk_B)),
% 1.53/1.68      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.53/1.68  thf('77', plain,
% 1.53/1.68      (![X0 : $i]:
% 1.53/1.68         (r1_tarski @ (k10_relat_1 @ (k7_relat_1 @ sk_B @ sk_A) @ X0) @ sk_A)),
% 1.53/1.68      inference('demod', [status(thm)], ['75', '76'])).
% 1.53/1.68  thf('78', plain,
% 1.53/1.68      (![X2 : $i, X4 : $i]:
% 1.53/1.68         (((X2) = (X4)) | ~ (r1_tarski @ X4 @ X2) | ~ (r1_tarski @ X2 @ X4))),
% 1.53/1.68      inference('cnf', [status(esa)], [d10_xboole_0])).
% 1.53/1.68  thf('79', plain,
% 1.53/1.68      (![X0 : $i]:
% 1.53/1.68         (~ (r1_tarski @ sk_A @ (k10_relat_1 @ (k7_relat_1 @ sk_B @ sk_A) @ X0))
% 1.53/1.68          | ((sk_A) = (k10_relat_1 @ (k7_relat_1 @ sk_B @ sk_A) @ X0)))),
% 1.53/1.68      inference('sup-', [status(thm)], ['77', '78'])).
% 1.53/1.68  thf('80', plain,
% 1.53/1.68      ((~ (r1_tarski @ sk_A @ (k1_relat_1 @ (k7_relat_1 @ sk_B @ sk_A)))
% 1.53/1.68        | ~ (v1_relat_1 @ sk_B)
% 1.53/1.68        | ((sk_A)
% 1.53/1.68            = (k10_relat_1 @ (k7_relat_1 @ sk_B @ sk_A) @ 
% 1.53/1.68               (k9_relat_1 @ sk_B @ sk_A))))),
% 1.53/1.68      inference('sup-', [status(thm)], ['6', '79'])).
% 1.53/1.68  thf('81', plain, (((sk_A) = (k1_relat_1 @ (k7_relat_1 @ sk_B @ sk_A)))),
% 1.53/1.68      inference('demod', [status(thm)], ['70', '71'])).
% 1.53/1.68  thf('82', plain, (![X3 : $i]: (r1_tarski @ X3 @ X3)),
% 1.53/1.68      inference('simplify', [status(thm)], ['60'])).
% 1.53/1.68  thf('83', plain, ((v1_relat_1 @ sk_B)),
% 1.53/1.68      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.53/1.68  thf('84', plain,
% 1.53/1.68      (((sk_A)
% 1.53/1.68         = (k10_relat_1 @ (k7_relat_1 @ sk_B @ sk_A) @ 
% 1.53/1.68            (k9_relat_1 @ sk_B @ sk_A)))),
% 1.53/1.68      inference('demod', [status(thm)], ['80', '81', '82', '83'])).
% 1.53/1.68  thf('85', plain,
% 1.53/1.68      ((((sk_A)
% 1.53/1.68          = (k3_xboole_0 @ sk_A @ 
% 1.53/1.68             (k10_relat_1 @ sk_B @ (k9_relat_1 @ sk_B @ sk_A))))
% 1.53/1.68        | ~ (v1_relat_1 @ sk_B))),
% 1.53/1.68      inference('sup+', [status(thm)], ['1', '84'])).
% 1.53/1.68  thf('86', plain, ((v1_relat_1 @ sk_B)),
% 1.53/1.68      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.53/1.68  thf('87', plain,
% 1.53/1.68      (((sk_A)
% 1.53/1.68         = (k3_xboole_0 @ sk_A @ 
% 1.53/1.68            (k10_relat_1 @ sk_B @ (k9_relat_1 @ sk_B @ sk_A))))),
% 1.53/1.68      inference('demod', [status(thm)], ['85', '86'])).
% 1.53/1.68  thf('88', plain,
% 1.53/1.68      (![X0 : $i, X1 : $i]: ((k3_xboole_0 @ X1 @ X0) = (k3_xboole_0 @ X0 @ X1))),
% 1.53/1.68      inference('cnf', [status(esa)], [commutativity_k3_xboole_0])).
% 1.53/1.68  thf('89', plain,
% 1.53/1.68      (![X13 : $i, X14 : $i]: (r1_tarski @ (k3_xboole_0 @ X13 @ X14) @ X13)),
% 1.53/1.68      inference('cnf', [status(esa)], [t17_xboole_1])).
% 1.53/1.68  thf('90', plain,
% 1.53/1.68      (![X0 : $i, X1 : $i]: (r1_tarski @ (k3_xboole_0 @ X1 @ X0) @ X0)),
% 1.53/1.68      inference('sup+', [status(thm)], ['88', '89'])).
% 1.53/1.68  thf('91', plain,
% 1.53/1.68      ((r1_tarski @ sk_A @ (k10_relat_1 @ sk_B @ (k9_relat_1 @ sk_B @ sk_A)))),
% 1.53/1.68      inference('sup+', [status(thm)], ['87', '90'])).
% 1.53/1.68  thf('92', plain, ($false), inference('demod', [status(thm)], ['0', '91'])).
% 1.53/1.68  
% 1.53/1.68  % SZS output end Refutation
% 1.53/1.68  
% 1.53/1.69  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
