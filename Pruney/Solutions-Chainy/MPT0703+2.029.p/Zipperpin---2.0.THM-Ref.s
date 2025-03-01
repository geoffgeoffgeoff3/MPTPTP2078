%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.xvatvPNfzU

% Computer   : n018.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:46:52 EST 2020

% Result     : Theorem 0.90s
% Output     : Refutation 0.90s
% Verified   : 
% Statistics : Number of formulae       :   93 ( 224 expanded)
%              Number of leaves         :   22 (  78 expanded)
%              Depth                    :   15
%              Number of atoms          :  655 (1936 expanded)
%              Number of equality atoms :   30 (  78 expanded)
%              Maximal formula depth    :   12 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(k2_xboole_0_type,type,(
    k2_xboole_0: $i > $i > $i )).

thf(k6_subset_1_type,type,(
    k6_subset_1: $i > $i > $i )).

thf(v1_funct_1_type,type,(
    v1_funct_1: $i > $o )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(k10_relat_1_type,type,(
    k10_relat_1: $i > $i > $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(k9_relat_1_type,type,(
    k9_relat_1: $i > $i > $i )).

thf(k2_relat_1_type,type,(
    k2_relat_1: $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k4_xboole_0_type,type,(
    k4_xboole_0: $i > $i > $i )).

thf(t158_funct_1,conjecture,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( v1_relat_1 @ C )
        & ( v1_funct_1 @ C ) )
     => ( ( ( r1_tarski @ ( k10_relat_1 @ C @ A ) @ ( k10_relat_1 @ C @ B ) )
          & ( r1_tarski @ A @ ( k2_relat_1 @ C ) ) )
       => ( r1_tarski @ A @ B ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i] :
        ( ( ( v1_relat_1 @ C )
          & ( v1_funct_1 @ C ) )
       => ( ( ( r1_tarski @ ( k10_relat_1 @ C @ A ) @ ( k10_relat_1 @ C @ B ) )
            & ( r1_tarski @ A @ ( k2_relat_1 @ C ) ) )
         => ( r1_tarski @ A @ B ) ) ) ),
    inference('cnf.neg',[status(esa)],[t158_funct_1])).

thf('0',plain,(
    ~ ( r1_tarski @ sk_A @ sk_B ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(d10_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( A = B )
    <=> ( ( r1_tarski @ A @ B )
        & ( r1_tarski @ B @ A ) ) ) )).

thf('1',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r1_tarski @ X0 @ X1 )
      | ( X0 != X1 ) ) ),
    inference(cnf,[status(esa)],[d10_xboole_0])).

thf('2',plain,(
    ! [X1: $i] :
      ( r1_tarski @ X1 @ X1 ) ),
    inference(simplify,[status(thm)],['1'])).

thf(t12_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_tarski @ A @ B )
     => ( ( k2_xboole_0 @ A @ B )
        = B ) ) )).

thf('3',plain,(
    ! [X6: $i,X7: $i] :
      ( ( ( k2_xboole_0 @ X7 @ X6 )
        = X6 )
      | ~ ( r1_tarski @ X7 @ X6 ) ) ),
    inference(cnf,[status(esa)],[t12_xboole_1])).

thf('4',plain,(
    ! [X0: $i] :
      ( ( k2_xboole_0 @ X0 @ X0 )
      = X0 ) ),
    inference('sup-',[status(thm)],['2','3'])).

thf('5',plain,(
    ! [X1: $i] :
      ( r1_tarski @ X1 @ X1 ) ),
    inference(simplify,[status(thm)],['1'])).

thf(t11_xboole_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( r1_tarski @ ( k2_xboole_0 @ A @ B ) @ C )
     => ( r1_tarski @ A @ C ) ) )).

thf('6',plain,(
    ! [X3: $i,X4: $i,X5: $i] :
      ( ( r1_tarski @ X3 @ X4 )
      | ~ ( r1_tarski @ ( k2_xboole_0 @ X3 @ X5 ) @ X4 ) ) ),
    inference(cnf,[status(esa)],[t11_xboole_1])).

thf('7',plain,(
    ! [X0: $i,X1: $i] :
      ( r1_tarski @ X1 @ ( k2_xboole_0 @ X1 @ X0 ) ) ),
    inference('sup-',[status(thm)],['5','6'])).

thf(t43_xboole_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( r1_tarski @ A @ ( k2_xboole_0 @ B @ C ) )
     => ( r1_tarski @ ( k4_xboole_0 @ A @ B ) @ C ) ) )).

thf('8',plain,(
    ! [X10: $i,X11: $i,X12: $i] :
      ( ( r1_tarski @ ( k4_xboole_0 @ X10 @ X11 ) @ X12 )
      | ~ ( r1_tarski @ X10 @ ( k2_xboole_0 @ X11 @ X12 ) ) ) ),
    inference(cnf,[status(esa)],[t43_xboole_1])).

thf(redefinition_k6_subset_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k6_subset_1 @ A @ B )
      = ( k4_xboole_0 @ A @ B ) ) )).

thf('9',plain,(
    ! [X19: $i,X20: $i] :
      ( ( k6_subset_1 @ X19 @ X20 )
      = ( k4_xboole_0 @ X19 @ X20 ) ) ),
    inference(cnf,[status(esa)],[redefinition_k6_subset_1])).

thf('10',plain,(
    ! [X10: $i,X11: $i,X12: $i] :
      ( ( r1_tarski @ ( k6_subset_1 @ X10 @ X11 ) @ X12 )
      | ~ ( r1_tarski @ X10 @ ( k2_xboole_0 @ X11 @ X12 ) ) ) ),
    inference(demod,[status(thm)],['8','9'])).

thf('11',plain,(
    ! [X0: $i,X1: $i] :
      ( r1_tarski @ ( k6_subset_1 @ X1 @ X1 ) @ X0 ) ),
    inference('sup-',[status(thm)],['7','10'])).

thf('12',plain,(
    ! [X0: $i,X1: $i] :
      ( r1_tarski @ X1 @ ( k2_xboole_0 @ X1 @ X0 ) ) ),
    inference('sup-',[status(thm)],['5','6'])).

thf('13',plain,(
    r1_tarski @ sk_A @ ( k2_relat_1 @ sk_C ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('14',plain,(
    ! [X6: $i,X7: $i] :
      ( ( ( k2_xboole_0 @ X7 @ X6 )
        = X6 )
      | ~ ( r1_tarski @ X7 @ X6 ) ) ),
    inference(cnf,[status(esa)],[t12_xboole_1])).

thf('15',plain,
    ( ( k2_xboole_0 @ sk_A @ ( k2_relat_1 @ sk_C ) )
    = ( k2_relat_1 @ sk_C ) ),
    inference('sup-',[status(thm)],['13','14'])).

thf('16',plain,(
    ! [X3: $i,X4: $i,X5: $i] :
      ( ( r1_tarski @ X3 @ X4 )
      | ~ ( r1_tarski @ ( k2_xboole_0 @ X3 @ X5 ) @ X4 ) ) ),
    inference(cnf,[status(esa)],[t11_xboole_1])).

thf('17',plain,(
    ! [X0: $i] :
      ( ~ ( r1_tarski @ ( k2_relat_1 @ sk_C ) @ X0 )
      | ( r1_tarski @ sk_A @ X0 ) ) ),
    inference('sup-',[status(thm)],['15','16'])).

thf('18',plain,(
    ! [X0: $i] :
      ( r1_tarski @ sk_A @ ( k2_xboole_0 @ ( k2_relat_1 @ sk_C ) @ X0 ) ) ),
    inference('sup-',[status(thm)],['12','17'])).

thf('19',plain,(
    ! [X10: $i,X11: $i,X12: $i] :
      ( ( r1_tarski @ ( k6_subset_1 @ X10 @ X11 ) @ X12 )
      | ~ ( r1_tarski @ X10 @ ( k2_xboole_0 @ X11 @ X12 ) ) ) ),
    inference(demod,[status(thm)],['8','9'])).

thf('20',plain,(
    ! [X0: $i] :
      ( r1_tarski @ ( k6_subset_1 @ sk_A @ ( k2_relat_1 @ sk_C ) ) @ X0 ) ),
    inference('sup-',[status(thm)],['18','19'])).

thf('21',plain,(
    ! [X0: $i,X2: $i] :
      ( ( X0 = X2 )
      | ~ ( r1_tarski @ X2 @ X0 )
      | ~ ( r1_tarski @ X0 @ X2 ) ) ),
    inference(cnf,[status(esa)],[d10_xboole_0])).

thf('22',plain,(
    ! [X0: $i] :
      ( ~ ( r1_tarski @ X0 @ ( k6_subset_1 @ sk_A @ ( k2_relat_1 @ sk_C ) ) )
      | ( X0
        = ( k6_subset_1 @ sk_A @ ( k2_relat_1 @ sk_C ) ) ) ) ),
    inference('sup-',[status(thm)],['20','21'])).

thf('23',plain,(
    ! [X0: $i] :
      ( ( k6_subset_1 @ X0 @ X0 )
      = ( k6_subset_1 @ sk_A @ ( k2_relat_1 @ sk_C ) ) ) ),
    inference('sup-',[status(thm)],['11','22'])).

thf(t138_funct_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( v1_relat_1 @ C )
        & ( v1_funct_1 @ C ) )
     => ( ( k10_relat_1 @ C @ ( k6_subset_1 @ A @ B ) )
        = ( k6_subset_1 @ ( k10_relat_1 @ C @ A ) @ ( k10_relat_1 @ C @ B ) ) ) ) )).

thf('24',plain,(
    ! [X21: $i,X22: $i,X23: $i] :
      ( ( ( k10_relat_1 @ X21 @ ( k6_subset_1 @ X22 @ X23 ) )
        = ( k6_subset_1 @ ( k10_relat_1 @ X21 @ X22 ) @ ( k10_relat_1 @ X21 @ X23 ) ) )
      | ~ ( v1_funct_1 @ X21 )
      | ~ ( v1_relat_1 @ X21 ) ) ),
    inference(cnf,[status(esa)],[t138_funct_1])).

thf('25',plain,(
    ! [X0: $i,X1: $i] :
      ( ( ( k10_relat_1 @ X1 @ ( k6_subset_1 @ X0 @ X0 ) )
        = ( k6_subset_1 @ sk_A @ ( k2_relat_1 @ sk_C ) ) )
      | ~ ( v1_relat_1 @ X1 )
      | ~ ( v1_funct_1 @ X1 ) ) ),
    inference('sup+',[status(thm)],['23','24'])).

thf(t36_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( r1_tarski @ ( k4_xboole_0 @ A @ B ) @ A ) )).

thf('26',plain,(
    ! [X8: $i,X9: $i] :
      ( r1_tarski @ ( k4_xboole_0 @ X8 @ X9 ) @ X8 ) ),
    inference(cnf,[status(esa)],[t36_xboole_1])).

thf('27',plain,(
    ! [X19: $i,X20: $i] :
      ( ( k6_subset_1 @ X19 @ X20 )
      = ( k4_xboole_0 @ X19 @ X20 ) ) ),
    inference(cnf,[status(esa)],[redefinition_k6_subset_1])).

thf('28',plain,(
    ! [X8: $i,X9: $i] :
      ( r1_tarski @ ( k6_subset_1 @ X8 @ X9 ) @ X8 ) ),
    inference(demod,[status(thm)],['26','27'])).

thf(t44_xboole_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( r1_tarski @ ( k4_xboole_0 @ A @ B ) @ C )
     => ( r1_tarski @ A @ ( k2_xboole_0 @ B @ C ) ) ) )).

thf('29',plain,(
    ! [X13: $i,X14: $i,X15: $i] :
      ( ( r1_tarski @ X13 @ ( k2_xboole_0 @ X14 @ X15 ) )
      | ~ ( r1_tarski @ ( k4_xboole_0 @ X13 @ X14 ) @ X15 ) ) ),
    inference(cnf,[status(esa)],[t44_xboole_1])).

thf('30',plain,(
    ! [X19: $i,X20: $i] :
      ( ( k6_subset_1 @ X19 @ X20 )
      = ( k4_xboole_0 @ X19 @ X20 ) ) ),
    inference(cnf,[status(esa)],[redefinition_k6_subset_1])).

thf('31',plain,(
    ! [X13: $i,X14: $i,X15: $i] :
      ( ( r1_tarski @ X13 @ ( k2_xboole_0 @ X14 @ X15 ) )
      | ~ ( r1_tarski @ ( k6_subset_1 @ X13 @ X14 ) @ X15 ) ) ),
    inference(demod,[status(thm)],['29','30'])).

thf('32',plain,(
    ! [X0: $i,X1: $i] :
      ( r1_tarski @ X0 @ ( k2_xboole_0 @ X1 @ X0 ) ) ),
    inference('sup-',[status(thm)],['28','31'])).

thf('33',plain,(
    ! [X0: $i] :
      ( ~ ( r1_tarski @ ( k2_relat_1 @ sk_C ) @ X0 )
      | ( r1_tarski @ sk_A @ X0 ) ) ),
    inference('sup-',[status(thm)],['15','16'])).

thf('34',plain,(
    ! [X0: $i] :
      ( r1_tarski @ sk_A @ ( k2_xboole_0 @ X0 @ ( k2_relat_1 @ sk_C ) ) ) ),
    inference('sup-',[status(thm)],['32','33'])).

thf('35',plain,(
    ! [X10: $i,X11: $i,X12: $i] :
      ( ( r1_tarski @ ( k6_subset_1 @ X10 @ X11 ) @ X12 )
      | ~ ( r1_tarski @ X10 @ ( k2_xboole_0 @ X11 @ X12 ) ) ) ),
    inference(demod,[status(thm)],['8','9'])).

thf('36',plain,(
    ! [X0: $i] :
      ( r1_tarski @ ( k6_subset_1 @ sk_A @ X0 ) @ ( k2_relat_1 @ sk_C ) ) ),
    inference('sup-',[status(thm)],['34','35'])).

thf(t147_funct_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( v1_relat_1 @ B )
        & ( v1_funct_1 @ B ) )
     => ( ( r1_tarski @ A @ ( k2_relat_1 @ B ) )
       => ( ( k9_relat_1 @ B @ ( k10_relat_1 @ B @ A ) )
          = A ) ) ) )).

thf('37',plain,(
    ! [X24: $i,X25: $i] :
      ( ~ ( r1_tarski @ X24 @ ( k2_relat_1 @ X25 ) )
      | ( ( k9_relat_1 @ X25 @ ( k10_relat_1 @ X25 @ X24 ) )
        = X24 )
      | ~ ( v1_funct_1 @ X25 )
      | ~ ( v1_relat_1 @ X25 ) ) ),
    inference(cnf,[status(esa)],[t147_funct_1])).

thf('38',plain,(
    ! [X0: $i] :
      ( ~ ( v1_relat_1 @ sk_C )
      | ~ ( v1_funct_1 @ sk_C )
      | ( ( k9_relat_1 @ sk_C @ ( k10_relat_1 @ sk_C @ ( k6_subset_1 @ sk_A @ X0 ) ) )
        = ( k6_subset_1 @ sk_A @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['36','37'])).

thf('39',plain,(
    v1_relat_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('40',plain,(
    v1_funct_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('41',plain,(
    ! [X0: $i] :
      ( ( k9_relat_1 @ sk_C @ ( k10_relat_1 @ sk_C @ ( k6_subset_1 @ sk_A @ X0 ) ) )
      = ( k6_subset_1 @ sk_A @ X0 ) ) ),
    inference(demod,[status(thm)],['38','39','40'])).

thf('42',plain,
    ( ( ( k9_relat_1 @ sk_C @ ( k6_subset_1 @ sk_A @ ( k2_relat_1 @ sk_C ) ) )
      = ( k6_subset_1 @ sk_A @ sk_A ) )
    | ~ ( v1_funct_1 @ sk_C )
    | ~ ( v1_relat_1 @ sk_C ) ),
    inference('sup+',[status(thm)],['25','41'])).

thf('43',plain,(
    ! [X21: $i,X22: $i,X23: $i] :
      ( ( ( k10_relat_1 @ X21 @ ( k6_subset_1 @ X22 @ X23 ) )
        = ( k6_subset_1 @ ( k10_relat_1 @ X21 @ X22 ) @ ( k10_relat_1 @ X21 @ X23 ) ) )
      | ~ ( v1_funct_1 @ X21 )
      | ~ ( v1_relat_1 @ X21 ) ) ),
    inference(cnf,[status(esa)],[t138_funct_1])).

thf('44',plain,(
    ! [X0: $i,X1: $i] :
      ( r1_tarski @ X1 @ ( k2_xboole_0 @ X1 @ X0 ) ) ),
    inference('sup-',[status(thm)],['5','6'])).

thf('45',plain,(
    r1_tarski @ ( k10_relat_1 @ sk_C @ sk_A ) @ ( k10_relat_1 @ sk_C @ sk_B ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('46',plain,(
    ! [X6: $i,X7: $i] :
      ( ( ( k2_xboole_0 @ X7 @ X6 )
        = X6 )
      | ~ ( r1_tarski @ X7 @ X6 ) ) ),
    inference(cnf,[status(esa)],[t12_xboole_1])).

thf('47',plain,
    ( ( k2_xboole_0 @ ( k10_relat_1 @ sk_C @ sk_A ) @ ( k10_relat_1 @ sk_C @ sk_B ) )
    = ( k10_relat_1 @ sk_C @ sk_B ) ),
    inference('sup-',[status(thm)],['45','46'])).

thf('48',plain,(
    ! [X3: $i,X4: $i,X5: $i] :
      ( ( r1_tarski @ X3 @ X4 )
      | ~ ( r1_tarski @ ( k2_xboole_0 @ X3 @ X5 ) @ X4 ) ) ),
    inference(cnf,[status(esa)],[t11_xboole_1])).

thf('49',plain,(
    ! [X0: $i] :
      ( ~ ( r1_tarski @ ( k10_relat_1 @ sk_C @ sk_B ) @ X0 )
      | ( r1_tarski @ ( k10_relat_1 @ sk_C @ sk_A ) @ X0 ) ) ),
    inference('sup-',[status(thm)],['47','48'])).

thf('50',plain,(
    ! [X0: $i] :
      ( r1_tarski @ ( k10_relat_1 @ sk_C @ sk_A ) @ ( k2_xboole_0 @ ( k10_relat_1 @ sk_C @ sk_B ) @ X0 ) ) ),
    inference('sup-',[status(thm)],['44','49'])).

thf('51',plain,(
    ! [X10: $i,X11: $i,X12: $i] :
      ( ( r1_tarski @ ( k6_subset_1 @ X10 @ X11 ) @ X12 )
      | ~ ( r1_tarski @ X10 @ ( k2_xboole_0 @ X11 @ X12 ) ) ) ),
    inference(demod,[status(thm)],['8','9'])).

thf('52',plain,(
    ! [X0: $i] :
      ( r1_tarski @ ( k6_subset_1 @ ( k10_relat_1 @ sk_C @ sk_A ) @ ( k10_relat_1 @ sk_C @ sk_B ) ) @ X0 ) ),
    inference('sup-',[status(thm)],['50','51'])).

thf('53',plain,(
    ! [X0: $i] :
      ( ( r1_tarski @ ( k10_relat_1 @ sk_C @ ( k6_subset_1 @ sk_A @ sk_B ) ) @ X0 )
      | ~ ( v1_relat_1 @ sk_C )
      | ~ ( v1_funct_1 @ sk_C ) ) ),
    inference('sup+',[status(thm)],['43','52'])).

thf('54',plain,(
    v1_relat_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('55',plain,(
    v1_funct_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('56',plain,(
    ! [X0: $i] :
      ( r1_tarski @ ( k10_relat_1 @ sk_C @ ( k6_subset_1 @ sk_A @ sk_B ) ) @ X0 ) ),
    inference(demod,[status(thm)],['53','54','55'])).

thf('57',plain,(
    ! [X0: $i] :
      ( ~ ( r1_tarski @ X0 @ ( k6_subset_1 @ sk_A @ ( k2_relat_1 @ sk_C ) ) )
      | ( X0
        = ( k6_subset_1 @ sk_A @ ( k2_relat_1 @ sk_C ) ) ) ) ),
    inference('sup-',[status(thm)],['20','21'])).

thf('58',plain,
    ( ( k10_relat_1 @ sk_C @ ( k6_subset_1 @ sk_A @ sk_B ) )
    = ( k6_subset_1 @ sk_A @ ( k2_relat_1 @ sk_C ) ) ),
    inference('sup-',[status(thm)],['56','57'])).

thf('59',plain,(
    ! [X0: $i] :
      ( ( k9_relat_1 @ sk_C @ ( k10_relat_1 @ sk_C @ ( k6_subset_1 @ sk_A @ X0 ) ) )
      = ( k6_subset_1 @ sk_A @ X0 ) ) ),
    inference(demod,[status(thm)],['38','39','40'])).

thf('60',plain,
    ( ( k9_relat_1 @ sk_C @ ( k6_subset_1 @ sk_A @ ( k2_relat_1 @ sk_C ) ) )
    = ( k6_subset_1 @ sk_A @ sk_B ) ),
    inference('sup+',[status(thm)],['58','59'])).

thf('61',plain,(
    v1_funct_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('62',plain,(
    v1_relat_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('63',plain,
    ( ( k6_subset_1 @ sk_A @ sk_B )
    = ( k6_subset_1 @ sk_A @ sk_A ) ),
    inference(demod,[status(thm)],['42','60','61','62'])).

thf('64',plain,(
    ! [X0: $i,X1: $i] :
      ( r1_tarski @ ( k6_subset_1 @ X1 @ X1 ) @ X0 ) ),
    inference('sup-',[status(thm)],['7','10'])).

thf('65',plain,(
    ! [X0: $i] :
      ( r1_tarski @ ( k6_subset_1 @ sk_A @ sk_B ) @ X0 ) ),
    inference('sup+',[status(thm)],['63','64'])).

thf('66',plain,(
    ! [X13: $i,X14: $i,X15: $i] :
      ( ( r1_tarski @ X13 @ ( k2_xboole_0 @ X14 @ X15 ) )
      | ~ ( r1_tarski @ ( k6_subset_1 @ X13 @ X14 ) @ X15 ) ) ),
    inference(demod,[status(thm)],['29','30'])).

thf('67',plain,(
    ! [X0: $i] :
      ( r1_tarski @ sk_A @ ( k2_xboole_0 @ sk_B @ X0 ) ) ),
    inference('sup-',[status(thm)],['65','66'])).

thf('68',plain,(
    r1_tarski @ sk_A @ sk_B ),
    inference('sup+',[status(thm)],['4','67'])).

thf('69',plain,(
    $false ),
    inference(demod,[status(thm)],['0','68'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.xvatvPNfzU
% 0.12/0.34  % Computer   : n018.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % DateTime   : Tue Dec  1 12:19:57 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  % Running portfolio for 600 s
% 0.12/0.34  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.12/0.34  % Number of cores: 8
% 0.12/0.34  % Python version: Python 3.6.8
% 0.12/0.35  % Running in FO mode
% 0.90/1.14  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.90/1.14  % Solved by: fo/fo7.sh
% 0.90/1.14  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.90/1.14  % done 1580 iterations in 0.691s
% 0.90/1.14  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.90/1.14  % SZS output start Refutation
% 0.90/1.14  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.90/1.14  thf(sk_C_type, type, sk_C: $i).
% 0.90/1.14  thf(k2_xboole_0_type, type, k2_xboole_0: $i > $i > $i).
% 0.90/1.14  thf(k6_subset_1_type, type, k6_subset_1: $i > $i > $i).
% 0.90/1.14  thf(v1_funct_1_type, type, v1_funct_1: $i > $o).
% 0.90/1.14  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.90/1.14  thf(k10_relat_1_type, type, k10_relat_1: $i > $i > $i).
% 0.90/1.14  thf(sk_B_type, type, sk_B: $i).
% 0.90/1.14  thf(k9_relat_1_type, type, k9_relat_1: $i > $i > $i).
% 0.90/1.14  thf(k2_relat_1_type, type, k2_relat_1: $i > $i).
% 0.90/1.14  thf(sk_A_type, type, sk_A: $i).
% 0.90/1.14  thf(k4_xboole_0_type, type, k4_xboole_0: $i > $i > $i).
% 0.90/1.14  thf(t158_funct_1, conjecture,
% 0.90/1.14    (![A:$i,B:$i,C:$i]:
% 0.90/1.14     ( ( ( v1_relat_1 @ C ) & ( v1_funct_1 @ C ) ) =>
% 0.90/1.14       ( ( ( r1_tarski @ ( k10_relat_1 @ C @ A ) @ ( k10_relat_1 @ C @ B ) ) & 
% 0.90/1.14           ( r1_tarski @ A @ ( k2_relat_1 @ C ) ) ) =>
% 0.90/1.14         ( r1_tarski @ A @ B ) ) ))).
% 0.90/1.14  thf(zf_stmt_0, negated_conjecture,
% 0.90/1.14    (~( ![A:$i,B:$i,C:$i]:
% 0.90/1.14        ( ( ( v1_relat_1 @ C ) & ( v1_funct_1 @ C ) ) =>
% 0.90/1.14          ( ( ( r1_tarski @ ( k10_relat_1 @ C @ A ) @ ( k10_relat_1 @ C @ B ) ) & 
% 0.90/1.14              ( r1_tarski @ A @ ( k2_relat_1 @ C ) ) ) =>
% 0.90/1.14            ( r1_tarski @ A @ B ) ) ) )),
% 0.90/1.14    inference('cnf.neg', [status(esa)], [t158_funct_1])).
% 0.90/1.14  thf('0', plain, (~ (r1_tarski @ sk_A @ sk_B)),
% 0.90/1.14      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.90/1.14  thf(d10_xboole_0, axiom,
% 0.90/1.14    (![A:$i,B:$i]:
% 0.90/1.14     ( ( ( A ) = ( B ) ) <=> ( ( r1_tarski @ A @ B ) & ( r1_tarski @ B @ A ) ) ))).
% 0.90/1.14  thf('1', plain,
% 0.90/1.14      (![X0 : $i, X1 : $i]: ((r1_tarski @ X0 @ X1) | ((X0) != (X1)))),
% 0.90/1.14      inference('cnf', [status(esa)], [d10_xboole_0])).
% 0.90/1.14  thf('2', plain, (![X1 : $i]: (r1_tarski @ X1 @ X1)),
% 0.90/1.14      inference('simplify', [status(thm)], ['1'])).
% 0.90/1.14  thf(t12_xboole_1, axiom,
% 0.90/1.14    (![A:$i,B:$i]:
% 0.90/1.14     ( ( r1_tarski @ A @ B ) => ( ( k2_xboole_0 @ A @ B ) = ( B ) ) ))).
% 0.90/1.14  thf('3', plain,
% 0.90/1.14      (![X6 : $i, X7 : $i]:
% 0.90/1.14         (((k2_xboole_0 @ X7 @ X6) = (X6)) | ~ (r1_tarski @ X7 @ X6))),
% 0.90/1.14      inference('cnf', [status(esa)], [t12_xboole_1])).
% 0.90/1.14  thf('4', plain, (![X0 : $i]: ((k2_xboole_0 @ X0 @ X0) = (X0))),
% 0.90/1.14      inference('sup-', [status(thm)], ['2', '3'])).
% 0.90/1.14  thf('5', plain, (![X1 : $i]: (r1_tarski @ X1 @ X1)),
% 0.90/1.14      inference('simplify', [status(thm)], ['1'])).
% 0.90/1.14  thf(t11_xboole_1, axiom,
% 0.90/1.14    (![A:$i,B:$i,C:$i]:
% 0.90/1.14     ( ( r1_tarski @ ( k2_xboole_0 @ A @ B ) @ C ) => ( r1_tarski @ A @ C ) ))).
% 0.90/1.14  thf('6', plain,
% 0.90/1.14      (![X3 : $i, X4 : $i, X5 : $i]:
% 0.90/1.14         ((r1_tarski @ X3 @ X4) | ~ (r1_tarski @ (k2_xboole_0 @ X3 @ X5) @ X4))),
% 0.90/1.14      inference('cnf', [status(esa)], [t11_xboole_1])).
% 0.90/1.14  thf('7', plain,
% 0.90/1.14      (![X0 : $i, X1 : $i]: (r1_tarski @ X1 @ (k2_xboole_0 @ X1 @ X0))),
% 0.90/1.14      inference('sup-', [status(thm)], ['5', '6'])).
% 0.90/1.14  thf(t43_xboole_1, axiom,
% 0.90/1.14    (![A:$i,B:$i,C:$i]:
% 0.90/1.14     ( ( r1_tarski @ A @ ( k2_xboole_0 @ B @ C ) ) =>
% 0.90/1.14       ( r1_tarski @ ( k4_xboole_0 @ A @ B ) @ C ) ))).
% 0.90/1.14  thf('8', plain,
% 0.90/1.14      (![X10 : $i, X11 : $i, X12 : $i]:
% 0.90/1.14         ((r1_tarski @ (k4_xboole_0 @ X10 @ X11) @ X12)
% 0.90/1.14          | ~ (r1_tarski @ X10 @ (k2_xboole_0 @ X11 @ X12)))),
% 0.90/1.14      inference('cnf', [status(esa)], [t43_xboole_1])).
% 0.90/1.14  thf(redefinition_k6_subset_1, axiom,
% 0.90/1.14    (![A:$i,B:$i]: ( ( k6_subset_1 @ A @ B ) = ( k4_xboole_0 @ A @ B ) ))).
% 0.90/1.14  thf('9', plain,
% 0.90/1.14      (![X19 : $i, X20 : $i]:
% 0.90/1.14         ((k6_subset_1 @ X19 @ X20) = (k4_xboole_0 @ X19 @ X20))),
% 0.90/1.14      inference('cnf', [status(esa)], [redefinition_k6_subset_1])).
% 0.90/1.14  thf('10', plain,
% 0.90/1.14      (![X10 : $i, X11 : $i, X12 : $i]:
% 0.90/1.14         ((r1_tarski @ (k6_subset_1 @ X10 @ X11) @ X12)
% 0.90/1.14          | ~ (r1_tarski @ X10 @ (k2_xboole_0 @ X11 @ X12)))),
% 0.90/1.14      inference('demod', [status(thm)], ['8', '9'])).
% 0.90/1.14  thf('11', plain,
% 0.90/1.14      (![X0 : $i, X1 : $i]: (r1_tarski @ (k6_subset_1 @ X1 @ X1) @ X0)),
% 0.90/1.14      inference('sup-', [status(thm)], ['7', '10'])).
% 0.90/1.14  thf('12', plain,
% 0.90/1.14      (![X0 : $i, X1 : $i]: (r1_tarski @ X1 @ (k2_xboole_0 @ X1 @ X0))),
% 0.90/1.14      inference('sup-', [status(thm)], ['5', '6'])).
% 0.90/1.14  thf('13', plain, ((r1_tarski @ sk_A @ (k2_relat_1 @ sk_C))),
% 0.90/1.14      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.90/1.14  thf('14', plain,
% 0.90/1.14      (![X6 : $i, X7 : $i]:
% 0.90/1.14         (((k2_xboole_0 @ X7 @ X6) = (X6)) | ~ (r1_tarski @ X7 @ X6))),
% 0.90/1.14      inference('cnf', [status(esa)], [t12_xboole_1])).
% 0.90/1.14  thf('15', plain,
% 0.90/1.14      (((k2_xboole_0 @ sk_A @ (k2_relat_1 @ sk_C)) = (k2_relat_1 @ sk_C))),
% 0.90/1.14      inference('sup-', [status(thm)], ['13', '14'])).
% 0.90/1.14  thf('16', plain,
% 0.90/1.14      (![X3 : $i, X4 : $i, X5 : $i]:
% 0.90/1.14         ((r1_tarski @ X3 @ X4) | ~ (r1_tarski @ (k2_xboole_0 @ X3 @ X5) @ X4))),
% 0.90/1.14      inference('cnf', [status(esa)], [t11_xboole_1])).
% 0.90/1.14  thf('17', plain,
% 0.90/1.14      (![X0 : $i]:
% 0.90/1.14         (~ (r1_tarski @ (k2_relat_1 @ sk_C) @ X0) | (r1_tarski @ sk_A @ X0))),
% 0.90/1.14      inference('sup-', [status(thm)], ['15', '16'])).
% 0.90/1.14  thf('18', plain,
% 0.90/1.14      (![X0 : $i]:
% 0.90/1.14         (r1_tarski @ sk_A @ (k2_xboole_0 @ (k2_relat_1 @ sk_C) @ X0))),
% 0.90/1.14      inference('sup-', [status(thm)], ['12', '17'])).
% 0.90/1.14  thf('19', plain,
% 0.90/1.14      (![X10 : $i, X11 : $i, X12 : $i]:
% 0.90/1.14         ((r1_tarski @ (k6_subset_1 @ X10 @ X11) @ X12)
% 0.90/1.14          | ~ (r1_tarski @ X10 @ (k2_xboole_0 @ X11 @ X12)))),
% 0.90/1.14      inference('demod', [status(thm)], ['8', '9'])).
% 0.90/1.14  thf('20', plain,
% 0.90/1.14      (![X0 : $i]:
% 0.90/1.14         (r1_tarski @ (k6_subset_1 @ sk_A @ (k2_relat_1 @ sk_C)) @ X0)),
% 0.90/1.14      inference('sup-', [status(thm)], ['18', '19'])).
% 0.90/1.14  thf('21', plain,
% 0.90/1.14      (![X0 : $i, X2 : $i]:
% 0.90/1.14         (((X0) = (X2)) | ~ (r1_tarski @ X2 @ X0) | ~ (r1_tarski @ X0 @ X2))),
% 0.90/1.14      inference('cnf', [status(esa)], [d10_xboole_0])).
% 0.90/1.14  thf('22', plain,
% 0.90/1.14      (![X0 : $i]:
% 0.90/1.14         (~ (r1_tarski @ X0 @ (k6_subset_1 @ sk_A @ (k2_relat_1 @ sk_C)))
% 0.90/1.14          | ((X0) = (k6_subset_1 @ sk_A @ (k2_relat_1 @ sk_C))))),
% 0.90/1.14      inference('sup-', [status(thm)], ['20', '21'])).
% 0.90/1.14  thf('23', plain,
% 0.90/1.14      (![X0 : $i]:
% 0.90/1.14         ((k6_subset_1 @ X0 @ X0) = (k6_subset_1 @ sk_A @ (k2_relat_1 @ sk_C)))),
% 0.90/1.14      inference('sup-', [status(thm)], ['11', '22'])).
% 0.90/1.14  thf(t138_funct_1, axiom,
% 0.90/1.14    (![A:$i,B:$i,C:$i]:
% 0.90/1.14     ( ( ( v1_relat_1 @ C ) & ( v1_funct_1 @ C ) ) =>
% 0.90/1.14       ( ( k10_relat_1 @ C @ ( k6_subset_1 @ A @ B ) ) =
% 0.90/1.14         ( k6_subset_1 @ ( k10_relat_1 @ C @ A ) @ ( k10_relat_1 @ C @ B ) ) ) ))).
% 0.90/1.14  thf('24', plain,
% 0.90/1.14      (![X21 : $i, X22 : $i, X23 : $i]:
% 0.90/1.14         (((k10_relat_1 @ X21 @ (k6_subset_1 @ X22 @ X23))
% 0.90/1.14            = (k6_subset_1 @ (k10_relat_1 @ X21 @ X22) @ 
% 0.90/1.14               (k10_relat_1 @ X21 @ X23)))
% 0.90/1.14          | ~ (v1_funct_1 @ X21)
% 0.90/1.14          | ~ (v1_relat_1 @ X21))),
% 0.90/1.14      inference('cnf', [status(esa)], [t138_funct_1])).
% 0.90/1.14  thf('25', plain,
% 0.90/1.14      (![X0 : $i, X1 : $i]:
% 0.90/1.14         (((k10_relat_1 @ X1 @ (k6_subset_1 @ X0 @ X0))
% 0.90/1.14            = (k6_subset_1 @ sk_A @ (k2_relat_1 @ sk_C)))
% 0.90/1.14          | ~ (v1_relat_1 @ X1)
% 0.90/1.14          | ~ (v1_funct_1 @ X1))),
% 0.90/1.14      inference('sup+', [status(thm)], ['23', '24'])).
% 0.90/1.14  thf(t36_xboole_1, axiom,
% 0.90/1.14    (![A:$i,B:$i]: ( r1_tarski @ ( k4_xboole_0 @ A @ B ) @ A ))).
% 0.90/1.14  thf('26', plain,
% 0.90/1.14      (![X8 : $i, X9 : $i]: (r1_tarski @ (k4_xboole_0 @ X8 @ X9) @ X8)),
% 0.90/1.14      inference('cnf', [status(esa)], [t36_xboole_1])).
% 0.90/1.14  thf('27', plain,
% 0.90/1.14      (![X19 : $i, X20 : $i]:
% 0.90/1.14         ((k6_subset_1 @ X19 @ X20) = (k4_xboole_0 @ X19 @ X20))),
% 0.90/1.14      inference('cnf', [status(esa)], [redefinition_k6_subset_1])).
% 0.90/1.14  thf('28', plain,
% 0.90/1.14      (![X8 : $i, X9 : $i]: (r1_tarski @ (k6_subset_1 @ X8 @ X9) @ X8)),
% 0.90/1.14      inference('demod', [status(thm)], ['26', '27'])).
% 0.90/1.14  thf(t44_xboole_1, axiom,
% 0.90/1.14    (![A:$i,B:$i,C:$i]:
% 0.90/1.14     ( ( r1_tarski @ ( k4_xboole_0 @ A @ B ) @ C ) =>
% 0.90/1.14       ( r1_tarski @ A @ ( k2_xboole_0 @ B @ C ) ) ))).
% 0.90/1.14  thf('29', plain,
% 0.90/1.14      (![X13 : $i, X14 : $i, X15 : $i]:
% 0.90/1.14         ((r1_tarski @ X13 @ (k2_xboole_0 @ X14 @ X15))
% 0.90/1.14          | ~ (r1_tarski @ (k4_xboole_0 @ X13 @ X14) @ X15))),
% 0.90/1.14      inference('cnf', [status(esa)], [t44_xboole_1])).
% 0.90/1.14  thf('30', plain,
% 0.90/1.14      (![X19 : $i, X20 : $i]:
% 0.90/1.14         ((k6_subset_1 @ X19 @ X20) = (k4_xboole_0 @ X19 @ X20))),
% 0.90/1.14      inference('cnf', [status(esa)], [redefinition_k6_subset_1])).
% 0.90/1.14  thf('31', plain,
% 0.90/1.14      (![X13 : $i, X14 : $i, X15 : $i]:
% 0.90/1.14         ((r1_tarski @ X13 @ (k2_xboole_0 @ X14 @ X15))
% 0.90/1.14          | ~ (r1_tarski @ (k6_subset_1 @ X13 @ X14) @ X15))),
% 0.90/1.14      inference('demod', [status(thm)], ['29', '30'])).
% 0.90/1.14  thf('32', plain,
% 0.90/1.14      (![X0 : $i, X1 : $i]: (r1_tarski @ X0 @ (k2_xboole_0 @ X1 @ X0))),
% 0.90/1.14      inference('sup-', [status(thm)], ['28', '31'])).
% 0.90/1.14  thf('33', plain,
% 0.90/1.14      (![X0 : $i]:
% 0.90/1.14         (~ (r1_tarski @ (k2_relat_1 @ sk_C) @ X0) | (r1_tarski @ sk_A @ X0))),
% 0.90/1.14      inference('sup-', [status(thm)], ['15', '16'])).
% 0.90/1.14  thf('34', plain,
% 0.90/1.14      (![X0 : $i]:
% 0.90/1.14         (r1_tarski @ sk_A @ (k2_xboole_0 @ X0 @ (k2_relat_1 @ sk_C)))),
% 0.90/1.14      inference('sup-', [status(thm)], ['32', '33'])).
% 0.90/1.14  thf('35', plain,
% 0.90/1.14      (![X10 : $i, X11 : $i, X12 : $i]:
% 0.90/1.14         ((r1_tarski @ (k6_subset_1 @ X10 @ X11) @ X12)
% 0.90/1.14          | ~ (r1_tarski @ X10 @ (k2_xboole_0 @ X11 @ X12)))),
% 0.90/1.14      inference('demod', [status(thm)], ['8', '9'])).
% 0.90/1.14  thf('36', plain,
% 0.90/1.14      (![X0 : $i]:
% 0.90/1.14         (r1_tarski @ (k6_subset_1 @ sk_A @ X0) @ (k2_relat_1 @ sk_C))),
% 0.90/1.14      inference('sup-', [status(thm)], ['34', '35'])).
% 0.90/1.14  thf(t147_funct_1, axiom,
% 0.90/1.14    (![A:$i,B:$i]:
% 0.90/1.14     ( ( ( v1_relat_1 @ B ) & ( v1_funct_1 @ B ) ) =>
% 0.90/1.14       ( ( r1_tarski @ A @ ( k2_relat_1 @ B ) ) =>
% 0.90/1.14         ( ( k9_relat_1 @ B @ ( k10_relat_1 @ B @ A ) ) = ( A ) ) ) ))).
% 0.90/1.14  thf('37', plain,
% 0.90/1.14      (![X24 : $i, X25 : $i]:
% 0.90/1.14         (~ (r1_tarski @ X24 @ (k2_relat_1 @ X25))
% 0.90/1.14          | ((k9_relat_1 @ X25 @ (k10_relat_1 @ X25 @ X24)) = (X24))
% 0.90/1.14          | ~ (v1_funct_1 @ X25)
% 0.90/1.14          | ~ (v1_relat_1 @ X25))),
% 0.90/1.14      inference('cnf', [status(esa)], [t147_funct_1])).
% 0.90/1.14  thf('38', plain,
% 0.90/1.14      (![X0 : $i]:
% 0.90/1.14         (~ (v1_relat_1 @ sk_C)
% 0.90/1.14          | ~ (v1_funct_1 @ sk_C)
% 0.90/1.14          | ((k9_relat_1 @ sk_C @ 
% 0.90/1.14              (k10_relat_1 @ sk_C @ (k6_subset_1 @ sk_A @ X0)))
% 0.90/1.14              = (k6_subset_1 @ sk_A @ X0)))),
% 0.90/1.14      inference('sup-', [status(thm)], ['36', '37'])).
% 0.90/1.14  thf('39', plain, ((v1_relat_1 @ sk_C)),
% 0.90/1.14      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.90/1.14  thf('40', plain, ((v1_funct_1 @ sk_C)),
% 0.90/1.14      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.90/1.14  thf('41', plain,
% 0.90/1.14      (![X0 : $i]:
% 0.90/1.14         ((k9_relat_1 @ sk_C @ (k10_relat_1 @ sk_C @ (k6_subset_1 @ sk_A @ X0)))
% 0.90/1.14           = (k6_subset_1 @ sk_A @ X0))),
% 0.90/1.14      inference('demod', [status(thm)], ['38', '39', '40'])).
% 0.90/1.14  thf('42', plain,
% 0.90/1.14      ((((k9_relat_1 @ sk_C @ (k6_subset_1 @ sk_A @ (k2_relat_1 @ sk_C)))
% 0.90/1.14          = (k6_subset_1 @ sk_A @ sk_A))
% 0.90/1.14        | ~ (v1_funct_1 @ sk_C)
% 0.90/1.14        | ~ (v1_relat_1 @ sk_C))),
% 0.90/1.14      inference('sup+', [status(thm)], ['25', '41'])).
% 0.90/1.14  thf('43', plain,
% 0.90/1.14      (![X21 : $i, X22 : $i, X23 : $i]:
% 0.90/1.14         (((k10_relat_1 @ X21 @ (k6_subset_1 @ X22 @ X23))
% 0.90/1.14            = (k6_subset_1 @ (k10_relat_1 @ X21 @ X22) @ 
% 0.90/1.14               (k10_relat_1 @ X21 @ X23)))
% 0.90/1.14          | ~ (v1_funct_1 @ X21)
% 0.90/1.14          | ~ (v1_relat_1 @ X21))),
% 0.90/1.14      inference('cnf', [status(esa)], [t138_funct_1])).
% 0.90/1.14  thf('44', plain,
% 0.90/1.14      (![X0 : $i, X1 : $i]: (r1_tarski @ X1 @ (k2_xboole_0 @ X1 @ X0))),
% 0.90/1.14      inference('sup-', [status(thm)], ['5', '6'])).
% 0.90/1.14  thf('45', plain,
% 0.90/1.14      ((r1_tarski @ (k10_relat_1 @ sk_C @ sk_A) @ (k10_relat_1 @ sk_C @ sk_B))),
% 0.90/1.14      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.90/1.14  thf('46', plain,
% 0.90/1.14      (![X6 : $i, X7 : $i]:
% 0.90/1.14         (((k2_xboole_0 @ X7 @ X6) = (X6)) | ~ (r1_tarski @ X7 @ X6))),
% 0.90/1.14      inference('cnf', [status(esa)], [t12_xboole_1])).
% 0.90/1.14  thf('47', plain,
% 0.90/1.14      (((k2_xboole_0 @ (k10_relat_1 @ sk_C @ sk_A) @ 
% 0.90/1.14         (k10_relat_1 @ sk_C @ sk_B)) = (k10_relat_1 @ sk_C @ sk_B))),
% 0.90/1.14      inference('sup-', [status(thm)], ['45', '46'])).
% 0.90/1.14  thf('48', plain,
% 0.90/1.14      (![X3 : $i, X4 : $i, X5 : $i]:
% 0.90/1.14         ((r1_tarski @ X3 @ X4) | ~ (r1_tarski @ (k2_xboole_0 @ X3 @ X5) @ X4))),
% 0.90/1.14      inference('cnf', [status(esa)], [t11_xboole_1])).
% 0.90/1.14  thf('49', plain,
% 0.90/1.14      (![X0 : $i]:
% 0.90/1.14         (~ (r1_tarski @ (k10_relat_1 @ sk_C @ sk_B) @ X0)
% 0.90/1.14          | (r1_tarski @ (k10_relat_1 @ sk_C @ sk_A) @ X0))),
% 0.90/1.14      inference('sup-', [status(thm)], ['47', '48'])).
% 0.90/1.14  thf('50', plain,
% 0.90/1.14      (![X0 : $i]:
% 0.90/1.14         (r1_tarski @ (k10_relat_1 @ sk_C @ sk_A) @ 
% 0.90/1.14          (k2_xboole_0 @ (k10_relat_1 @ sk_C @ sk_B) @ X0))),
% 0.90/1.14      inference('sup-', [status(thm)], ['44', '49'])).
% 0.90/1.14  thf('51', plain,
% 0.90/1.14      (![X10 : $i, X11 : $i, X12 : $i]:
% 0.90/1.14         ((r1_tarski @ (k6_subset_1 @ X10 @ X11) @ X12)
% 0.90/1.14          | ~ (r1_tarski @ X10 @ (k2_xboole_0 @ X11 @ X12)))),
% 0.90/1.14      inference('demod', [status(thm)], ['8', '9'])).
% 0.90/1.14  thf('52', plain,
% 0.90/1.14      (![X0 : $i]:
% 0.90/1.14         (r1_tarski @ 
% 0.90/1.14          (k6_subset_1 @ (k10_relat_1 @ sk_C @ sk_A) @ 
% 0.90/1.14           (k10_relat_1 @ sk_C @ sk_B)) @ 
% 0.90/1.14          X0)),
% 0.90/1.14      inference('sup-', [status(thm)], ['50', '51'])).
% 0.90/1.14  thf('53', plain,
% 0.90/1.14      (![X0 : $i]:
% 0.90/1.14         ((r1_tarski @ (k10_relat_1 @ sk_C @ (k6_subset_1 @ sk_A @ sk_B)) @ X0)
% 0.90/1.14          | ~ (v1_relat_1 @ sk_C)
% 0.90/1.14          | ~ (v1_funct_1 @ sk_C))),
% 0.90/1.14      inference('sup+', [status(thm)], ['43', '52'])).
% 0.90/1.14  thf('54', plain, ((v1_relat_1 @ sk_C)),
% 0.90/1.14      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.90/1.14  thf('55', plain, ((v1_funct_1 @ sk_C)),
% 0.90/1.14      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.90/1.14  thf('56', plain,
% 0.90/1.14      (![X0 : $i]:
% 0.90/1.14         (r1_tarski @ (k10_relat_1 @ sk_C @ (k6_subset_1 @ sk_A @ sk_B)) @ X0)),
% 0.90/1.14      inference('demod', [status(thm)], ['53', '54', '55'])).
% 0.90/1.14  thf('57', plain,
% 0.90/1.14      (![X0 : $i]:
% 0.90/1.14         (~ (r1_tarski @ X0 @ (k6_subset_1 @ sk_A @ (k2_relat_1 @ sk_C)))
% 0.90/1.14          | ((X0) = (k6_subset_1 @ sk_A @ (k2_relat_1 @ sk_C))))),
% 0.90/1.14      inference('sup-', [status(thm)], ['20', '21'])).
% 0.90/1.14  thf('58', plain,
% 0.90/1.14      (((k10_relat_1 @ sk_C @ (k6_subset_1 @ sk_A @ sk_B))
% 0.90/1.14         = (k6_subset_1 @ sk_A @ (k2_relat_1 @ sk_C)))),
% 0.90/1.14      inference('sup-', [status(thm)], ['56', '57'])).
% 0.90/1.14  thf('59', plain,
% 0.90/1.14      (![X0 : $i]:
% 0.90/1.14         ((k9_relat_1 @ sk_C @ (k10_relat_1 @ sk_C @ (k6_subset_1 @ sk_A @ X0)))
% 0.90/1.14           = (k6_subset_1 @ sk_A @ X0))),
% 0.90/1.14      inference('demod', [status(thm)], ['38', '39', '40'])).
% 0.90/1.14  thf('60', plain,
% 0.90/1.14      (((k9_relat_1 @ sk_C @ (k6_subset_1 @ sk_A @ (k2_relat_1 @ sk_C)))
% 0.90/1.14         = (k6_subset_1 @ sk_A @ sk_B))),
% 0.90/1.14      inference('sup+', [status(thm)], ['58', '59'])).
% 0.90/1.14  thf('61', plain, ((v1_funct_1 @ sk_C)),
% 0.90/1.14      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.90/1.14  thf('62', plain, ((v1_relat_1 @ sk_C)),
% 0.90/1.14      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.90/1.14  thf('63', plain,
% 0.90/1.14      (((k6_subset_1 @ sk_A @ sk_B) = (k6_subset_1 @ sk_A @ sk_A))),
% 0.90/1.14      inference('demod', [status(thm)], ['42', '60', '61', '62'])).
% 0.90/1.14  thf('64', plain,
% 0.90/1.14      (![X0 : $i, X1 : $i]: (r1_tarski @ (k6_subset_1 @ X1 @ X1) @ X0)),
% 0.90/1.14      inference('sup-', [status(thm)], ['7', '10'])).
% 0.90/1.14  thf('65', plain,
% 0.90/1.14      (![X0 : $i]: (r1_tarski @ (k6_subset_1 @ sk_A @ sk_B) @ X0)),
% 0.90/1.14      inference('sup+', [status(thm)], ['63', '64'])).
% 0.90/1.14  thf('66', plain,
% 0.90/1.14      (![X13 : $i, X14 : $i, X15 : $i]:
% 0.90/1.14         ((r1_tarski @ X13 @ (k2_xboole_0 @ X14 @ X15))
% 0.90/1.14          | ~ (r1_tarski @ (k6_subset_1 @ X13 @ X14) @ X15))),
% 0.90/1.14      inference('demod', [status(thm)], ['29', '30'])).
% 0.90/1.14  thf('67', plain,
% 0.90/1.14      (![X0 : $i]: (r1_tarski @ sk_A @ (k2_xboole_0 @ sk_B @ X0))),
% 0.90/1.14      inference('sup-', [status(thm)], ['65', '66'])).
% 0.90/1.14  thf('68', plain, ((r1_tarski @ sk_A @ sk_B)),
% 0.90/1.14      inference('sup+', [status(thm)], ['4', '67'])).
% 0.90/1.14  thf('69', plain, ($false), inference('demod', [status(thm)], ['0', '68'])).
% 0.90/1.14  
% 0.90/1.14  % SZS output end Refutation
% 0.90/1.14  
% 0.90/1.15  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
