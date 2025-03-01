%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.ou3Gwv6W4N

% Computer   : n013.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:46:34 EST 2020

% Result     : Theorem 0.75s
% Output     : Refutation 0.75s
% Verified   : 
% Statistics : Number of formulae       :   67 ( 114 expanded)
%              Number of leaves         :   21 (  43 expanded)
%              Depth                    :   18
%              Number of atoms          :  628 (1143 expanded)
%              Number of equality atoms :   17 (  36 expanded)
%              Maximal formula depth    :   14 (   8 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k7_relat_1_type,type,(
    k7_relat_1: $i > $i > $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(k9_relat_1_type,type,(
    k9_relat_1: $i > $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k10_relat_1_type,type,(
    k10_relat_1: $i > $i > $i )).

thf(v1_funct_1_type,type,(
    v1_funct_1: $i > $o )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(k3_xboole_0_type,type,(
    k3_xboole_0: $i > $i > $i )).

thf(k1_relat_1_type,type,(
    k1_relat_1: $i > $i )).

thf(k2_relat_1_type,type,(
    k2_relat_1: $i > $i )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(commutativity_k3_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( k3_xboole_0 @ A @ B )
      = ( k3_xboole_0 @ B @ A ) ) )).

thf('0',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k3_xboole_0 @ X1 @ X0 )
      = ( k3_xboole_0 @ X0 @ X1 ) ) ),
    inference(cnf,[status(esa)],[commutativity_k3_xboole_0])).

thf('1',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k3_xboole_0 @ X1 @ X0 )
      = ( k3_xboole_0 @ X0 @ X1 ) ) ),
    inference(cnf,[status(esa)],[commutativity_k3_xboole_0])).

thf(t148_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( ( k2_relat_1 @ ( k7_relat_1 @ B @ A ) )
        = ( k9_relat_1 @ B @ A ) ) ) )).

thf('2',plain,(
    ! [X15: $i,X16: $i] :
      ( ( ( k2_relat_1 @ ( k7_relat_1 @ X15 @ X16 ) )
        = ( k9_relat_1 @ X15 @ X16 ) )
      | ~ ( v1_relat_1 @ X15 ) ) ),
    inference(cnf,[status(esa)],[t148_relat_1])).

thf(t144_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( r1_tarski @ ( k9_relat_1 @ B @ A ) @ ( k2_relat_1 @ B ) ) ) )).

thf('3',plain,(
    ! [X13: $i,X14: $i] :
      ( ( r1_tarski @ ( k9_relat_1 @ X13 @ X14 ) @ ( k2_relat_1 @ X13 ) )
      | ~ ( v1_relat_1 @ X13 ) ) ),
    inference(cnf,[status(esa)],[t144_relat_1])).

thf('4',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( r1_tarski @ ( k9_relat_1 @ ( k7_relat_1 @ X1 @ X0 ) @ X2 ) @ ( k9_relat_1 @ X1 @ X0 ) )
      | ~ ( v1_relat_1 @ X1 )
      | ~ ( v1_relat_1 @ ( k7_relat_1 @ X1 @ X0 ) ) ) ),
    inference('sup+',[status(thm)],['2','3'])).

thf(dt_k7_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ A )
     => ( v1_relat_1 @ ( k7_relat_1 @ A @ B ) ) ) )).

thf('5',plain,(
    ! [X8: $i,X9: $i] :
      ( ~ ( v1_relat_1 @ X8 )
      | ( v1_relat_1 @ ( k7_relat_1 @ X8 @ X9 ) ) ) ),
    inference(cnf,[status(esa)],[dt_k7_relat_1])).

thf('6',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( v1_relat_1 @ X1 )
      | ( r1_tarski @ ( k9_relat_1 @ ( k7_relat_1 @ X1 @ X0 ) @ X2 ) @ ( k9_relat_1 @ X1 @ X0 ) ) ) ),
    inference(clc,[status(thm)],['4','5'])).

thf(t100_relat_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( v1_relat_1 @ C )
     => ( ( k7_relat_1 @ ( k7_relat_1 @ C @ A ) @ B )
        = ( k7_relat_1 @ C @ ( k3_xboole_0 @ A @ B ) ) ) ) )).

thf('7',plain,(
    ! [X10: $i,X11: $i,X12: $i] :
      ( ( ( k7_relat_1 @ ( k7_relat_1 @ X10 @ X11 ) @ X12 )
        = ( k7_relat_1 @ X10 @ ( k3_xboole_0 @ X11 @ X12 ) ) )
      | ~ ( v1_relat_1 @ X10 ) ) ),
    inference(cnf,[status(esa)],[t100_relat_1])).

thf('8',plain,(
    ! [X15: $i,X16: $i] :
      ( ( ( k2_relat_1 @ ( k7_relat_1 @ X15 @ X16 ) )
        = ( k9_relat_1 @ X15 @ X16 ) )
      | ~ ( v1_relat_1 @ X15 ) ) ),
    inference(cnf,[status(esa)],[t148_relat_1])).

thf('9',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( ( k2_relat_1 @ ( k7_relat_1 @ ( k7_relat_1 @ X2 @ X1 ) @ X0 ) )
        = ( k9_relat_1 @ X2 @ ( k3_xboole_0 @ X1 @ X0 ) ) )
      | ~ ( v1_relat_1 @ X2 )
      | ~ ( v1_relat_1 @ X2 ) ) ),
    inference('sup+',[status(thm)],['7','8'])).

thf('10',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( v1_relat_1 @ X2 )
      | ( ( k2_relat_1 @ ( k7_relat_1 @ ( k7_relat_1 @ X2 @ X1 ) @ X0 ) )
        = ( k9_relat_1 @ X2 @ ( k3_xboole_0 @ X1 @ X0 ) ) ) ) ),
    inference(simplify,[status(thm)],['9'])).

thf('11',plain,(
    ! [X15: $i,X16: $i] :
      ( ( ( k2_relat_1 @ ( k7_relat_1 @ X15 @ X16 ) )
        = ( k9_relat_1 @ X15 @ X16 ) )
      | ~ ( v1_relat_1 @ X15 ) ) ),
    inference(cnf,[status(esa)],[t148_relat_1])).

thf('12',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( ( k9_relat_1 @ X2 @ ( k3_xboole_0 @ X1 @ X0 ) )
        = ( k9_relat_1 @ ( k7_relat_1 @ X2 @ X1 ) @ X0 ) )
      | ~ ( v1_relat_1 @ X2 )
      | ~ ( v1_relat_1 @ ( k7_relat_1 @ X2 @ X1 ) ) ) ),
    inference('sup+',[status(thm)],['10','11'])).

thf('13',plain,(
    ! [X8: $i,X9: $i] :
      ( ~ ( v1_relat_1 @ X8 )
      | ( v1_relat_1 @ ( k7_relat_1 @ X8 @ X9 ) ) ) ),
    inference(cnf,[status(esa)],[dt_k7_relat_1])).

thf('14',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( v1_relat_1 @ X2 )
      | ( ( k9_relat_1 @ X2 @ ( k3_xboole_0 @ X1 @ X0 ) )
        = ( k9_relat_1 @ ( k7_relat_1 @ X2 @ X1 ) @ X0 ) ) ) ),
    inference(clc,[status(thm)],['12','13'])).

thf('15',plain,(
    ! [X13: $i,X14: $i] :
      ( ( r1_tarski @ ( k9_relat_1 @ X13 @ X14 ) @ ( k2_relat_1 @ X13 ) )
      | ~ ( v1_relat_1 @ X13 ) ) ),
    inference(cnf,[status(esa)],[t144_relat_1])).

thf(t19_xboole_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( r1_tarski @ A @ B )
        & ( r1_tarski @ A @ C ) )
     => ( r1_tarski @ A @ ( k3_xboole_0 @ B @ C ) ) ) )).

thf('16',plain,(
    ! [X5: $i,X6: $i,X7: $i] :
      ( ~ ( r1_tarski @ X5 @ X6 )
      | ~ ( r1_tarski @ X5 @ X7 )
      | ( r1_tarski @ X5 @ ( k3_xboole_0 @ X6 @ X7 ) ) ) ),
    inference(cnf,[status(esa)],[t19_xboole_1])).

thf('17',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( v1_relat_1 @ X0 )
      | ( r1_tarski @ ( k9_relat_1 @ X0 @ X1 ) @ ( k3_xboole_0 @ ( k2_relat_1 @ X0 ) @ X2 ) )
      | ~ ( r1_tarski @ ( k9_relat_1 @ X0 @ X1 ) @ X2 ) ) ),
    inference('sup-',[status(thm)],['15','16'])).

thf('18',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i] :
      ( ~ ( r1_tarski @ ( k9_relat_1 @ ( k7_relat_1 @ X2 @ X1 ) @ X0 ) @ X3 )
      | ~ ( v1_relat_1 @ X2 )
      | ( r1_tarski @ ( k9_relat_1 @ X2 @ ( k3_xboole_0 @ X1 @ X0 ) ) @ ( k3_xboole_0 @ ( k2_relat_1 @ X2 ) @ X3 ) )
      | ~ ( v1_relat_1 @ X2 ) ) ),
    inference('sup-',[status(thm)],['14','17'])).

thf('19',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i] :
      ( ( r1_tarski @ ( k9_relat_1 @ X2 @ ( k3_xboole_0 @ X1 @ X0 ) ) @ ( k3_xboole_0 @ ( k2_relat_1 @ X2 ) @ X3 ) )
      | ~ ( v1_relat_1 @ X2 )
      | ~ ( r1_tarski @ ( k9_relat_1 @ ( k7_relat_1 @ X2 @ X1 ) @ X0 ) @ X3 ) ) ),
    inference(simplify,[status(thm)],['18'])).

thf('20',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( v1_relat_1 @ X1 )
      | ~ ( v1_relat_1 @ X1 )
      | ( r1_tarski @ ( k9_relat_1 @ X1 @ ( k3_xboole_0 @ X0 @ X2 ) ) @ ( k3_xboole_0 @ ( k2_relat_1 @ X1 ) @ ( k9_relat_1 @ X1 @ X0 ) ) ) ) ),
    inference('sup-',[status(thm)],['6','19'])).

thf('21',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( r1_tarski @ ( k9_relat_1 @ X1 @ ( k3_xboole_0 @ X0 @ X2 ) ) @ ( k3_xboole_0 @ ( k2_relat_1 @ X1 ) @ ( k9_relat_1 @ X1 @ X0 ) ) )
      | ~ ( v1_relat_1 @ X1 ) ) ),
    inference(simplify,[status(thm)],['20'])).

thf('22',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k3_xboole_0 @ X1 @ X0 )
      = ( k3_xboole_0 @ X0 @ X1 ) ) ),
    inference(cnf,[status(esa)],[commutativity_k3_xboole_0])).

thf(t18_xboole_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( r1_tarski @ A @ ( k3_xboole_0 @ B @ C ) )
     => ( r1_tarski @ A @ B ) ) )).

thf('23',plain,(
    ! [X2: $i,X3: $i,X4: $i] :
      ( ( r1_tarski @ X2 @ X3 )
      | ~ ( r1_tarski @ X2 @ ( k3_xboole_0 @ X3 @ X4 ) ) ) ),
    inference(cnf,[status(esa)],[t18_xboole_1])).

thf('24',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( r1_tarski @ X2 @ ( k3_xboole_0 @ X1 @ X0 ) )
      | ( r1_tarski @ X2 @ X0 ) ) ),
    inference('sup-',[status(thm)],['22','23'])).

thf('25',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( v1_relat_1 @ X1 )
      | ( r1_tarski @ ( k9_relat_1 @ X1 @ ( k3_xboole_0 @ X0 @ X2 ) ) @ ( k9_relat_1 @ X1 @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['21','24'])).

thf('26',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( r1_tarski @ ( k9_relat_1 @ X2 @ ( k3_xboole_0 @ X1 @ X0 ) ) @ ( k9_relat_1 @ X2 @ X0 ) )
      | ~ ( v1_relat_1 @ X2 ) ) ),
    inference('sup+',[status(thm)],['1','25'])).

thf(t148_funct_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( v1_relat_1 @ B )
        & ( v1_funct_1 @ B ) )
     => ( ( k9_relat_1 @ B @ ( k10_relat_1 @ B @ A ) )
        = ( k3_xboole_0 @ A @ ( k9_relat_1 @ B @ ( k1_relat_1 @ B ) ) ) ) ) )).

thf('27',plain,(
    ! [X17: $i,X18: $i] :
      ( ( ( k9_relat_1 @ X18 @ ( k10_relat_1 @ X18 @ X17 ) )
        = ( k3_xboole_0 @ X17 @ ( k9_relat_1 @ X18 @ ( k1_relat_1 @ X18 ) ) ) )
      | ~ ( v1_funct_1 @ X18 )
      | ~ ( v1_relat_1 @ X18 ) ) ),
    inference(cnf,[status(esa)],[t148_funct_1])).

thf('28',plain,(
    ! [X2: $i,X3: $i,X4: $i] :
      ( ( r1_tarski @ X2 @ X3 )
      | ~ ( r1_tarski @ X2 @ ( k3_xboole_0 @ X3 @ X4 ) ) ) ),
    inference(cnf,[status(esa)],[t18_xboole_1])).

thf('29',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( r1_tarski @ X2 @ ( k9_relat_1 @ X1 @ ( k10_relat_1 @ X1 @ X0 ) ) )
      | ~ ( v1_relat_1 @ X1 )
      | ~ ( v1_funct_1 @ X1 )
      | ( r1_tarski @ X2 @ X0 ) ) ),
    inference('sup-',[status(thm)],['27','28'])).

thf('30',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( v1_relat_1 @ X1 )
      | ( r1_tarski @ ( k9_relat_1 @ X1 @ ( k3_xboole_0 @ X2 @ ( k10_relat_1 @ X1 @ X0 ) ) ) @ X0 )
      | ~ ( v1_funct_1 @ X1 )
      | ~ ( v1_relat_1 @ X1 ) ) ),
    inference('sup-',[status(thm)],['26','29'])).

thf('31',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( v1_funct_1 @ X1 )
      | ( r1_tarski @ ( k9_relat_1 @ X1 @ ( k3_xboole_0 @ X2 @ ( k10_relat_1 @ X1 @ X0 ) ) ) @ X0 )
      | ~ ( v1_relat_1 @ X1 ) ) ),
    inference(simplify,[status(thm)],['30'])).

thf('32',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( v1_relat_1 @ X1 )
      | ( r1_tarski @ ( k9_relat_1 @ X1 @ ( k3_xboole_0 @ X0 @ X2 ) ) @ ( k9_relat_1 @ X1 @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['21','24'])).

thf('33',plain,(
    ! [X5: $i,X6: $i,X7: $i] :
      ( ~ ( r1_tarski @ X5 @ X6 )
      | ~ ( r1_tarski @ X5 @ X7 )
      | ( r1_tarski @ X5 @ ( k3_xboole_0 @ X6 @ X7 ) ) ) ),
    inference(cnf,[status(esa)],[t19_xboole_1])).

thf('34',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i] :
      ( ~ ( v1_relat_1 @ X1 )
      | ( r1_tarski @ ( k9_relat_1 @ X1 @ ( k3_xboole_0 @ X0 @ X2 ) ) @ ( k3_xboole_0 @ ( k9_relat_1 @ X1 @ X0 ) @ X3 ) )
      | ~ ( r1_tarski @ ( k9_relat_1 @ X1 @ ( k3_xboole_0 @ X0 @ X2 ) ) @ X3 ) ) ),
    inference('sup-',[status(thm)],['32','33'])).

thf('35',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( v1_relat_1 @ X1 )
      | ~ ( v1_funct_1 @ X1 )
      | ( r1_tarski @ ( k9_relat_1 @ X1 @ ( k3_xboole_0 @ X2 @ ( k10_relat_1 @ X1 @ X0 ) ) ) @ ( k3_xboole_0 @ ( k9_relat_1 @ X1 @ X2 ) @ X0 ) )
      | ~ ( v1_relat_1 @ X1 ) ) ),
    inference('sup-',[status(thm)],['31','34'])).

thf('36',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( r1_tarski @ ( k9_relat_1 @ X1 @ ( k3_xboole_0 @ X2 @ ( k10_relat_1 @ X1 @ X0 ) ) ) @ ( k3_xboole_0 @ ( k9_relat_1 @ X1 @ X2 ) @ X0 ) )
      | ~ ( v1_funct_1 @ X1 )
      | ~ ( v1_relat_1 @ X1 ) ) ),
    inference(simplify,[status(thm)],['35'])).

thf('37',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( r1_tarski @ ( k9_relat_1 @ X1 @ ( k3_xboole_0 @ X0 @ ( k10_relat_1 @ X1 @ X2 ) ) ) @ ( k3_xboole_0 @ X2 @ ( k9_relat_1 @ X1 @ X0 ) ) )
      | ~ ( v1_relat_1 @ X1 )
      | ~ ( v1_funct_1 @ X1 ) ) ),
    inference('sup+',[status(thm)],['0','36'])).

thf(t149_funct_1,conjecture,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( v1_relat_1 @ C )
        & ( v1_funct_1 @ C ) )
     => ( r1_tarski @ ( k9_relat_1 @ C @ ( k3_xboole_0 @ A @ ( k10_relat_1 @ C @ B ) ) ) @ ( k3_xboole_0 @ ( k9_relat_1 @ C @ A ) @ B ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i] :
        ( ( ( v1_relat_1 @ C )
          & ( v1_funct_1 @ C ) )
       => ( r1_tarski @ ( k9_relat_1 @ C @ ( k3_xboole_0 @ A @ ( k10_relat_1 @ C @ B ) ) ) @ ( k3_xboole_0 @ ( k9_relat_1 @ C @ A ) @ B ) ) ) ),
    inference('cnf.neg',[status(esa)],[t149_funct_1])).

thf('38',plain,(
    ~ ( r1_tarski @ ( k9_relat_1 @ sk_C @ ( k3_xboole_0 @ sk_A @ ( k10_relat_1 @ sk_C @ sk_B ) ) ) @ ( k3_xboole_0 @ ( k9_relat_1 @ sk_C @ sk_A ) @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('39',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k3_xboole_0 @ X1 @ X0 )
      = ( k3_xboole_0 @ X0 @ X1 ) ) ),
    inference(cnf,[status(esa)],[commutativity_k3_xboole_0])).

thf('40',plain,(
    ~ ( r1_tarski @ ( k9_relat_1 @ sk_C @ ( k3_xboole_0 @ sk_A @ ( k10_relat_1 @ sk_C @ sk_B ) ) ) @ ( k3_xboole_0 @ sk_B @ ( k9_relat_1 @ sk_C @ sk_A ) ) ) ),
    inference(demod,[status(thm)],['38','39'])).

thf('41',plain,
    ( ~ ( v1_funct_1 @ sk_C )
    | ~ ( v1_relat_1 @ sk_C ) ),
    inference('sup-',[status(thm)],['37','40'])).

thf('42',plain,(
    v1_funct_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('43',plain,(
    v1_relat_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('44',plain,(
    $false ),
    inference(demod,[status(thm)],['41','42','43'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.14  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.ou3Gwv6W4N
% 0.14/0.34  % Computer   : n013.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % DateTime   : Tue Dec  1 20:05:10 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.35  % Running portfolio for 600 s
% 0.14/0.35  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.14/0.35  % Number of cores: 8
% 0.14/0.35  % Python version: Python 3.6.8
% 0.14/0.35  % Running in FO mode
% 0.75/0.97  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.75/0.97  % Solved by: fo/fo7.sh
% 0.75/0.97  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.75/0.97  % done 436 iterations in 0.519s
% 0.75/0.97  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.75/0.97  % SZS output start Refutation
% 0.75/0.97  thf(k7_relat_1_type, type, k7_relat_1: $i > $i > $i).
% 0.75/0.97  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.75/0.97  thf(k9_relat_1_type, type, k9_relat_1: $i > $i > $i).
% 0.75/0.97  thf(sk_A_type, type, sk_A: $i).
% 0.75/0.97  thf(k10_relat_1_type, type, k10_relat_1: $i > $i > $i).
% 0.75/0.97  thf(v1_funct_1_type, type, v1_funct_1: $i > $o).
% 0.75/0.97  thf(sk_B_type, type, sk_B: $i).
% 0.75/0.97  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.75/0.97  thf(k3_xboole_0_type, type, k3_xboole_0: $i > $i > $i).
% 0.75/0.97  thf(k1_relat_1_type, type, k1_relat_1: $i > $i).
% 0.75/0.97  thf(k2_relat_1_type, type, k2_relat_1: $i > $i).
% 0.75/0.97  thf(sk_C_type, type, sk_C: $i).
% 0.75/0.97  thf(commutativity_k3_xboole_0, axiom,
% 0.75/0.97    (![A:$i,B:$i]: ( ( k3_xboole_0 @ A @ B ) = ( k3_xboole_0 @ B @ A ) ))).
% 0.75/0.97  thf('0', plain,
% 0.75/0.97      (![X0 : $i, X1 : $i]: ((k3_xboole_0 @ X1 @ X0) = (k3_xboole_0 @ X0 @ X1))),
% 0.75/0.97      inference('cnf', [status(esa)], [commutativity_k3_xboole_0])).
% 0.75/0.97  thf('1', plain,
% 0.75/0.97      (![X0 : $i, X1 : $i]: ((k3_xboole_0 @ X1 @ X0) = (k3_xboole_0 @ X0 @ X1))),
% 0.75/0.97      inference('cnf', [status(esa)], [commutativity_k3_xboole_0])).
% 0.75/0.97  thf(t148_relat_1, axiom,
% 0.75/0.97    (![A:$i,B:$i]:
% 0.75/0.97     ( ( v1_relat_1 @ B ) =>
% 0.75/0.97       ( ( k2_relat_1 @ ( k7_relat_1 @ B @ A ) ) = ( k9_relat_1 @ B @ A ) ) ))).
% 0.75/0.97  thf('2', plain,
% 0.75/0.97      (![X15 : $i, X16 : $i]:
% 0.75/0.97         (((k2_relat_1 @ (k7_relat_1 @ X15 @ X16)) = (k9_relat_1 @ X15 @ X16))
% 0.75/0.97          | ~ (v1_relat_1 @ X15))),
% 0.75/0.97      inference('cnf', [status(esa)], [t148_relat_1])).
% 0.75/0.97  thf(t144_relat_1, axiom,
% 0.75/0.97    (![A:$i,B:$i]:
% 0.75/0.97     ( ( v1_relat_1 @ B ) =>
% 0.75/0.97       ( r1_tarski @ ( k9_relat_1 @ B @ A ) @ ( k2_relat_1 @ B ) ) ))).
% 0.75/0.97  thf('3', plain,
% 0.75/0.97      (![X13 : $i, X14 : $i]:
% 0.75/0.97         ((r1_tarski @ (k9_relat_1 @ X13 @ X14) @ (k2_relat_1 @ X13))
% 0.75/0.97          | ~ (v1_relat_1 @ X13))),
% 0.75/0.97      inference('cnf', [status(esa)], [t144_relat_1])).
% 0.75/0.97  thf('4', plain,
% 0.75/0.97      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.75/0.97         ((r1_tarski @ (k9_relat_1 @ (k7_relat_1 @ X1 @ X0) @ X2) @ 
% 0.75/0.97           (k9_relat_1 @ X1 @ X0))
% 0.75/0.97          | ~ (v1_relat_1 @ X1)
% 0.75/0.97          | ~ (v1_relat_1 @ (k7_relat_1 @ X1 @ X0)))),
% 0.75/0.97      inference('sup+', [status(thm)], ['2', '3'])).
% 0.75/0.97  thf(dt_k7_relat_1, axiom,
% 0.75/0.97    (![A:$i,B:$i]:
% 0.75/0.97     ( ( v1_relat_1 @ A ) => ( v1_relat_1 @ ( k7_relat_1 @ A @ B ) ) ))).
% 0.75/0.97  thf('5', plain,
% 0.75/0.97      (![X8 : $i, X9 : $i]:
% 0.75/0.97         (~ (v1_relat_1 @ X8) | (v1_relat_1 @ (k7_relat_1 @ X8 @ X9)))),
% 0.75/0.97      inference('cnf', [status(esa)], [dt_k7_relat_1])).
% 0.75/0.97  thf('6', plain,
% 0.75/0.97      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.75/0.97         (~ (v1_relat_1 @ X1)
% 0.75/0.97          | (r1_tarski @ (k9_relat_1 @ (k7_relat_1 @ X1 @ X0) @ X2) @ 
% 0.75/0.97             (k9_relat_1 @ X1 @ X0)))),
% 0.75/0.97      inference('clc', [status(thm)], ['4', '5'])).
% 0.75/0.97  thf(t100_relat_1, axiom,
% 0.75/0.97    (![A:$i,B:$i,C:$i]:
% 0.75/0.97     ( ( v1_relat_1 @ C ) =>
% 0.75/0.97       ( ( k7_relat_1 @ ( k7_relat_1 @ C @ A ) @ B ) =
% 0.75/0.97         ( k7_relat_1 @ C @ ( k3_xboole_0 @ A @ B ) ) ) ))).
% 0.75/0.97  thf('7', plain,
% 0.75/0.97      (![X10 : $i, X11 : $i, X12 : $i]:
% 0.75/0.97         (((k7_relat_1 @ (k7_relat_1 @ X10 @ X11) @ X12)
% 0.75/0.97            = (k7_relat_1 @ X10 @ (k3_xboole_0 @ X11 @ X12)))
% 0.75/0.97          | ~ (v1_relat_1 @ X10))),
% 0.75/0.97      inference('cnf', [status(esa)], [t100_relat_1])).
% 0.75/0.97  thf('8', plain,
% 0.75/0.97      (![X15 : $i, X16 : $i]:
% 0.75/0.97         (((k2_relat_1 @ (k7_relat_1 @ X15 @ X16)) = (k9_relat_1 @ X15 @ X16))
% 0.75/0.97          | ~ (v1_relat_1 @ X15))),
% 0.75/0.97      inference('cnf', [status(esa)], [t148_relat_1])).
% 0.75/0.97  thf('9', plain,
% 0.75/0.97      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.75/0.97         (((k2_relat_1 @ (k7_relat_1 @ (k7_relat_1 @ X2 @ X1) @ X0))
% 0.75/0.97            = (k9_relat_1 @ X2 @ (k3_xboole_0 @ X1 @ X0)))
% 0.75/0.97          | ~ (v1_relat_1 @ X2)
% 0.75/0.97          | ~ (v1_relat_1 @ X2))),
% 0.75/0.97      inference('sup+', [status(thm)], ['7', '8'])).
% 0.75/0.97  thf('10', plain,
% 0.75/0.97      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.75/0.97         (~ (v1_relat_1 @ X2)
% 0.75/0.97          | ((k2_relat_1 @ (k7_relat_1 @ (k7_relat_1 @ X2 @ X1) @ X0))
% 0.75/0.97              = (k9_relat_1 @ X2 @ (k3_xboole_0 @ X1 @ X0))))),
% 0.75/0.97      inference('simplify', [status(thm)], ['9'])).
% 0.75/0.97  thf('11', plain,
% 0.75/0.97      (![X15 : $i, X16 : $i]:
% 0.75/0.97         (((k2_relat_1 @ (k7_relat_1 @ X15 @ X16)) = (k9_relat_1 @ X15 @ X16))
% 0.75/0.97          | ~ (v1_relat_1 @ X15))),
% 0.75/0.97      inference('cnf', [status(esa)], [t148_relat_1])).
% 0.75/0.97  thf('12', plain,
% 0.75/0.97      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.75/0.97         (((k9_relat_1 @ X2 @ (k3_xboole_0 @ X1 @ X0))
% 0.75/0.97            = (k9_relat_1 @ (k7_relat_1 @ X2 @ X1) @ X0))
% 0.75/0.97          | ~ (v1_relat_1 @ X2)
% 0.75/0.97          | ~ (v1_relat_1 @ (k7_relat_1 @ X2 @ X1)))),
% 0.75/0.97      inference('sup+', [status(thm)], ['10', '11'])).
% 0.75/0.97  thf('13', plain,
% 0.75/0.97      (![X8 : $i, X9 : $i]:
% 0.75/0.97         (~ (v1_relat_1 @ X8) | (v1_relat_1 @ (k7_relat_1 @ X8 @ X9)))),
% 0.75/0.97      inference('cnf', [status(esa)], [dt_k7_relat_1])).
% 0.75/0.97  thf('14', plain,
% 0.75/0.97      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.75/0.97         (~ (v1_relat_1 @ X2)
% 0.75/0.97          | ((k9_relat_1 @ X2 @ (k3_xboole_0 @ X1 @ X0))
% 0.75/0.97              = (k9_relat_1 @ (k7_relat_1 @ X2 @ X1) @ X0)))),
% 0.75/0.97      inference('clc', [status(thm)], ['12', '13'])).
% 0.75/0.97  thf('15', plain,
% 0.75/0.97      (![X13 : $i, X14 : $i]:
% 0.75/0.97         ((r1_tarski @ (k9_relat_1 @ X13 @ X14) @ (k2_relat_1 @ X13))
% 0.75/0.97          | ~ (v1_relat_1 @ X13))),
% 0.75/0.97      inference('cnf', [status(esa)], [t144_relat_1])).
% 0.75/0.97  thf(t19_xboole_1, axiom,
% 0.75/0.97    (![A:$i,B:$i,C:$i]:
% 0.75/0.97     ( ( ( r1_tarski @ A @ B ) & ( r1_tarski @ A @ C ) ) =>
% 0.75/0.97       ( r1_tarski @ A @ ( k3_xboole_0 @ B @ C ) ) ))).
% 0.75/0.97  thf('16', plain,
% 0.75/0.97      (![X5 : $i, X6 : $i, X7 : $i]:
% 0.75/0.97         (~ (r1_tarski @ X5 @ X6)
% 0.75/0.97          | ~ (r1_tarski @ X5 @ X7)
% 0.75/0.97          | (r1_tarski @ X5 @ (k3_xboole_0 @ X6 @ X7)))),
% 0.75/0.97      inference('cnf', [status(esa)], [t19_xboole_1])).
% 0.75/0.97  thf('17', plain,
% 0.75/0.97      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.75/0.97         (~ (v1_relat_1 @ X0)
% 0.75/0.97          | (r1_tarski @ (k9_relat_1 @ X0 @ X1) @ 
% 0.75/0.97             (k3_xboole_0 @ (k2_relat_1 @ X0) @ X2))
% 0.75/0.97          | ~ (r1_tarski @ (k9_relat_1 @ X0 @ X1) @ X2))),
% 0.75/0.97      inference('sup-', [status(thm)], ['15', '16'])).
% 0.75/0.97  thf('18', plain,
% 0.75/0.97      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 0.75/0.97         (~ (r1_tarski @ (k9_relat_1 @ (k7_relat_1 @ X2 @ X1) @ X0) @ X3)
% 0.75/0.97          | ~ (v1_relat_1 @ X2)
% 0.75/0.97          | (r1_tarski @ (k9_relat_1 @ X2 @ (k3_xboole_0 @ X1 @ X0)) @ 
% 0.75/0.97             (k3_xboole_0 @ (k2_relat_1 @ X2) @ X3))
% 0.75/0.97          | ~ (v1_relat_1 @ X2))),
% 0.75/0.97      inference('sup-', [status(thm)], ['14', '17'])).
% 0.75/0.97  thf('19', plain,
% 0.75/0.97      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 0.75/0.97         ((r1_tarski @ (k9_relat_1 @ X2 @ (k3_xboole_0 @ X1 @ X0)) @ 
% 0.75/0.97           (k3_xboole_0 @ (k2_relat_1 @ X2) @ X3))
% 0.75/0.97          | ~ (v1_relat_1 @ X2)
% 0.75/0.97          | ~ (r1_tarski @ (k9_relat_1 @ (k7_relat_1 @ X2 @ X1) @ X0) @ X3))),
% 0.75/0.97      inference('simplify', [status(thm)], ['18'])).
% 0.75/0.97  thf('20', plain,
% 0.75/0.97      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.75/0.97         (~ (v1_relat_1 @ X1)
% 0.75/0.97          | ~ (v1_relat_1 @ X1)
% 0.75/0.97          | (r1_tarski @ (k9_relat_1 @ X1 @ (k3_xboole_0 @ X0 @ X2)) @ 
% 0.75/0.97             (k3_xboole_0 @ (k2_relat_1 @ X1) @ (k9_relat_1 @ X1 @ X0))))),
% 0.75/0.97      inference('sup-', [status(thm)], ['6', '19'])).
% 0.75/0.97  thf('21', plain,
% 0.75/0.97      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.75/0.97         ((r1_tarski @ (k9_relat_1 @ X1 @ (k3_xboole_0 @ X0 @ X2)) @ 
% 0.75/0.97           (k3_xboole_0 @ (k2_relat_1 @ X1) @ (k9_relat_1 @ X1 @ X0)))
% 0.75/0.97          | ~ (v1_relat_1 @ X1))),
% 0.75/0.97      inference('simplify', [status(thm)], ['20'])).
% 0.75/0.97  thf('22', plain,
% 0.75/0.97      (![X0 : $i, X1 : $i]: ((k3_xboole_0 @ X1 @ X0) = (k3_xboole_0 @ X0 @ X1))),
% 0.75/0.97      inference('cnf', [status(esa)], [commutativity_k3_xboole_0])).
% 0.75/0.97  thf(t18_xboole_1, axiom,
% 0.75/0.97    (![A:$i,B:$i,C:$i]:
% 0.75/0.97     ( ( r1_tarski @ A @ ( k3_xboole_0 @ B @ C ) ) => ( r1_tarski @ A @ B ) ))).
% 0.75/0.97  thf('23', plain,
% 0.75/0.97      (![X2 : $i, X3 : $i, X4 : $i]:
% 0.75/0.97         ((r1_tarski @ X2 @ X3) | ~ (r1_tarski @ X2 @ (k3_xboole_0 @ X3 @ X4)))),
% 0.75/0.97      inference('cnf', [status(esa)], [t18_xboole_1])).
% 0.75/0.97  thf('24', plain,
% 0.75/0.97      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.75/0.97         (~ (r1_tarski @ X2 @ (k3_xboole_0 @ X1 @ X0)) | (r1_tarski @ X2 @ X0))),
% 0.75/0.97      inference('sup-', [status(thm)], ['22', '23'])).
% 0.75/0.97  thf('25', plain,
% 0.75/0.97      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.75/0.97         (~ (v1_relat_1 @ X1)
% 0.75/0.97          | (r1_tarski @ (k9_relat_1 @ X1 @ (k3_xboole_0 @ X0 @ X2)) @ 
% 0.75/0.97             (k9_relat_1 @ X1 @ X0)))),
% 0.75/0.97      inference('sup-', [status(thm)], ['21', '24'])).
% 0.75/0.97  thf('26', plain,
% 0.75/0.97      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.75/0.97         ((r1_tarski @ (k9_relat_1 @ X2 @ (k3_xboole_0 @ X1 @ X0)) @ 
% 0.75/0.97           (k9_relat_1 @ X2 @ X0))
% 0.75/0.97          | ~ (v1_relat_1 @ X2))),
% 0.75/0.97      inference('sup+', [status(thm)], ['1', '25'])).
% 0.75/0.97  thf(t148_funct_1, axiom,
% 0.75/0.97    (![A:$i,B:$i]:
% 0.75/0.97     ( ( ( v1_relat_1 @ B ) & ( v1_funct_1 @ B ) ) =>
% 0.75/0.97       ( ( k9_relat_1 @ B @ ( k10_relat_1 @ B @ A ) ) =
% 0.75/0.97         ( k3_xboole_0 @ A @ ( k9_relat_1 @ B @ ( k1_relat_1 @ B ) ) ) ) ))).
% 0.75/0.97  thf('27', plain,
% 0.75/0.97      (![X17 : $i, X18 : $i]:
% 0.75/0.97         (((k9_relat_1 @ X18 @ (k10_relat_1 @ X18 @ X17))
% 0.75/0.97            = (k3_xboole_0 @ X17 @ (k9_relat_1 @ X18 @ (k1_relat_1 @ X18))))
% 0.75/0.97          | ~ (v1_funct_1 @ X18)
% 0.75/0.97          | ~ (v1_relat_1 @ X18))),
% 0.75/0.97      inference('cnf', [status(esa)], [t148_funct_1])).
% 0.75/0.97  thf('28', plain,
% 0.75/0.97      (![X2 : $i, X3 : $i, X4 : $i]:
% 0.75/0.97         ((r1_tarski @ X2 @ X3) | ~ (r1_tarski @ X2 @ (k3_xboole_0 @ X3 @ X4)))),
% 0.75/0.97      inference('cnf', [status(esa)], [t18_xboole_1])).
% 0.75/0.97  thf('29', plain,
% 0.75/0.97      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.75/0.97         (~ (r1_tarski @ X2 @ (k9_relat_1 @ X1 @ (k10_relat_1 @ X1 @ X0)))
% 0.75/0.97          | ~ (v1_relat_1 @ X1)
% 0.75/0.97          | ~ (v1_funct_1 @ X1)
% 0.75/0.97          | (r1_tarski @ X2 @ X0))),
% 0.75/0.97      inference('sup-', [status(thm)], ['27', '28'])).
% 0.75/0.98  thf('30', plain,
% 0.75/0.98      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.75/0.98         (~ (v1_relat_1 @ X1)
% 0.75/0.98          | (r1_tarski @ 
% 0.75/0.98             (k9_relat_1 @ X1 @ (k3_xboole_0 @ X2 @ (k10_relat_1 @ X1 @ X0))) @ 
% 0.75/0.98             X0)
% 0.75/0.98          | ~ (v1_funct_1 @ X1)
% 0.75/0.98          | ~ (v1_relat_1 @ X1))),
% 0.75/0.98      inference('sup-', [status(thm)], ['26', '29'])).
% 0.75/0.98  thf('31', plain,
% 0.75/0.98      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.75/0.98         (~ (v1_funct_1 @ X1)
% 0.75/0.98          | (r1_tarski @ 
% 0.75/0.98             (k9_relat_1 @ X1 @ (k3_xboole_0 @ X2 @ (k10_relat_1 @ X1 @ X0))) @ 
% 0.75/0.98             X0)
% 0.75/0.98          | ~ (v1_relat_1 @ X1))),
% 0.75/0.98      inference('simplify', [status(thm)], ['30'])).
% 0.75/0.98  thf('32', plain,
% 0.75/0.98      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.75/0.98         (~ (v1_relat_1 @ X1)
% 0.75/0.98          | (r1_tarski @ (k9_relat_1 @ X1 @ (k3_xboole_0 @ X0 @ X2)) @ 
% 0.75/0.98             (k9_relat_1 @ X1 @ X0)))),
% 0.75/0.98      inference('sup-', [status(thm)], ['21', '24'])).
% 0.75/0.98  thf('33', plain,
% 0.75/0.98      (![X5 : $i, X6 : $i, X7 : $i]:
% 0.75/0.98         (~ (r1_tarski @ X5 @ X6)
% 0.75/0.98          | ~ (r1_tarski @ X5 @ X7)
% 0.75/0.98          | (r1_tarski @ X5 @ (k3_xboole_0 @ X6 @ X7)))),
% 0.75/0.98      inference('cnf', [status(esa)], [t19_xboole_1])).
% 0.75/0.98  thf('34', plain,
% 0.75/0.98      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 0.75/0.98         (~ (v1_relat_1 @ X1)
% 0.75/0.98          | (r1_tarski @ (k9_relat_1 @ X1 @ (k3_xboole_0 @ X0 @ X2)) @ 
% 0.75/0.98             (k3_xboole_0 @ (k9_relat_1 @ X1 @ X0) @ X3))
% 0.75/0.98          | ~ (r1_tarski @ (k9_relat_1 @ X1 @ (k3_xboole_0 @ X0 @ X2)) @ X3))),
% 0.75/0.98      inference('sup-', [status(thm)], ['32', '33'])).
% 0.75/0.98  thf('35', plain,
% 0.75/0.98      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.75/0.98         (~ (v1_relat_1 @ X1)
% 0.75/0.98          | ~ (v1_funct_1 @ X1)
% 0.75/0.98          | (r1_tarski @ 
% 0.75/0.98             (k9_relat_1 @ X1 @ (k3_xboole_0 @ X2 @ (k10_relat_1 @ X1 @ X0))) @ 
% 0.75/0.98             (k3_xboole_0 @ (k9_relat_1 @ X1 @ X2) @ X0))
% 0.75/0.98          | ~ (v1_relat_1 @ X1))),
% 0.75/0.98      inference('sup-', [status(thm)], ['31', '34'])).
% 0.75/0.98  thf('36', plain,
% 0.75/0.98      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.75/0.98         ((r1_tarski @ 
% 0.75/0.98           (k9_relat_1 @ X1 @ (k3_xboole_0 @ X2 @ (k10_relat_1 @ X1 @ X0))) @ 
% 0.75/0.98           (k3_xboole_0 @ (k9_relat_1 @ X1 @ X2) @ X0))
% 0.75/0.98          | ~ (v1_funct_1 @ X1)
% 0.75/0.98          | ~ (v1_relat_1 @ X1))),
% 0.75/0.98      inference('simplify', [status(thm)], ['35'])).
% 0.75/0.98  thf('37', plain,
% 0.75/0.98      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.75/0.98         ((r1_tarski @ 
% 0.75/0.98           (k9_relat_1 @ X1 @ (k3_xboole_0 @ X0 @ (k10_relat_1 @ X1 @ X2))) @ 
% 0.75/0.98           (k3_xboole_0 @ X2 @ (k9_relat_1 @ X1 @ X0)))
% 0.75/0.98          | ~ (v1_relat_1 @ X1)
% 0.75/0.98          | ~ (v1_funct_1 @ X1))),
% 0.75/0.98      inference('sup+', [status(thm)], ['0', '36'])).
% 0.75/0.98  thf(t149_funct_1, conjecture,
% 0.75/0.98    (![A:$i,B:$i,C:$i]:
% 0.75/0.98     ( ( ( v1_relat_1 @ C ) & ( v1_funct_1 @ C ) ) =>
% 0.75/0.98       ( r1_tarski @
% 0.75/0.98         ( k9_relat_1 @ C @ ( k3_xboole_0 @ A @ ( k10_relat_1 @ C @ B ) ) ) @ 
% 0.75/0.98         ( k3_xboole_0 @ ( k9_relat_1 @ C @ A ) @ B ) ) ))).
% 0.75/0.98  thf(zf_stmt_0, negated_conjecture,
% 0.75/0.98    (~( ![A:$i,B:$i,C:$i]:
% 0.75/0.98        ( ( ( v1_relat_1 @ C ) & ( v1_funct_1 @ C ) ) =>
% 0.75/0.98          ( r1_tarski @
% 0.75/0.98            ( k9_relat_1 @ C @ ( k3_xboole_0 @ A @ ( k10_relat_1 @ C @ B ) ) ) @ 
% 0.75/0.98            ( k3_xboole_0 @ ( k9_relat_1 @ C @ A ) @ B ) ) ) )),
% 0.75/0.98    inference('cnf.neg', [status(esa)], [t149_funct_1])).
% 0.75/0.98  thf('38', plain,
% 0.75/0.98      (~ (r1_tarski @ 
% 0.75/0.98          (k9_relat_1 @ sk_C @ 
% 0.75/0.98           (k3_xboole_0 @ sk_A @ (k10_relat_1 @ sk_C @ sk_B))) @ 
% 0.75/0.98          (k3_xboole_0 @ (k9_relat_1 @ sk_C @ sk_A) @ sk_B))),
% 0.75/0.98      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.75/0.98  thf('39', plain,
% 0.75/0.98      (![X0 : $i, X1 : $i]: ((k3_xboole_0 @ X1 @ X0) = (k3_xboole_0 @ X0 @ X1))),
% 0.75/0.98      inference('cnf', [status(esa)], [commutativity_k3_xboole_0])).
% 0.75/0.98  thf('40', plain,
% 0.75/0.98      (~ (r1_tarski @ 
% 0.75/0.98          (k9_relat_1 @ sk_C @ 
% 0.75/0.98           (k3_xboole_0 @ sk_A @ (k10_relat_1 @ sk_C @ sk_B))) @ 
% 0.75/0.98          (k3_xboole_0 @ sk_B @ (k9_relat_1 @ sk_C @ sk_A)))),
% 0.75/0.98      inference('demod', [status(thm)], ['38', '39'])).
% 0.75/0.98  thf('41', plain, ((~ (v1_funct_1 @ sk_C) | ~ (v1_relat_1 @ sk_C))),
% 0.75/0.98      inference('sup-', [status(thm)], ['37', '40'])).
% 0.75/0.98  thf('42', plain, ((v1_funct_1 @ sk_C)),
% 0.75/0.98      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.75/0.98  thf('43', plain, ((v1_relat_1 @ sk_C)),
% 0.75/0.98      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.75/0.98  thf('44', plain, ($false),
% 0.75/0.98      inference('demod', [status(thm)], ['41', '42', '43'])).
% 0.75/0.98  
% 0.75/0.98  % SZS output end Refutation
% 0.75/0.98  
% 0.75/0.98  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
