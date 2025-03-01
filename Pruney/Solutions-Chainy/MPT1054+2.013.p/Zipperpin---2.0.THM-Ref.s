%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.Ikpy4KTuMw

% Computer   : n003.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:59:28 EST 2020

% Result     : Theorem 0.22s
% Output     : Refutation 0.22s
% Verified   : 
% Statistics : Number of formulae       :  110 ( 244 expanded)
%              Number of leaves         :   41 ( 102 expanded)
%              Depth                    :   11
%              Number of atoms          :  674 (1525 expanded)
%              Number of equality atoms :   59 ( 148 expanded)
%              Maximal formula depth    :   11 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(k10_relat_1_type,type,(
    k10_relat_1: $i > $i > $i )).

thf(k6_partfun1_type,type,(
    k6_partfun1: $i > $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(k6_relat_1_type,type,(
    k6_relat_1: $i > $i )).

thf(k7_relat_1_type,type,(
    k7_relat_1: $i > $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k2_funct_1_type,type,(
    k2_funct_1: $i > $i )).

thf(k2_zfmisc_1_type,type,(
    k2_zfmisc_1: $i > $i > $i )).

thf(v1_xboole_0_type,type,(
    v1_xboole_0: $i > $o )).

thf(k1_relat_1_type,type,(
    k1_relat_1: $i > $i )).

thf(v2_funct_1_type,type,(
    v2_funct_1: $i > $o )).

thf(k8_relset_1_type,type,(
    k8_relset_1: $i > $i > $i > $i > $i )).

thf(v1_funct_1_type,type,(
    v1_funct_1: $i > $o )).

thf(v1_partfun1_type,type,(
    v1_partfun1: $i > $i > $o )).

thf(v4_relat_1_type,type,(
    v4_relat_1: $i > $i > $o )).

thf(v5_relat_1_type,type,(
    v5_relat_1: $i > $i > $o )).

thf(k9_relat_1_type,type,(
    k9_relat_1: $i > $i > $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(k5_relat_1_type,type,(
    k5_relat_1: $i > $i > $i )).

thf(k2_relat_1_type,type,(
    k2_relat_1: $i > $i )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(fc24_relat_1,axiom,(
    ! [A: $i] :
      ( ( v5_relat_1 @ ( k6_relat_1 @ A ) @ A )
      & ( v4_relat_1 @ ( k6_relat_1 @ A ) @ A )
      & ( v1_relat_1 @ ( k6_relat_1 @ A ) ) ) )).

thf('0',plain,(
    ! [X23: $i] :
      ( v4_relat_1 @ ( k6_relat_1 @ X23 ) @ X23 ) ),
    inference(cnf,[status(esa)],[fc24_relat_1])).

thf(redefinition_k6_partfun1,axiom,(
    ! [A: $i] :
      ( ( k6_partfun1 @ A )
      = ( k6_relat_1 @ A ) ) )).

thf('1',plain,(
    ! [X38: $i] :
      ( ( k6_partfun1 @ X38 )
      = ( k6_relat_1 @ X38 ) ) ),
    inference(cnf,[status(esa)],[redefinition_k6_partfun1])).

thf('2',plain,(
    ! [X23: $i] :
      ( v4_relat_1 @ ( k6_partfun1 @ X23 ) @ X23 ) ),
    inference(demod,[status(thm)],['0','1'])).

thf(t209_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( v1_relat_1 @ B )
        & ( v4_relat_1 @ B @ A ) )
     => ( B
        = ( k7_relat_1 @ B @ A ) ) ) )).

thf('3',plain,(
    ! [X13: $i,X14: $i] :
      ( ( X13
        = ( k7_relat_1 @ X13 @ X14 ) )
      | ~ ( v4_relat_1 @ X13 @ X14 )
      | ~ ( v1_relat_1 @ X13 ) ) ),
    inference(cnf,[status(esa)],[t209_relat_1])).

thf('4',plain,(
    ! [X0: $i] :
      ( ~ ( v1_relat_1 @ ( k6_partfun1 @ X0 ) )
      | ( ( k6_partfun1 @ X0 )
        = ( k7_relat_1 @ ( k6_partfun1 @ X0 ) @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['2','3'])).

thf('5',plain,(
    ! [X22: $i] :
      ( v1_relat_1 @ ( k6_relat_1 @ X22 ) ) ),
    inference(cnf,[status(esa)],[fc24_relat_1])).

thf('6',plain,(
    ! [X38: $i] :
      ( ( k6_partfun1 @ X38 )
      = ( k6_relat_1 @ X38 ) ) ),
    inference(cnf,[status(esa)],[redefinition_k6_partfun1])).

thf('7',plain,(
    ! [X22: $i] :
      ( v1_relat_1 @ ( k6_partfun1 @ X22 ) ) ),
    inference(demod,[status(thm)],['5','6'])).

thf('8',plain,(
    ! [X0: $i] :
      ( ( k6_partfun1 @ X0 )
      = ( k7_relat_1 @ ( k6_partfun1 @ X0 ) @ X0 ) ) ),
    inference(demod,[status(thm)],['4','7'])).

thf(t148_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( ( k2_relat_1 @ ( k7_relat_1 @ B @ A ) )
        = ( k9_relat_1 @ B @ A ) ) ) )).

thf('9',plain,(
    ! [X8: $i,X9: $i] :
      ( ( ( k2_relat_1 @ ( k7_relat_1 @ X8 @ X9 ) )
        = ( k9_relat_1 @ X8 @ X9 ) )
      | ~ ( v1_relat_1 @ X8 ) ) ),
    inference(cnf,[status(esa)],[t148_relat_1])).

thf('10',plain,(
    ! [X0: $i] :
      ( ( ( k2_relat_1 @ ( k6_partfun1 @ X0 ) )
        = ( k9_relat_1 @ ( k6_partfun1 @ X0 ) @ X0 ) )
      | ~ ( v1_relat_1 @ ( k6_partfun1 @ X0 ) ) ) ),
    inference('sup+',[status(thm)],['8','9'])).

thf(t71_relat_1,axiom,(
    ! [A: $i] :
      ( ( ( k2_relat_1 @ ( k6_relat_1 @ A ) )
        = A )
      & ( ( k1_relat_1 @ ( k6_relat_1 @ A ) )
        = A ) ) )).

thf('11',plain,(
    ! [X19: $i] :
      ( ( k2_relat_1 @ ( k6_relat_1 @ X19 ) )
      = X19 ) ),
    inference(cnf,[status(esa)],[t71_relat_1])).

thf('12',plain,(
    ! [X38: $i] :
      ( ( k6_partfun1 @ X38 )
      = ( k6_relat_1 @ X38 ) ) ),
    inference(cnf,[status(esa)],[redefinition_k6_partfun1])).

thf('13',plain,(
    ! [X19: $i] :
      ( ( k2_relat_1 @ ( k6_partfun1 @ X19 ) )
      = X19 ) ),
    inference(demod,[status(thm)],['11','12'])).

thf('14',plain,(
    ! [X22: $i] :
      ( v1_relat_1 @ ( k6_partfun1 @ X22 ) ) ),
    inference(demod,[status(thm)],['5','6'])).

thf('15',plain,(
    ! [X0: $i] :
      ( X0
      = ( k9_relat_1 @ ( k6_partfun1 @ X0 ) @ X0 ) ) ),
    inference(demod,[status(thm)],['10','13','14'])).

thf(t171_funct_2,conjecture,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) )
     => ( ( k8_relset_1 @ A @ A @ ( k6_partfun1 @ A ) @ B )
        = B ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i] :
        ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) )
       => ( ( k8_relset_1 @ A @ A @ ( k6_partfun1 @ A ) @ B )
          = B ) ) ),
    inference('cnf.neg',[status(esa)],[t171_funct_2])).

thf('16',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t2_subset,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ A @ B )
     => ( ( v1_xboole_0 @ B )
        | ( r2_hidden @ A @ B ) ) ) )).

thf('17',plain,(
    ! [X6: $i,X7: $i] :
      ( ( r2_hidden @ X6 @ X7 )
      | ( v1_xboole_0 @ X7 )
      | ~ ( m1_subset_1 @ X6 @ X7 ) ) ),
    inference(cnf,[status(esa)],[t2_subset])).

thf('18',plain,
    ( ( v1_xboole_0 @ ( k1_zfmisc_1 @ sk_A ) )
    | ( r2_hidden @ sk_B @ ( k1_zfmisc_1 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['16','17'])).

thf(fc1_subset_1,axiom,(
    ! [A: $i] :
      ~ ( v1_xboole_0 @ ( k1_zfmisc_1 @ A ) ) )).

thf('19',plain,(
    ! [X5: $i] :
      ~ ( v1_xboole_0 @ ( k1_zfmisc_1 @ X5 ) ) ),
    inference(cnf,[status(esa)],[fc1_subset_1])).

thf('20',plain,(
    r2_hidden @ sk_B @ ( k1_zfmisc_1 @ sk_A ) ),
    inference(clc,[status(thm)],['18','19'])).

thf(d1_zfmisc_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( B
        = ( k1_zfmisc_1 @ A ) )
    <=> ! [C: $i] :
          ( ( r2_hidden @ C @ B )
        <=> ( r1_tarski @ C @ A ) ) ) )).

thf('21',plain,(
    ! [X1: $i,X2: $i,X3: $i] :
      ( ~ ( r2_hidden @ X3 @ X2 )
      | ( r1_tarski @ X3 @ X1 )
      | ( X2
       != ( k1_zfmisc_1 @ X1 ) ) ) ),
    inference(cnf,[status(esa)],[d1_zfmisc_1])).

thf('22',plain,(
    ! [X1: $i,X3: $i] :
      ( ( r1_tarski @ X3 @ X1 )
      | ~ ( r2_hidden @ X3 @ ( k1_zfmisc_1 @ X1 ) ) ) ),
    inference(simplify,[status(thm)],['21'])).

thf('23',plain,(
    r1_tarski @ sk_B @ sk_A ),
    inference('sup-',[status(thm)],['20','22'])).

thf('24',plain,(
    ! [X18: $i] :
      ( ( k1_relat_1 @ ( k6_relat_1 @ X18 ) )
      = X18 ) ),
    inference(cnf,[status(esa)],[t71_relat_1])).

thf('25',plain,(
    ! [X38: $i] :
      ( ( k6_partfun1 @ X38 )
      = ( k6_relat_1 @ X38 ) ) ),
    inference(cnf,[status(esa)],[redefinition_k6_partfun1])).

thf('26',plain,(
    ! [X18: $i] :
      ( ( k1_relat_1 @ ( k6_partfun1 @ X18 ) )
      = X18 ) ),
    inference(demod,[status(thm)],['24','25'])).

thf(t77_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( ( r1_tarski @ ( k1_relat_1 @ B ) @ A )
       => ( ( k5_relat_1 @ ( k6_relat_1 @ A ) @ B )
          = B ) ) ) )).

thf('27',plain,(
    ! [X20: $i,X21: $i] :
      ( ~ ( r1_tarski @ ( k1_relat_1 @ X20 ) @ X21 )
      | ( ( k5_relat_1 @ ( k6_relat_1 @ X21 ) @ X20 )
        = X20 )
      | ~ ( v1_relat_1 @ X20 ) ) ),
    inference(cnf,[status(esa)],[t77_relat_1])).

thf('28',plain,(
    ! [X38: $i] :
      ( ( k6_partfun1 @ X38 )
      = ( k6_relat_1 @ X38 ) ) ),
    inference(cnf,[status(esa)],[redefinition_k6_partfun1])).

thf('29',plain,(
    ! [X20: $i,X21: $i] :
      ( ~ ( r1_tarski @ ( k1_relat_1 @ X20 ) @ X21 )
      | ( ( k5_relat_1 @ ( k6_partfun1 @ X21 ) @ X20 )
        = X20 )
      | ~ ( v1_relat_1 @ X20 ) ) ),
    inference(demod,[status(thm)],['27','28'])).

thf('30',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( r1_tarski @ X0 @ X1 )
      | ~ ( v1_relat_1 @ ( k6_partfun1 @ X0 ) )
      | ( ( k5_relat_1 @ ( k6_partfun1 @ X1 ) @ ( k6_partfun1 @ X0 ) )
        = ( k6_partfun1 @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['26','29'])).

thf('31',plain,(
    ! [X22: $i] :
      ( v1_relat_1 @ ( k6_partfun1 @ X22 ) ) ),
    inference(demod,[status(thm)],['5','6'])).

thf('32',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( r1_tarski @ X0 @ X1 )
      | ( ( k5_relat_1 @ ( k6_partfun1 @ X1 ) @ ( k6_partfun1 @ X0 ) )
        = ( k6_partfun1 @ X0 ) ) ) ),
    inference(demod,[status(thm)],['30','31'])).

thf('33',plain,
    ( ( k5_relat_1 @ ( k6_partfun1 @ sk_A ) @ ( k6_partfun1 @ sk_B ) )
    = ( k6_partfun1 @ sk_B ) ),
    inference('sup-',[status(thm)],['23','32'])).

thf(t67_funct_1,axiom,(
    ! [A: $i] :
      ( ( k2_funct_1 @ ( k6_relat_1 @ A ) )
      = ( k6_relat_1 @ A ) ) )).

thf('34',plain,(
    ! [X31: $i] :
      ( ( k2_funct_1 @ ( k6_relat_1 @ X31 ) )
      = ( k6_relat_1 @ X31 ) ) ),
    inference(cnf,[status(esa)],[t67_funct_1])).

thf('35',plain,(
    ! [X38: $i] :
      ( ( k6_partfun1 @ X38 )
      = ( k6_relat_1 @ X38 ) ) ),
    inference(cnf,[status(esa)],[redefinition_k6_partfun1])).

thf('36',plain,(
    ! [X38: $i] :
      ( ( k6_partfun1 @ X38 )
      = ( k6_relat_1 @ X38 ) ) ),
    inference(cnf,[status(esa)],[redefinition_k6_partfun1])).

thf('37',plain,(
    ! [X31: $i] :
      ( ( k2_funct_1 @ ( k6_partfun1 @ X31 ) )
      = ( k6_partfun1 @ X31 ) ) ),
    inference(demod,[status(thm)],['34','35','36'])).

thf(t155_funct_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( v1_relat_1 @ B )
        & ( v1_funct_1 @ B ) )
     => ( ( v2_funct_1 @ B )
       => ( ( k10_relat_1 @ B @ A )
          = ( k9_relat_1 @ ( k2_funct_1 @ B ) @ A ) ) ) ) )).

thf('38',plain,(
    ! [X29: $i,X30: $i] :
      ( ~ ( v2_funct_1 @ X29 )
      | ( ( k10_relat_1 @ X29 @ X30 )
        = ( k9_relat_1 @ ( k2_funct_1 @ X29 ) @ X30 ) )
      | ~ ( v1_funct_1 @ X29 )
      | ~ ( v1_relat_1 @ X29 ) ) ),
    inference(cnf,[status(esa)],[t155_funct_1])).

thf('39',plain,(
    ! [X0: $i,X1: $i] :
      ( ( ( k10_relat_1 @ ( k6_partfun1 @ X0 ) @ X1 )
        = ( k9_relat_1 @ ( k6_partfun1 @ X0 ) @ X1 ) )
      | ~ ( v1_relat_1 @ ( k6_partfun1 @ X0 ) )
      | ~ ( v1_funct_1 @ ( k6_partfun1 @ X0 ) )
      | ~ ( v2_funct_1 @ ( k6_partfun1 @ X0 ) ) ) ),
    inference('sup+',[status(thm)],['37','38'])).

thf('40',plain,(
    ! [X22: $i] :
      ( v1_relat_1 @ ( k6_partfun1 @ X22 ) ) ),
    inference(demod,[status(thm)],['5','6'])).

thf(fc3_funct_1,axiom,(
    ! [A: $i] :
      ( ( v1_funct_1 @ ( k6_relat_1 @ A ) )
      & ( v1_relat_1 @ ( k6_relat_1 @ A ) ) ) )).

thf('41',plain,(
    ! [X26: $i] :
      ( v1_funct_1 @ ( k6_relat_1 @ X26 ) ) ),
    inference(cnf,[status(esa)],[fc3_funct_1])).

thf('42',plain,(
    ! [X38: $i] :
      ( ( k6_partfun1 @ X38 )
      = ( k6_relat_1 @ X38 ) ) ),
    inference(cnf,[status(esa)],[redefinition_k6_partfun1])).

thf('43',plain,(
    ! [X26: $i] :
      ( v1_funct_1 @ ( k6_partfun1 @ X26 ) ) ),
    inference(demod,[status(thm)],['41','42'])).

thf(fc4_funct_1,axiom,(
    ! [A: $i] :
      ( ( v2_funct_1 @ ( k6_relat_1 @ A ) )
      & ( v1_relat_1 @ ( k6_relat_1 @ A ) ) ) )).

thf('44',plain,(
    ! [X28: $i] :
      ( v2_funct_1 @ ( k6_relat_1 @ X28 ) ) ),
    inference(cnf,[status(esa)],[fc4_funct_1])).

thf('45',plain,(
    ! [X38: $i] :
      ( ( k6_partfun1 @ X38 )
      = ( k6_relat_1 @ X38 ) ) ),
    inference(cnf,[status(esa)],[redefinition_k6_partfun1])).

thf('46',plain,(
    ! [X28: $i] :
      ( v2_funct_1 @ ( k6_partfun1 @ X28 ) ) ),
    inference(demod,[status(thm)],['44','45'])).

thf('47',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k10_relat_1 @ ( k6_partfun1 @ X0 ) @ X1 )
      = ( k9_relat_1 @ ( k6_partfun1 @ X0 ) @ X1 ) ) ),
    inference(demod,[status(thm)],['39','40','43','46'])).

thf(t181_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ! [C: $i] :
          ( ( v1_relat_1 @ C )
         => ( ( k10_relat_1 @ ( k5_relat_1 @ B @ C ) @ A )
            = ( k10_relat_1 @ B @ ( k10_relat_1 @ C @ A ) ) ) ) ) )).

thf('48',plain,(
    ! [X10: $i,X11: $i,X12: $i] :
      ( ~ ( v1_relat_1 @ X10 )
      | ( ( k10_relat_1 @ ( k5_relat_1 @ X11 @ X10 ) @ X12 )
        = ( k10_relat_1 @ X11 @ ( k10_relat_1 @ X10 @ X12 ) ) )
      | ~ ( v1_relat_1 @ X11 ) ) ),
    inference(cnf,[status(esa)],[t181_relat_1])).

thf('49',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( ( k10_relat_1 @ ( k5_relat_1 @ ( k6_partfun1 @ X2 ) @ X1 ) @ X0 )
        = ( k9_relat_1 @ ( k6_partfun1 @ X2 ) @ ( k10_relat_1 @ X1 @ X0 ) ) )
      | ~ ( v1_relat_1 @ ( k6_partfun1 @ X2 ) )
      | ~ ( v1_relat_1 @ X1 ) ) ),
    inference('sup+',[status(thm)],['47','48'])).

thf('50',plain,(
    ! [X22: $i] :
      ( v1_relat_1 @ ( k6_partfun1 @ X22 ) ) ),
    inference(demod,[status(thm)],['5','6'])).

thf('51',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( ( k10_relat_1 @ ( k5_relat_1 @ ( k6_partfun1 @ X2 ) @ X1 ) @ X0 )
        = ( k9_relat_1 @ ( k6_partfun1 @ X2 ) @ ( k10_relat_1 @ X1 @ X0 ) ) )
      | ~ ( v1_relat_1 @ X1 ) ) ),
    inference(demod,[status(thm)],['49','50'])).

thf('52',plain,(
    ! [X0: $i] :
      ( ( ( k10_relat_1 @ ( k6_partfun1 @ sk_B ) @ X0 )
        = ( k9_relat_1 @ ( k6_partfun1 @ sk_A ) @ ( k10_relat_1 @ ( k6_partfun1 @ sk_B ) @ X0 ) ) )
      | ~ ( v1_relat_1 @ ( k6_partfun1 @ sk_B ) ) ) ),
    inference('sup+',[status(thm)],['33','51'])).

thf('53',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k10_relat_1 @ ( k6_partfun1 @ X0 ) @ X1 )
      = ( k9_relat_1 @ ( k6_partfun1 @ X0 ) @ X1 ) ) ),
    inference(demod,[status(thm)],['39','40','43','46'])).

thf('54',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k10_relat_1 @ ( k6_partfun1 @ X0 ) @ X1 )
      = ( k9_relat_1 @ ( k6_partfun1 @ X0 ) @ X1 ) ) ),
    inference(demod,[status(thm)],['39','40','43','46'])).

thf('55',plain,(
    ! [X22: $i] :
      ( v1_relat_1 @ ( k6_partfun1 @ X22 ) ) ),
    inference(demod,[status(thm)],['5','6'])).

thf('56',plain,(
    ! [X0: $i] :
      ( ( k9_relat_1 @ ( k6_partfun1 @ sk_B ) @ X0 )
      = ( k9_relat_1 @ ( k6_partfun1 @ sk_A ) @ ( k9_relat_1 @ ( k6_partfun1 @ sk_B ) @ X0 ) ) ) ),
    inference(demod,[status(thm)],['52','53','54','55'])).

thf('57',plain,
    ( ( k9_relat_1 @ ( k6_partfun1 @ sk_B ) @ sk_B )
    = ( k9_relat_1 @ ( k6_partfun1 @ sk_A ) @ sk_B ) ),
    inference('sup+',[status(thm)],['15','56'])).

thf('58',plain,(
    ! [X0: $i] :
      ( X0
      = ( k9_relat_1 @ ( k6_partfun1 @ X0 ) @ X0 ) ) ),
    inference(demod,[status(thm)],['10','13','14'])).

thf('59',plain,
    ( sk_B
    = ( k9_relat_1 @ ( k6_partfun1 @ sk_A ) @ sk_B ) ),
    inference(demod,[status(thm)],['57','58'])).

thf('60',plain,(
    ( k8_relset_1 @ sk_A @ sk_A @ ( k6_partfun1 @ sk_A ) @ sk_B )
 != sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(dt_k6_partfun1,axiom,(
    ! [A: $i] :
      ( ( m1_subset_1 @ ( k6_partfun1 @ A ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ A ) ) )
      & ( v1_partfun1 @ ( k6_partfun1 @ A ) @ A ) ) )).

thf('61',plain,(
    ! [X37: $i] :
      ( m1_subset_1 @ ( k6_partfun1 @ X37 ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X37 @ X37 ) ) ) ),
    inference(cnf,[status(esa)],[dt_k6_partfun1])).

thf(redefinition_k8_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( k8_relset_1 @ A @ B @ C @ D )
        = ( k10_relat_1 @ C @ D ) ) ) )).

thf('62',plain,(
    ! [X32: $i,X33: $i,X34: $i,X35: $i] :
      ( ~ ( m1_subset_1 @ X32 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X33 @ X34 ) ) )
      | ( ( k8_relset_1 @ X33 @ X34 @ X32 @ X35 )
        = ( k10_relat_1 @ X32 @ X35 ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k8_relset_1])).

thf('63',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k8_relset_1 @ X0 @ X0 @ ( k6_partfun1 @ X0 ) @ X1 )
      = ( k10_relat_1 @ ( k6_partfun1 @ X0 ) @ X1 ) ) ),
    inference('sup-',[status(thm)],['61','62'])).

thf('64',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k10_relat_1 @ ( k6_partfun1 @ X0 ) @ X1 )
      = ( k9_relat_1 @ ( k6_partfun1 @ X0 ) @ X1 ) ) ),
    inference(demod,[status(thm)],['39','40','43','46'])).

thf('65',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k8_relset_1 @ X0 @ X0 @ ( k6_partfun1 @ X0 ) @ X1 )
      = ( k9_relat_1 @ ( k6_partfun1 @ X0 ) @ X1 ) ) ),
    inference(demod,[status(thm)],['63','64'])).

thf('66',plain,(
    ( k9_relat_1 @ ( k6_partfun1 @ sk_A ) @ sk_B )
 != sk_B ),
    inference(demod,[status(thm)],['60','65'])).

thf('67',plain,(
    $false ),
    inference('simplify_reflect-',[status(thm)],['59','66'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.14  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.16  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.Ikpy4KTuMw
% 0.17/0.36  % Computer   : n003.cluster.edu
% 0.17/0.36  % Model      : x86_64 x86_64
% 0.17/0.36  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.17/0.36  % Memory     : 8042.1875MB
% 0.17/0.36  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.17/0.36  % CPULimit   : 60
% 0.17/0.36  % DateTime   : Tue Dec  1 17:23:42 EST 2020
% 0.17/0.36  % CPUTime    : 
% 0.17/0.36  % Running portfolio for 600 s
% 0.17/0.36  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.17/0.36  % Number of cores: 8
% 0.17/0.37  % Python version: Python 3.6.8
% 0.17/0.37  % Running in FO mode
% 0.22/0.46  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.22/0.46  % Solved by: fo/fo7.sh
% 0.22/0.46  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.22/0.46  % done 60 iterations in 0.020s
% 0.22/0.46  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.22/0.46  % SZS output start Refutation
% 0.22/0.46  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.22/0.46  thf(k10_relat_1_type, type, k10_relat_1: $i > $i > $i).
% 0.22/0.46  thf(k6_partfun1_type, type, k6_partfun1: $i > $i).
% 0.22/0.46  thf(sk_B_type, type, sk_B: $i).
% 0.22/0.46  thf(k6_relat_1_type, type, k6_relat_1: $i > $i).
% 0.22/0.46  thf(k7_relat_1_type, type, k7_relat_1: $i > $i > $i).
% 0.22/0.46  thf(sk_A_type, type, sk_A: $i).
% 0.22/0.46  thf(k2_funct_1_type, type, k2_funct_1: $i > $i).
% 0.22/0.46  thf(k2_zfmisc_1_type, type, k2_zfmisc_1: $i > $i > $i).
% 0.22/0.46  thf(v1_xboole_0_type, type, v1_xboole_0: $i > $o).
% 0.22/0.46  thf(k1_relat_1_type, type, k1_relat_1: $i > $i).
% 0.22/0.46  thf(v2_funct_1_type, type, v2_funct_1: $i > $o).
% 0.22/0.46  thf(k8_relset_1_type, type, k8_relset_1: $i > $i > $i > $i > $i).
% 0.22/0.46  thf(v1_funct_1_type, type, v1_funct_1: $i > $o).
% 0.22/0.46  thf(v1_partfun1_type, type, v1_partfun1: $i > $i > $o).
% 0.22/0.46  thf(v4_relat_1_type, type, v4_relat_1: $i > $i > $o).
% 0.22/0.46  thf(v5_relat_1_type, type, v5_relat_1: $i > $i > $o).
% 0.22/0.46  thf(k9_relat_1_type, type, k9_relat_1: $i > $i > $i).
% 0.22/0.46  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.22/0.46  thf(k5_relat_1_type, type, k5_relat_1: $i > $i > $i).
% 0.22/0.46  thf(k2_relat_1_type, type, k2_relat_1: $i > $i).
% 0.22/0.46  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.22/0.46  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.22/0.46  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.22/0.46  thf(fc24_relat_1, axiom,
% 0.22/0.46    (![A:$i]:
% 0.22/0.46     ( ( v5_relat_1 @ ( k6_relat_1 @ A ) @ A ) & 
% 0.22/0.46       ( v4_relat_1 @ ( k6_relat_1 @ A ) @ A ) & 
% 0.22/0.46       ( v1_relat_1 @ ( k6_relat_1 @ A ) ) ))).
% 0.22/0.46  thf('0', plain, (![X23 : $i]: (v4_relat_1 @ (k6_relat_1 @ X23) @ X23)),
% 0.22/0.46      inference('cnf', [status(esa)], [fc24_relat_1])).
% 0.22/0.46  thf(redefinition_k6_partfun1, axiom,
% 0.22/0.46    (![A:$i]: ( ( k6_partfun1 @ A ) = ( k6_relat_1 @ A ) ))).
% 0.22/0.46  thf('1', plain, (![X38 : $i]: ((k6_partfun1 @ X38) = (k6_relat_1 @ X38))),
% 0.22/0.46      inference('cnf', [status(esa)], [redefinition_k6_partfun1])).
% 0.22/0.46  thf('2', plain, (![X23 : $i]: (v4_relat_1 @ (k6_partfun1 @ X23) @ X23)),
% 0.22/0.46      inference('demod', [status(thm)], ['0', '1'])).
% 0.22/0.46  thf(t209_relat_1, axiom,
% 0.22/0.46    (![A:$i,B:$i]:
% 0.22/0.46     ( ( ( v1_relat_1 @ B ) & ( v4_relat_1 @ B @ A ) ) =>
% 0.22/0.46       ( ( B ) = ( k7_relat_1 @ B @ A ) ) ))).
% 0.22/0.46  thf('3', plain,
% 0.22/0.46      (![X13 : $i, X14 : $i]:
% 0.22/0.46         (((X13) = (k7_relat_1 @ X13 @ X14))
% 0.22/0.46          | ~ (v4_relat_1 @ X13 @ X14)
% 0.22/0.46          | ~ (v1_relat_1 @ X13))),
% 0.22/0.46      inference('cnf', [status(esa)], [t209_relat_1])).
% 0.22/0.46  thf('4', plain,
% 0.22/0.46      (![X0 : $i]:
% 0.22/0.46         (~ (v1_relat_1 @ (k6_partfun1 @ X0))
% 0.22/0.46          | ((k6_partfun1 @ X0) = (k7_relat_1 @ (k6_partfun1 @ X0) @ X0)))),
% 0.22/0.46      inference('sup-', [status(thm)], ['2', '3'])).
% 0.22/0.46  thf('5', plain, (![X22 : $i]: (v1_relat_1 @ (k6_relat_1 @ X22))),
% 0.22/0.46      inference('cnf', [status(esa)], [fc24_relat_1])).
% 0.22/0.46  thf('6', plain, (![X38 : $i]: ((k6_partfun1 @ X38) = (k6_relat_1 @ X38))),
% 0.22/0.46      inference('cnf', [status(esa)], [redefinition_k6_partfun1])).
% 0.22/0.46  thf('7', plain, (![X22 : $i]: (v1_relat_1 @ (k6_partfun1 @ X22))),
% 0.22/0.46      inference('demod', [status(thm)], ['5', '6'])).
% 0.22/0.46  thf('8', plain,
% 0.22/0.46      (![X0 : $i]:
% 0.22/0.46         ((k6_partfun1 @ X0) = (k7_relat_1 @ (k6_partfun1 @ X0) @ X0))),
% 0.22/0.46      inference('demod', [status(thm)], ['4', '7'])).
% 0.22/0.46  thf(t148_relat_1, axiom,
% 0.22/0.46    (![A:$i,B:$i]:
% 0.22/0.46     ( ( v1_relat_1 @ B ) =>
% 0.22/0.46       ( ( k2_relat_1 @ ( k7_relat_1 @ B @ A ) ) = ( k9_relat_1 @ B @ A ) ) ))).
% 0.22/0.46  thf('9', plain,
% 0.22/0.46      (![X8 : $i, X9 : $i]:
% 0.22/0.46         (((k2_relat_1 @ (k7_relat_1 @ X8 @ X9)) = (k9_relat_1 @ X8 @ X9))
% 0.22/0.46          | ~ (v1_relat_1 @ X8))),
% 0.22/0.46      inference('cnf', [status(esa)], [t148_relat_1])).
% 0.22/0.46  thf('10', plain,
% 0.22/0.46      (![X0 : $i]:
% 0.22/0.46         (((k2_relat_1 @ (k6_partfun1 @ X0))
% 0.22/0.46            = (k9_relat_1 @ (k6_partfun1 @ X0) @ X0))
% 0.22/0.46          | ~ (v1_relat_1 @ (k6_partfun1 @ X0)))),
% 0.22/0.46      inference('sup+', [status(thm)], ['8', '9'])).
% 0.22/0.46  thf(t71_relat_1, axiom,
% 0.22/0.46    (![A:$i]:
% 0.22/0.46     ( ( ( k2_relat_1 @ ( k6_relat_1 @ A ) ) = ( A ) ) & 
% 0.22/0.46       ( ( k1_relat_1 @ ( k6_relat_1 @ A ) ) = ( A ) ) ))).
% 0.22/0.46  thf('11', plain, (![X19 : $i]: ((k2_relat_1 @ (k6_relat_1 @ X19)) = (X19))),
% 0.22/0.46      inference('cnf', [status(esa)], [t71_relat_1])).
% 0.22/0.46  thf('12', plain, (![X38 : $i]: ((k6_partfun1 @ X38) = (k6_relat_1 @ X38))),
% 0.22/0.46      inference('cnf', [status(esa)], [redefinition_k6_partfun1])).
% 0.22/0.46  thf('13', plain, (![X19 : $i]: ((k2_relat_1 @ (k6_partfun1 @ X19)) = (X19))),
% 0.22/0.46      inference('demod', [status(thm)], ['11', '12'])).
% 0.22/0.46  thf('14', plain, (![X22 : $i]: (v1_relat_1 @ (k6_partfun1 @ X22))),
% 0.22/0.46      inference('demod', [status(thm)], ['5', '6'])).
% 0.22/0.46  thf('15', plain,
% 0.22/0.46      (![X0 : $i]: ((X0) = (k9_relat_1 @ (k6_partfun1 @ X0) @ X0))),
% 0.22/0.46      inference('demod', [status(thm)], ['10', '13', '14'])).
% 0.22/0.46  thf(t171_funct_2, conjecture,
% 0.22/0.46    (![A:$i,B:$i]:
% 0.22/0.46     ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) ) =>
% 0.22/0.46       ( ( k8_relset_1 @ A @ A @ ( k6_partfun1 @ A ) @ B ) = ( B ) ) ))).
% 0.22/0.46  thf(zf_stmt_0, negated_conjecture,
% 0.22/0.46    (~( ![A:$i,B:$i]:
% 0.22/0.46        ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) ) =>
% 0.22/0.46          ( ( k8_relset_1 @ A @ A @ ( k6_partfun1 @ A ) @ B ) = ( B ) ) ) )),
% 0.22/0.46    inference('cnf.neg', [status(esa)], [t171_funct_2])).
% 0.22/0.46  thf('16', plain, ((m1_subset_1 @ sk_B @ (k1_zfmisc_1 @ sk_A))),
% 0.22/0.46      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.46  thf(t2_subset, axiom,
% 0.22/0.46    (![A:$i,B:$i]:
% 0.22/0.46     ( ( m1_subset_1 @ A @ B ) =>
% 0.22/0.46       ( ( v1_xboole_0 @ B ) | ( r2_hidden @ A @ B ) ) ))).
% 0.22/0.46  thf('17', plain,
% 0.22/0.46      (![X6 : $i, X7 : $i]:
% 0.22/0.46         ((r2_hidden @ X6 @ X7)
% 0.22/0.46          | (v1_xboole_0 @ X7)
% 0.22/0.46          | ~ (m1_subset_1 @ X6 @ X7))),
% 0.22/0.46      inference('cnf', [status(esa)], [t2_subset])).
% 0.22/0.46  thf('18', plain,
% 0.22/0.46      (((v1_xboole_0 @ (k1_zfmisc_1 @ sk_A))
% 0.22/0.46        | (r2_hidden @ sk_B @ (k1_zfmisc_1 @ sk_A)))),
% 0.22/0.46      inference('sup-', [status(thm)], ['16', '17'])).
% 0.22/0.46  thf(fc1_subset_1, axiom,
% 0.22/0.46    (![A:$i]: ( ~( v1_xboole_0 @ ( k1_zfmisc_1 @ A ) ) ))).
% 0.22/0.46  thf('19', plain, (![X5 : $i]: ~ (v1_xboole_0 @ (k1_zfmisc_1 @ X5))),
% 0.22/0.46      inference('cnf', [status(esa)], [fc1_subset_1])).
% 0.22/0.46  thf('20', plain, ((r2_hidden @ sk_B @ (k1_zfmisc_1 @ sk_A))),
% 0.22/0.46      inference('clc', [status(thm)], ['18', '19'])).
% 0.22/0.46  thf(d1_zfmisc_1, axiom,
% 0.22/0.46    (![A:$i,B:$i]:
% 0.22/0.46     ( ( ( B ) = ( k1_zfmisc_1 @ A ) ) <=>
% 0.22/0.46       ( ![C:$i]: ( ( r2_hidden @ C @ B ) <=> ( r1_tarski @ C @ A ) ) ) ))).
% 0.22/0.46  thf('21', plain,
% 0.22/0.46      (![X1 : $i, X2 : $i, X3 : $i]:
% 0.22/0.46         (~ (r2_hidden @ X3 @ X2)
% 0.22/0.46          | (r1_tarski @ X3 @ X1)
% 0.22/0.46          | ((X2) != (k1_zfmisc_1 @ X1)))),
% 0.22/0.46      inference('cnf', [status(esa)], [d1_zfmisc_1])).
% 0.22/0.46  thf('22', plain,
% 0.22/0.46      (![X1 : $i, X3 : $i]:
% 0.22/0.46         ((r1_tarski @ X3 @ X1) | ~ (r2_hidden @ X3 @ (k1_zfmisc_1 @ X1)))),
% 0.22/0.46      inference('simplify', [status(thm)], ['21'])).
% 0.22/0.46  thf('23', plain, ((r1_tarski @ sk_B @ sk_A)),
% 0.22/0.46      inference('sup-', [status(thm)], ['20', '22'])).
% 0.22/0.46  thf('24', plain, (![X18 : $i]: ((k1_relat_1 @ (k6_relat_1 @ X18)) = (X18))),
% 0.22/0.46      inference('cnf', [status(esa)], [t71_relat_1])).
% 0.22/0.46  thf('25', plain, (![X38 : $i]: ((k6_partfun1 @ X38) = (k6_relat_1 @ X38))),
% 0.22/0.46      inference('cnf', [status(esa)], [redefinition_k6_partfun1])).
% 0.22/0.46  thf('26', plain, (![X18 : $i]: ((k1_relat_1 @ (k6_partfun1 @ X18)) = (X18))),
% 0.22/0.46      inference('demod', [status(thm)], ['24', '25'])).
% 0.22/0.46  thf(t77_relat_1, axiom,
% 0.22/0.46    (![A:$i,B:$i]:
% 0.22/0.46     ( ( v1_relat_1 @ B ) =>
% 0.22/0.46       ( ( r1_tarski @ ( k1_relat_1 @ B ) @ A ) =>
% 0.22/0.46         ( ( k5_relat_1 @ ( k6_relat_1 @ A ) @ B ) = ( B ) ) ) ))).
% 0.22/0.46  thf('27', plain,
% 0.22/0.46      (![X20 : $i, X21 : $i]:
% 0.22/0.46         (~ (r1_tarski @ (k1_relat_1 @ X20) @ X21)
% 0.22/0.46          | ((k5_relat_1 @ (k6_relat_1 @ X21) @ X20) = (X20))
% 0.22/0.46          | ~ (v1_relat_1 @ X20))),
% 0.22/0.46      inference('cnf', [status(esa)], [t77_relat_1])).
% 0.22/0.46  thf('28', plain, (![X38 : $i]: ((k6_partfun1 @ X38) = (k6_relat_1 @ X38))),
% 0.22/0.46      inference('cnf', [status(esa)], [redefinition_k6_partfun1])).
% 0.22/0.46  thf('29', plain,
% 0.22/0.46      (![X20 : $i, X21 : $i]:
% 0.22/0.46         (~ (r1_tarski @ (k1_relat_1 @ X20) @ X21)
% 0.22/0.46          | ((k5_relat_1 @ (k6_partfun1 @ X21) @ X20) = (X20))
% 0.22/0.46          | ~ (v1_relat_1 @ X20))),
% 0.22/0.46      inference('demod', [status(thm)], ['27', '28'])).
% 0.22/0.46  thf('30', plain,
% 0.22/0.46      (![X0 : $i, X1 : $i]:
% 0.22/0.46         (~ (r1_tarski @ X0 @ X1)
% 0.22/0.46          | ~ (v1_relat_1 @ (k6_partfun1 @ X0))
% 0.22/0.46          | ((k5_relat_1 @ (k6_partfun1 @ X1) @ (k6_partfun1 @ X0))
% 0.22/0.46              = (k6_partfun1 @ X0)))),
% 0.22/0.46      inference('sup-', [status(thm)], ['26', '29'])).
% 0.22/0.46  thf('31', plain, (![X22 : $i]: (v1_relat_1 @ (k6_partfun1 @ X22))),
% 0.22/0.46      inference('demod', [status(thm)], ['5', '6'])).
% 0.22/0.46  thf('32', plain,
% 0.22/0.46      (![X0 : $i, X1 : $i]:
% 0.22/0.46         (~ (r1_tarski @ X0 @ X1)
% 0.22/0.46          | ((k5_relat_1 @ (k6_partfun1 @ X1) @ (k6_partfun1 @ X0))
% 0.22/0.46              = (k6_partfun1 @ X0)))),
% 0.22/0.46      inference('demod', [status(thm)], ['30', '31'])).
% 0.22/0.46  thf('33', plain,
% 0.22/0.46      (((k5_relat_1 @ (k6_partfun1 @ sk_A) @ (k6_partfun1 @ sk_B))
% 0.22/0.46         = (k6_partfun1 @ sk_B))),
% 0.22/0.46      inference('sup-', [status(thm)], ['23', '32'])).
% 0.22/0.46  thf(t67_funct_1, axiom,
% 0.22/0.46    (![A:$i]: ( ( k2_funct_1 @ ( k6_relat_1 @ A ) ) = ( k6_relat_1 @ A ) ))).
% 0.22/0.46  thf('34', plain,
% 0.22/0.46      (![X31 : $i]: ((k2_funct_1 @ (k6_relat_1 @ X31)) = (k6_relat_1 @ X31))),
% 0.22/0.46      inference('cnf', [status(esa)], [t67_funct_1])).
% 0.22/0.46  thf('35', plain, (![X38 : $i]: ((k6_partfun1 @ X38) = (k6_relat_1 @ X38))),
% 0.22/0.46      inference('cnf', [status(esa)], [redefinition_k6_partfun1])).
% 0.22/0.46  thf('36', plain, (![X38 : $i]: ((k6_partfun1 @ X38) = (k6_relat_1 @ X38))),
% 0.22/0.46      inference('cnf', [status(esa)], [redefinition_k6_partfun1])).
% 0.22/0.46  thf('37', plain,
% 0.22/0.46      (![X31 : $i]: ((k2_funct_1 @ (k6_partfun1 @ X31)) = (k6_partfun1 @ X31))),
% 0.22/0.46      inference('demod', [status(thm)], ['34', '35', '36'])).
% 0.22/0.46  thf(t155_funct_1, axiom,
% 0.22/0.46    (![A:$i,B:$i]:
% 0.22/0.46     ( ( ( v1_relat_1 @ B ) & ( v1_funct_1 @ B ) ) =>
% 0.22/0.46       ( ( v2_funct_1 @ B ) =>
% 0.22/0.46         ( ( k10_relat_1 @ B @ A ) = ( k9_relat_1 @ ( k2_funct_1 @ B ) @ A ) ) ) ))).
% 0.22/0.46  thf('38', plain,
% 0.22/0.46      (![X29 : $i, X30 : $i]:
% 0.22/0.46         (~ (v2_funct_1 @ X29)
% 0.22/0.46          | ((k10_relat_1 @ X29 @ X30)
% 0.22/0.46              = (k9_relat_1 @ (k2_funct_1 @ X29) @ X30))
% 0.22/0.46          | ~ (v1_funct_1 @ X29)
% 0.22/0.46          | ~ (v1_relat_1 @ X29))),
% 0.22/0.46      inference('cnf', [status(esa)], [t155_funct_1])).
% 0.22/0.46  thf('39', plain,
% 0.22/0.46      (![X0 : $i, X1 : $i]:
% 0.22/0.46         (((k10_relat_1 @ (k6_partfun1 @ X0) @ X1)
% 0.22/0.46            = (k9_relat_1 @ (k6_partfun1 @ X0) @ X1))
% 0.22/0.46          | ~ (v1_relat_1 @ (k6_partfun1 @ X0))
% 0.22/0.46          | ~ (v1_funct_1 @ (k6_partfun1 @ X0))
% 0.22/0.46          | ~ (v2_funct_1 @ (k6_partfun1 @ X0)))),
% 0.22/0.46      inference('sup+', [status(thm)], ['37', '38'])).
% 0.22/0.46  thf('40', plain, (![X22 : $i]: (v1_relat_1 @ (k6_partfun1 @ X22))),
% 0.22/0.46      inference('demod', [status(thm)], ['5', '6'])).
% 0.22/0.46  thf(fc3_funct_1, axiom,
% 0.22/0.46    (![A:$i]:
% 0.22/0.46     ( ( v1_funct_1 @ ( k6_relat_1 @ A ) ) & 
% 0.22/0.46       ( v1_relat_1 @ ( k6_relat_1 @ A ) ) ))).
% 0.22/0.46  thf('41', plain, (![X26 : $i]: (v1_funct_1 @ (k6_relat_1 @ X26))),
% 0.22/0.46      inference('cnf', [status(esa)], [fc3_funct_1])).
% 0.22/0.46  thf('42', plain, (![X38 : $i]: ((k6_partfun1 @ X38) = (k6_relat_1 @ X38))),
% 0.22/0.46      inference('cnf', [status(esa)], [redefinition_k6_partfun1])).
% 0.22/0.46  thf('43', plain, (![X26 : $i]: (v1_funct_1 @ (k6_partfun1 @ X26))),
% 0.22/0.46      inference('demod', [status(thm)], ['41', '42'])).
% 0.22/0.46  thf(fc4_funct_1, axiom,
% 0.22/0.46    (![A:$i]:
% 0.22/0.46     ( ( v2_funct_1 @ ( k6_relat_1 @ A ) ) & 
% 0.22/0.46       ( v1_relat_1 @ ( k6_relat_1 @ A ) ) ))).
% 0.22/0.46  thf('44', plain, (![X28 : $i]: (v2_funct_1 @ (k6_relat_1 @ X28))),
% 0.22/0.46      inference('cnf', [status(esa)], [fc4_funct_1])).
% 0.22/0.46  thf('45', plain, (![X38 : $i]: ((k6_partfun1 @ X38) = (k6_relat_1 @ X38))),
% 0.22/0.46      inference('cnf', [status(esa)], [redefinition_k6_partfun1])).
% 0.22/0.46  thf('46', plain, (![X28 : $i]: (v2_funct_1 @ (k6_partfun1 @ X28))),
% 0.22/0.46      inference('demod', [status(thm)], ['44', '45'])).
% 0.22/0.46  thf('47', plain,
% 0.22/0.46      (![X0 : $i, X1 : $i]:
% 0.22/0.46         ((k10_relat_1 @ (k6_partfun1 @ X0) @ X1)
% 0.22/0.46           = (k9_relat_1 @ (k6_partfun1 @ X0) @ X1))),
% 0.22/0.46      inference('demod', [status(thm)], ['39', '40', '43', '46'])).
% 0.22/0.46  thf(t181_relat_1, axiom,
% 0.22/0.46    (![A:$i,B:$i]:
% 0.22/0.46     ( ( v1_relat_1 @ B ) =>
% 0.22/0.46       ( ![C:$i]:
% 0.22/0.46         ( ( v1_relat_1 @ C ) =>
% 0.22/0.46           ( ( k10_relat_1 @ ( k5_relat_1 @ B @ C ) @ A ) =
% 0.22/0.46             ( k10_relat_1 @ B @ ( k10_relat_1 @ C @ A ) ) ) ) ) ))).
% 0.22/0.46  thf('48', plain,
% 0.22/0.46      (![X10 : $i, X11 : $i, X12 : $i]:
% 0.22/0.46         (~ (v1_relat_1 @ X10)
% 0.22/0.46          | ((k10_relat_1 @ (k5_relat_1 @ X11 @ X10) @ X12)
% 0.22/0.46              = (k10_relat_1 @ X11 @ (k10_relat_1 @ X10 @ X12)))
% 0.22/0.46          | ~ (v1_relat_1 @ X11))),
% 0.22/0.46      inference('cnf', [status(esa)], [t181_relat_1])).
% 0.22/0.46  thf('49', plain,
% 0.22/0.46      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.22/0.46         (((k10_relat_1 @ (k5_relat_1 @ (k6_partfun1 @ X2) @ X1) @ X0)
% 0.22/0.46            = (k9_relat_1 @ (k6_partfun1 @ X2) @ (k10_relat_1 @ X1 @ X0)))
% 0.22/0.46          | ~ (v1_relat_1 @ (k6_partfun1 @ X2))
% 0.22/0.46          | ~ (v1_relat_1 @ X1))),
% 0.22/0.46      inference('sup+', [status(thm)], ['47', '48'])).
% 0.22/0.46  thf('50', plain, (![X22 : $i]: (v1_relat_1 @ (k6_partfun1 @ X22))),
% 0.22/0.46      inference('demod', [status(thm)], ['5', '6'])).
% 0.22/0.46  thf('51', plain,
% 0.22/0.46      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.22/0.46         (((k10_relat_1 @ (k5_relat_1 @ (k6_partfun1 @ X2) @ X1) @ X0)
% 0.22/0.46            = (k9_relat_1 @ (k6_partfun1 @ X2) @ (k10_relat_1 @ X1 @ X0)))
% 0.22/0.46          | ~ (v1_relat_1 @ X1))),
% 0.22/0.46      inference('demod', [status(thm)], ['49', '50'])).
% 0.22/0.46  thf('52', plain,
% 0.22/0.46      (![X0 : $i]:
% 0.22/0.46         (((k10_relat_1 @ (k6_partfun1 @ sk_B) @ X0)
% 0.22/0.46            = (k9_relat_1 @ (k6_partfun1 @ sk_A) @ 
% 0.22/0.46               (k10_relat_1 @ (k6_partfun1 @ sk_B) @ X0)))
% 0.22/0.46          | ~ (v1_relat_1 @ (k6_partfun1 @ sk_B)))),
% 0.22/0.46      inference('sup+', [status(thm)], ['33', '51'])).
% 0.22/0.46  thf('53', plain,
% 0.22/0.46      (![X0 : $i, X1 : $i]:
% 0.22/0.46         ((k10_relat_1 @ (k6_partfun1 @ X0) @ X1)
% 0.22/0.46           = (k9_relat_1 @ (k6_partfun1 @ X0) @ X1))),
% 0.22/0.46      inference('demod', [status(thm)], ['39', '40', '43', '46'])).
% 0.22/0.46  thf('54', plain,
% 0.22/0.46      (![X0 : $i, X1 : $i]:
% 0.22/0.46         ((k10_relat_1 @ (k6_partfun1 @ X0) @ X1)
% 0.22/0.46           = (k9_relat_1 @ (k6_partfun1 @ X0) @ X1))),
% 0.22/0.46      inference('demod', [status(thm)], ['39', '40', '43', '46'])).
% 0.22/0.46  thf('55', plain, (![X22 : $i]: (v1_relat_1 @ (k6_partfun1 @ X22))),
% 0.22/0.46      inference('demod', [status(thm)], ['5', '6'])).
% 0.22/0.46  thf('56', plain,
% 0.22/0.46      (![X0 : $i]:
% 0.22/0.46         ((k9_relat_1 @ (k6_partfun1 @ sk_B) @ X0)
% 0.22/0.46           = (k9_relat_1 @ (k6_partfun1 @ sk_A) @ 
% 0.22/0.46              (k9_relat_1 @ (k6_partfun1 @ sk_B) @ X0)))),
% 0.22/0.46      inference('demod', [status(thm)], ['52', '53', '54', '55'])).
% 0.22/0.46  thf('57', plain,
% 0.22/0.46      (((k9_relat_1 @ (k6_partfun1 @ sk_B) @ sk_B)
% 0.22/0.46         = (k9_relat_1 @ (k6_partfun1 @ sk_A) @ sk_B))),
% 0.22/0.46      inference('sup+', [status(thm)], ['15', '56'])).
% 0.22/0.46  thf('58', plain,
% 0.22/0.46      (![X0 : $i]: ((X0) = (k9_relat_1 @ (k6_partfun1 @ X0) @ X0))),
% 0.22/0.46      inference('demod', [status(thm)], ['10', '13', '14'])).
% 0.22/0.46  thf('59', plain, (((sk_B) = (k9_relat_1 @ (k6_partfun1 @ sk_A) @ sk_B))),
% 0.22/0.46      inference('demod', [status(thm)], ['57', '58'])).
% 0.22/0.46  thf('60', plain,
% 0.22/0.46      (((k8_relset_1 @ sk_A @ sk_A @ (k6_partfun1 @ sk_A) @ sk_B) != (sk_B))),
% 0.22/0.46      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.46  thf(dt_k6_partfun1, axiom,
% 0.22/0.46    (![A:$i]:
% 0.22/0.46     ( ( m1_subset_1 @
% 0.22/0.46         ( k6_partfun1 @ A ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ A ) ) ) & 
% 0.22/0.46       ( v1_partfun1 @ ( k6_partfun1 @ A ) @ A ) ))).
% 0.22/0.46  thf('61', plain,
% 0.22/0.46      (![X37 : $i]:
% 0.22/0.46         (m1_subset_1 @ (k6_partfun1 @ X37) @ 
% 0.22/0.46          (k1_zfmisc_1 @ (k2_zfmisc_1 @ X37 @ X37)))),
% 0.22/0.46      inference('cnf', [status(esa)], [dt_k6_partfun1])).
% 0.22/0.46  thf(redefinition_k8_relset_1, axiom,
% 0.22/0.46    (![A:$i,B:$i,C:$i,D:$i]:
% 0.22/0.46     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.22/0.46       ( ( k8_relset_1 @ A @ B @ C @ D ) = ( k10_relat_1 @ C @ D ) ) ))).
% 0.22/0.46  thf('62', plain,
% 0.22/0.46      (![X32 : $i, X33 : $i, X34 : $i, X35 : $i]:
% 0.22/0.46         (~ (m1_subset_1 @ X32 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X33 @ X34)))
% 0.22/0.46          | ((k8_relset_1 @ X33 @ X34 @ X32 @ X35) = (k10_relat_1 @ X32 @ X35)))),
% 0.22/0.46      inference('cnf', [status(esa)], [redefinition_k8_relset_1])).
% 0.22/0.46  thf('63', plain,
% 0.22/0.46      (![X0 : $i, X1 : $i]:
% 0.22/0.46         ((k8_relset_1 @ X0 @ X0 @ (k6_partfun1 @ X0) @ X1)
% 0.22/0.46           = (k10_relat_1 @ (k6_partfun1 @ X0) @ X1))),
% 0.22/0.46      inference('sup-', [status(thm)], ['61', '62'])).
% 0.22/0.46  thf('64', plain,
% 0.22/0.46      (![X0 : $i, X1 : $i]:
% 0.22/0.46         ((k10_relat_1 @ (k6_partfun1 @ X0) @ X1)
% 0.22/0.46           = (k9_relat_1 @ (k6_partfun1 @ X0) @ X1))),
% 0.22/0.46      inference('demod', [status(thm)], ['39', '40', '43', '46'])).
% 0.22/0.46  thf('65', plain,
% 0.22/0.46      (![X0 : $i, X1 : $i]:
% 0.22/0.46         ((k8_relset_1 @ X0 @ X0 @ (k6_partfun1 @ X0) @ X1)
% 0.22/0.46           = (k9_relat_1 @ (k6_partfun1 @ X0) @ X1))),
% 0.22/0.46      inference('demod', [status(thm)], ['63', '64'])).
% 0.22/0.46  thf('66', plain, (((k9_relat_1 @ (k6_partfun1 @ sk_A) @ sk_B) != (sk_B))),
% 0.22/0.46      inference('demod', [status(thm)], ['60', '65'])).
% 0.22/0.46  thf('67', plain, ($false),
% 0.22/0.46      inference('simplify_reflect-', [status(thm)], ['59', '66'])).
% 0.22/0.46  
% 0.22/0.46  % SZS output end Refutation
% 0.22/0.46  
% 0.22/0.46  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
