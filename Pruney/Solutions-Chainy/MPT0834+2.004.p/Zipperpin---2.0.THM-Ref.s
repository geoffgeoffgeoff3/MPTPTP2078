%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.cYuXZrBERF

% Computer   : n024.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:49:38 EST 2020

% Result     : Theorem 0.22s
% Output     : Refutation 0.22s
% Verified   : 
% Statistics : Number of formulae       :  113 ( 231 expanded)
%              Number of leaves         :   39 (  84 expanded)
%              Depth                    :   13
%              Number of atoms          :  885 (2645 expanded)
%              Number of equality atoms :   77 ( 194 expanded)
%              Maximal formula depth    :   12 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k6_relat_1_type,type,(
    k6_relat_1: $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k1_relset_1_type,type,(
    k1_relset_1: $i > $i > $i > $i )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(k7_relset_1_type,type,(
    k7_relset_1: $i > $i > $i > $i > $i )).

thf(k7_relat_1_type,type,(
    k7_relat_1: $i > $i > $i )).

thf(k2_relset_1_type,type,(
    k2_relset_1: $i > $i > $i > $i )).

thf(v4_relat_1_type,type,(
    v4_relat_1: $i > $i > $o )).

thf(k5_relat_1_type,type,(
    k5_relat_1: $i > $i > $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(k8_relset_1_type,type,(
    k8_relset_1: $i > $i > $i > $i > $i )).

thf(v5_relat_1_type,type,(
    v5_relat_1: $i > $i > $o )).

thf(k9_relat_1_type,type,(
    k9_relat_1: $i > $i > $i )).

thf(k3_xboole_0_type,type,(
    k3_xboole_0: $i > $i > $i )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(k1_relat_1_type,type,(
    k1_relat_1: $i > $i )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(k2_zfmisc_1_type,type,(
    k2_zfmisc_1: $i > $i > $i )).

thf(k10_relat_1_type,type,(
    k10_relat_1: $i > $i > $i )).

thf(k2_relat_1_type,type,(
    k2_relat_1: $i > $i )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(t38_relset_1,conjecture,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( ( k7_relset_1 @ A @ B @ C @ A )
          = ( k2_relset_1 @ A @ B @ C ) )
        & ( ( k8_relset_1 @ A @ B @ C @ B )
          = ( k1_relset_1 @ A @ B @ C ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i] :
        ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
       => ( ( ( k7_relset_1 @ A @ B @ C @ A )
            = ( k2_relset_1 @ A @ B @ C ) )
          & ( ( k8_relset_1 @ A @ B @ C @ B )
            = ( k1_relset_1 @ A @ B @ C ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t38_relset_1])).

thf('0',plain,
    ( ( ( k7_relset_1 @ sk_A @ sk_B @ sk_C @ sk_A )
     != ( k2_relset_1 @ sk_A @ sk_B @ sk_C ) )
    | ( ( k8_relset_1 @ sk_A @ sk_B @ sk_C @ sk_B )
     != ( k1_relset_1 @ sk_A @ sk_B @ sk_C ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,
    ( ( ( k8_relset_1 @ sk_A @ sk_B @ sk_C @ sk_B )
     != ( k1_relset_1 @ sk_A @ sk_B @ sk_C ) )
   <= ( ( k8_relset_1 @ sk_A @ sk_B @ sk_C @ sk_B )
     != ( k1_relset_1 @ sk_A @ sk_B @ sk_C ) ) ),
    inference(split,[status(esa)],['0'])).

thf('2',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(redefinition_k1_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( k1_relset_1 @ A @ B @ C )
        = ( k1_relat_1 @ C ) ) ) )).

thf('3',plain,(
    ! [X27: $i,X28: $i,X29: $i] :
      ( ( ( k1_relset_1 @ X28 @ X29 @ X27 )
        = ( k1_relat_1 @ X27 ) )
      | ~ ( m1_subset_1 @ X27 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X28 @ X29 ) ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k1_relset_1])).

thf('4',plain,
    ( ( k1_relset_1 @ sk_A @ sk_B @ sk_C )
    = ( k1_relat_1 @ sk_C ) ),
    inference('sup-',[status(thm)],['2','3'])).

thf('5',plain,
    ( ( ( k8_relset_1 @ sk_A @ sk_B @ sk_C @ sk_B )
     != ( k1_relat_1 @ sk_C ) )
   <= ( ( k8_relset_1 @ sk_A @ sk_B @ sk_C @ sk_B )
     != ( k1_relset_1 @ sk_A @ sk_B @ sk_C ) ) ),
    inference(demod,[status(thm)],['1','4'])).

thf('6',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(redefinition_k7_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( k7_relset_1 @ A @ B @ C @ D )
        = ( k9_relat_1 @ C @ D ) ) ) )).

thf('7',plain,(
    ! [X33: $i,X34: $i,X35: $i,X36: $i] :
      ( ~ ( m1_subset_1 @ X33 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X34 @ X35 ) ) )
      | ( ( k7_relset_1 @ X34 @ X35 @ X33 @ X36 )
        = ( k9_relat_1 @ X33 @ X36 ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k7_relset_1])).

thf('8',plain,(
    ! [X0: $i] :
      ( ( k7_relset_1 @ sk_A @ sk_B @ sk_C @ X0 )
      = ( k9_relat_1 @ sk_C @ X0 ) ) ),
    inference('sup-',[status(thm)],['6','7'])).

thf('9',plain,
    ( ( ( k7_relset_1 @ sk_A @ sk_B @ sk_C @ sk_A )
     != ( k2_relset_1 @ sk_A @ sk_B @ sk_C ) )
   <= ( ( k7_relset_1 @ sk_A @ sk_B @ sk_C @ sk_A )
     != ( k2_relset_1 @ sk_A @ sk_B @ sk_C ) ) ),
    inference(split,[status(esa)],['0'])).

thf('10',plain,
    ( ( ( k9_relat_1 @ sk_C @ sk_A )
     != ( k2_relset_1 @ sk_A @ sk_B @ sk_C ) )
   <= ( ( k7_relset_1 @ sk_A @ sk_B @ sk_C @ sk_A )
     != ( k2_relset_1 @ sk_A @ sk_B @ sk_C ) ) ),
    inference('sup-',[status(thm)],['8','9'])).

thf('11',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(cc2_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( v4_relat_1 @ C @ A )
        & ( v5_relat_1 @ C @ B ) ) ) )).

thf('12',plain,(
    ! [X21: $i,X22: $i,X23: $i] :
      ( ( v4_relat_1 @ X21 @ X22 )
      | ~ ( m1_subset_1 @ X21 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X22 @ X23 ) ) ) ) ),
    inference(cnf,[status(esa)],[cc2_relset_1])).

thf('13',plain,(
    v4_relat_1 @ sk_C @ sk_A ),
    inference('sup-',[status(thm)],['11','12'])).

thf(t209_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( v1_relat_1 @ B )
        & ( v4_relat_1 @ B @ A ) )
     => ( B
        = ( k7_relat_1 @ B @ A ) ) ) )).

thf('14',plain,(
    ! [X10: $i,X11: $i] :
      ( ( X10
        = ( k7_relat_1 @ X10 @ X11 ) )
      | ~ ( v4_relat_1 @ X10 @ X11 )
      | ~ ( v1_relat_1 @ X10 ) ) ),
    inference(cnf,[status(esa)],[t209_relat_1])).

thf('15',plain,
    ( ~ ( v1_relat_1 @ sk_C )
    | ( sk_C
      = ( k7_relat_1 @ sk_C @ sk_A ) ) ),
    inference('sup-',[status(thm)],['13','14'])).

thf('16',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(cc1_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( v1_relat_1 @ C ) ) )).

thf('17',plain,(
    ! [X18: $i,X19: $i,X20: $i] :
      ( ( v1_relat_1 @ X18 )
      | ~ ( m1_subset_1 @ X18 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X19 @ X20 ) ) ) ) ),
    inference(cnf,[status(esa)],[cc1_relset_1])).

thf('18',plain,(
    v1_relat_1 @ sk_C ),
    inference('sup-',[status(thm)],['16','17'])).

thf('19',plain,
    ( sk_C
    = ( k7_relat_1 @ sk_C @ sk_A ) ),
    inference(demod,[status(thm)],['15','18'])).

thf(t148_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( ( k2_relat_1 @ ( k7_relat_1 @ B @ A ) )
        = ( k9_relat_1 @ B @ A ) ) ) )).

thf('20',plain,(
    ! [X3: $i,X4: $i] :
      ( ( ( k2_relat_1 @ ( k7_relat_1 @ X3 @ X4 ) )
        = ( k9_relat_1 @ X3 @ X4 ) )
      | ~ ( v1_relat_1 @ X3 ) ) ),
    inference(cnf,[status(esa)],[t148_relat_1])).

thf('21',plain,
    ( ( ( k2_relat_1 @ sk_C )
      = ( k9_relat_1 @ sk_C @ sk_A ) )
    | ~ ( v1_relat_1 @ sk_C ) ),
    inference('sup+',[status(thm)],['19','20'])).

thf('22',plain,(
    v1_relat_1 @ sk_C ),
    inference('sup-',[status(thm)],['16','17'])).

thf('23',plain,
    ( ( k2_relat_1 @ sk_C )
    = ( k9_relat_1 @ sk_C @ sk_A ) ),
    inference(demod,[status(thm)],['21','22'])).

thf('24',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(redefinition_k2_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( k2_relset_1 @ A @ B @ C )
        = ( k2_relat_1 @ C ) ) ) )).

thf('25',plain,(
    ! [X30: $i,X31: $i,X32: $i] :
      ( ( ( k2_relset_1 @ X31 @ X32 @ X30 )
        = ( k2_relat_1 @ X30 ) )
      | ~ ( m1_subset_1 @ X30 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X31 @ X32 ) ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k2_relset_1])).

thf('26',plain,
    ( ( k2_relset_1 @ sk_A @ sk_B @ sk_C )
    = ( k2_relat_1 @ sk_C ) ),
    inference('sup-',[status(thm)],['24','25'])).

thf('27',plain,
    ( ( ( k2_relat_1 @ sk_C )
     != ( k2_relat_1 @ sk_C ) )
   <= ( ( k7_relset_1 @ sk_A @ sk_B @ sk_C @ sk_A )
     != ( k2_relset_1 @ sk_A @ sk_B @ sk_C ) ) ),
    inference(demod,[status(thm)],['10','23','26'])).

thf('28',plain,
    ( ( k7_relset_1 @ sk_A @ sk_B @ sk_C @ sk_A )
    = ( k2_relset_1 @ sk_A @ sk_B @ sk_C ) ),
    inference(simplify,[status(thm)],['27'])).

thf('29',plain,
    ( ( ( k8_relset_1 @ sk_A @ sk_B @ sk_C @ sk_B )
     != ( k1_relset_1 @ sk_A @ sk_B @ sk_C ) )
    | ( ( k7_relset_1 @ sk_A @ sk_B @ sk_C @ sk_A )
     != ( k2_relset_1 @ sk_A @ sk_B @ sk_C ) ) ),
    inference(split,[status(esa)],['0'])).

thf('30',plain,(
    ( k8_relset_1 @ sk_A @ sk_B @ sk_C @ sk_B )
 != ( k1_relset_1 @ sk_A @ sk_B @ sk_C ) ),
    inference('sat_resolution*',[status(thm)],['28','29'])).

thf('31',plain,(
    ( k8_relset_1 @ sk_A @ sk_B @ sk_C @ sk_B )
 != ( k1_relat_1 @ sk_C ) ),
    inference(simpl_trail,[status(thm)],['5','30'])).

thf('32',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(redefinition_k8_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( k8_relset_1 @ A @ B @ C @ D )
        = ( k10_relat_1 @ C @ D ) ) ) )).

thf('33',plain,(
    ! [X37: $i,X38: $i,X39: $i,X40: $i] :
      ( ~ ( m1_subset_1 @ X37 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X38 @ X39 ) ) )
      | ( ( k8_relset_1 @ X38 @ X39 @ X37 @ X40 )
        = ( k10_relat_1 @ X37 @ X40 ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k8_relset_1])).

thf('34',plain,(
    ! [X0: $i] :
      ( ( k8_relset_1 @ sk_A @ sk_B @ sk_C @ X0 )
      = ( k10_relat_1 @ sk_C @ X0 ) ) ),
    inference('sup-',[status(thm)],['32','33'])).

thf('35',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(dt_k2_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( m1_subset_1 @ ( k2_relset_1 @ A @ B @ C ) @ ( k1_zfmisc_1 @ B ) ) ) )).

thf('36',plain,(
    ! [X24: $i,X25: $i,X26: $i] :
      ( ( m1_subset_1 @ ( k2_relset_1 @ X24 @ X25 @ X26 ) @ ( k1_zfmisc_1 @ X25 ) )
      | ~ ( m1_subset_1 @ X26 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X24 @ X25 ) ) ) ) ),
    inference(cnf,[status(esa)],[dt_k2_relset_1])).

thf('37',plain,(
    m1_subset_1 @ ( k2_relset_1 @ sk_A @ sk_B @ sk_C ) @ ( k1_zfmisc_1 @ sk_B ) ),
    inference('sup-',[status(thm)],['35','36'])).

thf('38',plain,
    ( ( k2_relset_1 @ sk_A @ sk_B @ sk_C )
    = ( k2_relat_1 @ sk_C ) ),
    inference('sup-',[status(thm)],['24','25'])).

thf('39',plain,(
    m1_subset_1 @ ( k2_relat_1 @ sk_C ) @ ( k1_zfmisc_1 @ sk_B ) ),
    inference(demod,[status(thm)],['37','38'])).

thf(t162_funct_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) )
     => ( ( k9_relat_1 @ ( k6_relat_1 @ A ) @ B )
        = B ) ) )).

thf('40',plain,(
    ! [X14: $i,X15: $i] :
      ( ( ( k9_relat_1 @ ( k6_relat_1 @ X15 ) @ X14 )
        = X14 )
      | ~ ( m1_subset_1 @ X14 @ ( k1_zfmisc_1 @ X15 ) ) ) ),
    inference(cnf,[status(esa)],[t162_funct_1])).

thf(t43_funct_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k5_relat_1 @ ( k6_relat_1 @ B ) @ ( k6_relat_1 @ A ) )
      = ( k6_relat_1 @ ( k3_xboole_0 @ A @ B ) ) ) )).

thf('41',plain,(
    ! [X16: $i,X17: $i] :
      ( ( k5_relat_1 @ ( k6_relat_1 @ X17 ) @ ( k6_relat_1 @ X16 ) )
      = ( k6_relat_1 @ ( k3_xboole_0 @ X16 @ X17 ) ) ) ),
    inference(cnf,[status(esa)],[t43_funct_1])).

thf(t71_relat_1,axiom,(
    ! [A: $i] :
      ( ( ( k2_relat_1 @ ( k6_relat_1 @ A ) )
        = A )
      & ( ( k1_relat_1 @ ( k6_relat_1 @ A ) )
        = A ) ) )).

thf('42',plain,(
    ! [X13: $i] :
      ( ( k2_relat_1 @ ( k6_relat_1 @ X13 ) )
      = X13 ) ),
    inference(cnf,[status(esa)],[t71_relat_1])).

thf(t160_relat_1,axiom,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ! [B: $i] :
          ( ( v1_relat_1 @ B )
         => ( ( k2_relat_1 @ ( k5_relat_1 @ A @ B ) )
            = ( k9_relat_1 @ B @ ( k2_relat_1 @ A ) ) ) ) ) )).

thf('43',plain,(
    ! [X5: $i,X6: $i] :
      ( ~ ( v1_relat_1 @ X5 )
      | ( ( k2_relat_1 @ ( k5_relat_1 @ X6 @ X5 ) )
        = ( k9_relat_1 @ X5 @ ( k2_relat_1 @ X6 ) ) )
      | ~ ( v1_relat_1 @ X6 ) ) ),
    inference(cnf,[status(esa)],[t160_relat_1])).

thf('44',plain,(
    ! [X0: $i,X1: $i] :
      ( ( ( k2_relat_1 @ ( k5_relat_1 @ ( k6_relat_1 @ X0 ) @ X1 ) )
        = ( k9_relat_1 @ X1 @ X0 ) )
      | ~ ( v1_relat_1 @ ( k6_relat_1 @ X0 ) )
      | ~ ( v1_relat_1 @ X1 ) ) ),
    inference('sup+',[status(thm)],['42','43'])).

thf(dt_k6_relat_1,axiom,(
    ! [A: $i] :
      ( v1_relat_1 @ ( k6_relat_1 @ A ) ) )).

thf('45',plain,(
    ! [X2: $i] :
      ( v1_relat_1 @ ( k6_relat_1 @ X2 ) ) ),
    inference(cnf,[status(esa)],[dt_k6_relat_1])).

thf('46',plain,(
    ! [X0: $i,X1: $i] :
      ( ( ( k2_relat_1 @ ( k5_relat_1 @ ( k6_relat_1 @ X0 ) @ X1 ) )
        = ( k9_relat_1 @ X1 @ X0 ) )
      | ~ ( v1_relat_1 @ X1 ) ) ),
    inference(demod,[status(thm)],['44','45'])).

thf('47',plain,(
    ! [X0: $i,X1: $i] :
      ( ( ( k2_relat_1 @ ( k6_relat_1 @ ( k3_xboole_0 @ X1 @ X0 ) ) )
        = ( k9_relat_1 @ ( k6_relat_1 @ X1 ) @ X0 ) )
      | ~ ( v1_relat_1 @ ( k6_relat_1 @ X1 ) ) ) ),
    inference('sup+',[status(thm)],['41','46'])).

thf('48',plain,(
    ! [X13: $i] :
      ( ( k2_relat_1 @ ( k6_relat_1 @ X13 ) )
      = X13 ) ),
    inference(cnf,[status(esa)],[t71_relat_1])).

thf('49',plain,(
    ! [X2: $i] :
      ( v1_relat_1 @ ( k6_relat_1 @ X2 ) ) ),
    inference(cnf,[status(esa)],[dt_k6_relat_1])).

thf('50',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k3_xboole_0 @ X1 @ X0 )
      = ( k9_relat_1 @ ( k6_relat_1 @ X1 ) @ X0 ) ) ),
    inference(demod,[status(thm)],['47','48','49'])).

thf('51',plain,(
    ! [X14: $i,X15: $i] :
      ( ( ( k3_xboole_0 @ X15 @ X14 )
        = X14 )
      | ~ ( m1_subset_1 @ X14 @ ( k1_zfmisc_1 @ X15 ) ) ) ),
    inference(demod,[status(thm)],['40','50'])).

thf('52',plain,
    ( ( k3_xboole_0 @ sk_B @ ( k2_relat_1 @ sk_C ) )
    = ( k2_relat_1 @ sk_C ) ),
    inference('sup-',[status(thm)],['39','51'])).

thf(commutativity_k3_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( k3_xboole_0 @ A @ B )
      = ( k3_xboole_0 @ B @ A ) ) )).

thf('53',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k3_xboole_0 @ X1 @ X0 )
      = ( k3_xboole_0 @ X0 @ X1 ) ) ),
    inference(cnf,[status(esa)],[commutativity_k3_xboole_0])).

thf(t168_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( ( k10_relat_1 @ B @ A )
        = ( k10_relat_1 @ B @ ( k3_xboole_0 @ ( k2_relat_1 @ B ) @ A ) ) ) ) )).

thf('54',plain,(
    ! [X7: $i,X8: $i] :
      ( ( ( k10_relat_1 @ X7 @ X8 )
        = ( k10_relat_1 @ X7 @ ( k3_xboole_0 @ ( k2_relat_1 @ X7 ) @ X8 ) ) )
      | ~ ( v1_relat_1 @ X7 ) ) ),
    inference(cnf,[status(esa)],[t168_relat_1])).

thf('55',plain,(
    ! [X0: $i,X1: $i] :
      ( ( ( k10_relat_1 @ X0 @ X1 )
        = ( k10_relat_1 @ X0 @ ( k3_xboole_0 @ X1 @ ( k2_relat_1 @ X0 ) ) ) )
      | ~ ( v1_relat_1 @ X0 ) ) ),
    inference('sup+',[status(thm)],['53','54'])).

thf('56',plain,
    ( ( ( k10_relat_1 @ sk_C @ sk_B )
      = ( k10_relat_1 @ sk_C @ ( k2_relat_1 @ sk_C ) ) )
    | ~ ( v1_relat_1 @ sk_C ) ),
    inference('sup+',[status(thm)],['52','55'])).

thf('57',plain,
    ( sk_C
    = ( k7_relat_1 @ sk_C @ sk_A ) ),
    inference(demod,[status(thm)],['15','18'])).

thf('58',plain,(
    ! [X3: $i,X4: $i] :
      ( ( ( k2_relat_1 @ ( k7_relat_1 @ X3 @ X4 ) )
        = ( k9_relat_1 @ X3 @ X4 ) )
      | ~ ( v1_relat_1 @ X3 ) ) ),
    inference(cnf,[status(esa)],[t148_relat_1])).

thf(t169_relat_1,axiom,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ( ( k10_relat_1 @ A @ ( k2_relat_1 @ A ) )
        = ( k1_relat_1 @ A ) ) ) )).

thf('59',plain,(
    ! [X9: $i] :
      ( ( ( k10_relat_1 @ X9 @ ( k2_relat_1 @ X9 ) )
        = ( k1_relat_1 @ X9 ) )
      | ~ ( v1_relat_1 @ X9 ) ) ),
    inference(cnf,[status(esa)],[t169_relat_1])).

thf('60',plain,(
    ! [X0: $i,X1: $i] :
      ( ( ( k10_relat_1 @ ( k7_relat_1 @ X1 @ X0 ) @ ( k9_relat_1 @ X1 @ X0 ) )
        = ( k1_relat_1 @ ( k7_relat_1 @ X1 @ X0 ) ) )
      | ~ ( v1_relat_1 @ X1 )
      | ~ ( v1_relat_1 @ ( k7_relat_1 @ X1 @ X0 ) ) ) ),
    inference('sup+',[status(thm)],['58','59'])).

thf('61',plain,
    ( ~ ( v1_relat_1 @ sk_C )
    | ~ ( v1_relat_1 @ sk_C )
    | ( ( k10_relat_1 @ ( k7_relat_1 @ sk_C @ sk_A ) @ ( k9_relat_1 @ sk_C @ sk_A ) )
      = ( k1_relat_1 @ ( k7_relat_1 @ sk_C @ sk_A ) ) ) ),
    inference('sup-',[status(thm)],['57','60'])).

thf('62',plain,(
    v1_relat_1 @ sk_C ),
    inference('sup-',[status(thm)],['16','17'])).

thf('63',plain,(
    v1_relat_1 @ sk_C ),
    inference('sup-',[status(thm)],['16','17'])).

thf('64',plain,
    ( sk_C
    = ( k7_relat_1 @ sk_C @ sk_A ) ),
    inference(demod,[status(thm)],['15','18'])).

thf('65',plain,
    ( sk_C
    = ( k7_relat_1 @ sk_C @ sk_A ) ),
    inference(demod,[status(thm)],['15','18'])).

thf('66',plain,
    ( ( k10_relat_1 @ sk_C @ ( k9_relat_1 @ sk_C @ sk_A ) )
    = ( k1_relat_1 @ sk_C ) ),
    inference(demod,[status(thm)],['61','62','63','64','65'])).

thf('67',plain,
    ( ( k2_relat_1 @ sk_C )
    = ( k9_relat_1 @ sk_C @ sk_A ) ),
    inference(demod,[status(thm)],['21','22'])).

thf('68',plain,
    ( ( k10_relat_1 @ sk_C @ ( k2_relat_1 @ sk_C ) )
    = ( k1_relat_1 @ sk_C ) ),
    inference(demod,[status(thm)],['66','67'])).

thf('69',plain,(
    v1_relat_1 @ sk_C ),
    inference('sup-',[status(thm)],['16','17'])).

thf('70',plain,
    ( ( k10_relat_1 @ sk_C @ sk_B )
    = ( k1_relat_1 @ sk_C ) ),
    inference(demod,[status(thm)],['56','68','69'])).

thf('71',plain,(
    ( k1_relat_1 @ sk_C )
 != ( k1_relat_1 @ sk_C ) ),
    inference(demod,[status(thm)],['31','34','70'])).

thf('72',plain,(
    $false ),
    inference(simplify,[status(thm)],['71'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.04/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.14/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.cYuXZrBERF
% 0.14/0.35  % Computer   : n024.cluster.edu
% 0.14/0.35  % Model      : x86_64 x86_64
% 0.14/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.35  % Memory     : 8042.1875MB
% 0.14/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.35  % CPULimit   : 60
% 0.14/0.35  % DateTime   : Tue Dec  1 13:03:06 EST 2020
% 0.14/0.35  % CPUTime    : 
% 0.14/0.35  % Running portfolio for 600 s
% 0.14/0.35  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.14/0.35  % Number of cores: 8
% 0.22/0.35  % Python version: Python 3.6.8
% 0.22/0.35  % Running in FO mode
% 0.22/0.49  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.22/0.49  % Solved by: fo/fo7.sh
% 0.22/0.49  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.22/0.49  % done 63 iterations in 0.033s
% 0.22/0.49  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.22/0.49  % SZS output start Refutation
% 0.22/0.49  thf(k6_relat_1_type, type, k6_relat_1: $i > $i).
% 0.22/0.49  thf(sk_A_type, type, sk_A: $i).
% 0.22/0.49  thf(k1_relset_1_type, type, k1_relset_1: $i > $i > $i > $i).
% 0.22/0.49  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.22/0.49  thf(k7_relset_1_type, type, k7_relset_1: $i > $i > $i > $i > $i).
% 0.22/0.49  thf(k7_relat_1_type, type, k7_relat_1: $i > $i > $i).
% 0.22/0.49  thf(k2_relset_1_type, type, k2_relset_1: $i > $i > $i > $i).
% 0.22/0.49  thf(v4_relat_1_type, type, v4_relat_1: $i > $i > $o).
% 0.22/0.49  thf(k5_relat_1_type, type, k5_relat_1: $i > $i > $i).
% 0.22/0.49  thf(sk_B_type, type, sk_B: $i).
% 0.22/0.49  thf(k8_relset_1_type, type, k8_relset_1: $i > $i > $i > $i > $i).
% 0.22/0.49  thf(v5_relat_1_type, type, v5_relat_1: $i > $i > $o).
% 0.22/0.49  thf(k9_relat_1_type, type, k9_relat_1: $i > $i > $i).
% 0.22/0.49  thf(k3_xboole_0_type, type, k3_xboole_0: $i > $i > $i).
% 0.22/0.49  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.22/0.49  thf(k1_relat_1_type, type, k1_relat_1: $i > $i).
% 0.22/0.49  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.22/0.49  thf(k2_zfmisc_1_type, type, k2_zfmisc_1: $i > $i > $i).
% 0.22/0.49  thf(k10_relat_1_type, type, k10_relat_1: $i > $i > $i).
% 0.22/0.49  thf(k2_relat_1_type, type, k2_relat_1: $i > $i).
% 0.22/0.49  thf(sk_C_type, type, sk_C: $i).
% 0.22/0.49  thf(t38_relset_1, conjecture,
% 0.22/0.49    (![A:$i,B:$i,C:$i]:
% 0.22/0.49     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.22/0.49       ( ( ( k7_relset_1 @ A @ B @ C @ A ) = ( k2_relset_1 @ A @ B @ C ) ) & 
% 0.22/0.49         ( ( k8_relset_1 @ A @ B @ C @ B ) = ( k1_relset_1 @ A @ B @ C ) ) ) ))).
% 0.22/0.49  thf(zf_stmt_0, negated_conjecture,
% 0.22/0.49    (~( ![A:$i,B:$i,C:$i]:
% 0.22/0.49        ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.22/0.49          ( ( ( k7_relset_1 @ A @ B @ C @ A ) = ( k2_relset_1 @ A @ B @ C ) ) & 
% 0.22/0.49            ( ( k8_relset_1 @ A @ B @ C @ B ) = ( k1_relset_1 @ A @ B @ C ) ) ) ) )),
% 0.22/0.49    inference('cnf.neg', [status(esa)], [t38_relset_1])).
% 0.22/0.49  thf('0', plain,
% 0.22/0.49      ((((k7_relset_1 @ sk_A @ sk_B @ sk_C @ sk_A)
% 0.22/0.49          != (k2_relset_1 @ sk_A @ sk_B @ sk_C))
% 0.22/0.49        | ((k8_relset_1 @ sk_A @ sk_B @ sk_C @ sk_B)
% 0.22/0.49            != (k1_relset_1 @ sk_A @ sk_B @ sk_C)))),
% 0.22/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.49  thf('1', plain,
% 0.22/0.49      ((((k8_relset_1 @ sk_A @ sk_B @ sk_C @ sk_B)
% 0.22/0.49          != (k1_relset_1 @ sk_A @ sk_B @ sk_C)))
% 0.22/0.49         <= (~
% 0.22/0.49             (((k8_relset_1 @ sk_A @ sk_B @ sk_C @ sk_B)
% 0.22/0.49                = (k1_relset_1 @ sk_A @ sk_B @ sk_C))))),
% 0.22/0.49      inference('split', [status(esa)], ['0'])).
% 0.22/0.49  thf('2', plain,
% 0.22/0.49      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 0.22/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.49  thf(redefinition_k1_relset_1, axiom,
% 0.22/0.49    (![A:$i,B:$i,C:$i]:
% 0.22/0.49     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.22/0.49       ( ( k1_relset_1 @ A @ B @ C ) = ( k1_relat_1 @ C ) ) ))).
% 0.22/0.49  thf('3', plain,
% 0.22/0.49      (![X27 : $i, X28 : $i, X29 : $i]:
% 0.22/0.49         (((k1_relset_1 @ X28 @ X29 @ X27) = (k1_relat_1 @ X27))
% 0.22/0.49          | ~ (m1_subset_1 @ X27 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X28 @ X29))))),
% 0.22/0.49      inference('cnf', [status(esa)], [redefinition_k1_relset_1])).
% 0.22/0.49  thf('4', plain, (((k1_relset_1 @ sk_A @ sk_B @ sk_C) = (k1_relat_1 @ sk_C))),
% 0.22/0.49      inference('sup-', [status(thm)], ['2', '3'])).
% 0.22/0.49  thf('5', plain,
% 0.22/0.49      ((((k8_relset_1 @ sk_A @ sk_B @ sk_C @ sk_B) != (k1_relat_1 @ sk_C)))
% 0.22/0.49         <= (~
% 0.22/0.49             (((k8_relset_1 @ sk_A @ sk_B @ sk_C @ sk_B)
% 0.22/0.49                = (k1_relset_1 @ sk_A @ sk_B @ sk_C))))),
% 0.22/0.49      inference('demod', [status(thm)], ['1', '4'])).
% 0.22/0.49  thf('6', plain,
% 0.22/0.49      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 0.22/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.49  thf(redefinition_k7_relset_1, axiom,
% 0.22/0.49    (![A:$i,B:$i,C:$i,D:$i]:
% 0.22/0.49     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.22/0.49       ( ( k7_relset_1 @ A @ B @ C @ D ) = ( k9_relat_1 @ C @ D ) ) ))).
% 0.22/0.49  thf('7', plain,
% 0.22/0.49      (![X33 : $i, X34 : $i, X35 : $i, X36 : $i]:
% 0.22/0.49         (~ (m1_subset_1 @ X33 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X34 @ X35)))
% 0.22/0.49          | ((k7_relset_1 @ X34 @ X35 @ X33 @ X36) = (k9_relat_1 @ X33 @ X36)))),
% 0.22/0.49      inference('cnf', [status(esa)], [redefinition_k7_relset_1])).
% 0.22/0.49  thf('8', plain,
% 0.22/0.49      (![X0 : $i]:
% 0.22/0.49         ((k7_relset_1 @ sk_A @ sk_B @ sk_C @ X0) = (k9_relat_1 @ sk_C @ X0))),
% 0.22/0.49      inference('sup-', [status(thm)], ['6', '7'])).
% 0.22/0.49  thf('9', plain,
% 0.22/0.49      ((((k7_relset_1 @ sk_A @ sk_B @ sk_C @ sk_A)
% 0.22/0.49          != (k2_relset_1 @ sk_A @ sk_B @ sk_C)))
% 0.22/0.49         <= (~
% 0.22/0.49             (((k7_relset_1 @ sk_A @ sk_B @ sk_C @ sk_A)
% 0.22/0.49                = (k2_relset_1 @ sk_A @ sk_B @ sk_C))))),
% 0.22/0.49      inference('split', [status(esa)], ['0'])).
% 0.22/0.49  thf('10', plain,
% 0.22/0.49      ((((k9_relat_1 @ sk_C @ sk_A) != (k2_relset_1 @ sk_A @ sk_B @ sk_C)))
% 0.22/0.49         <= (~
% 0.22/0.49             (((k7_relset_1 @ sk_A @ sk_B @ sk_C @ sk_A)
% 0.22/0.49                = (k2_relset_1 @ sk_A @ sk_B @ sk_C))))),
% 0.22/0.49      inference('sup-', [status(thm)], ['8', '9'])).
% 0.22/0.49  thf('11', plain,
% 0.22/0.49      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 0.22/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.49  thf(cc2_relset_1, axiom,
% 0.22/0.49    (![A:$i,B:$i,C:$i]:
% 0.22/0.49     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.22/0.49       ( ( v4_relat_1 @ C @ A ) & ( v5_relat_1 @ C @ B ) ) ))).
% 0.22/0.49  thf('12', plain,
% 0.22/0.49      (![X21 : $i, X22 : $i, X23 : $i]:
% 0.22/0.49         ((v4_relat_1 @ X21 @ X22)
% 0.22/0.49          | ~ (m1_subset_1 @ X21 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X22 @ X23))))),
% 0.22/0.49      inference('cnf', [status(esa)], [cc2_relset_1])).
% 0.22/0.49  thf('13', plain, ((v4_relat_1 @ sk_C @ sk_A)),
% 0.22/0.49      inference('sup-', [status(thm)], ['11', '12'])).
% 0.22/0.49  thf(t209_relat_1, axiom,
% 0.22/0.49    (![A:$i,B:$i]:
% 0.22/0.49     ( ( ( v1_relat_1 @ B ) & ( v4_relat_1 @ B @ A ) ) =>
% 0.22/0.49       ( ( B ) = ( k7_relat_1 @ B @ A ) ) ))).
% 0.22/0.49  thf('14', plain,
% 0.22/0.49      (![X10 : $i, X11 : $i]:
% 0.22/0.49         (((X10) = (k7_relat_1 @ X10 @ X11))
% 0.22/0.49          | ~ (v4_relat_1 @ X10 @ X11)
% 0.22/0.49          | ~ (v1_relat_1 @ X10))),
% 0.22/0.49      inference('cnf', [status(esa)], [t209_relat_1])).
% 0.22/0.49  thf('15', plain,
% 0.22/0.49      ((~ (v1_relat_1 @ sk_C) | ((sk_C) = (k7_relat_1 @ sk_C @ sk_A)))),
% 0.22/0.49      inference('sup-', [status(thm)], ['13', '14'])).
% 0.22/0.49  thf('16', plain,
% 0.22/0.49      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 0.22/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.49  thf(cc1_relset_1, axiom,
% 0.22/0.49    (![A:$i,B:$i,C:$i]:
% 0.22/0.49     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.22/0.49       ( v1_relat_1 @ C ) ))).
% 0.22/0.49  thf('17', plain,
% 0.22/0.49      (![X18 : $i, X19 : $i, X20 : $i]:
% 0.22/0.49         ((v1_relat_1 @ X18)
% 0.22/0.49          | ~ (m1_subset_1 @ X18 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X19 @ X20))))),
% 0.22/0.49      inference('cnf', [status(esa)], [cc1_relset_1])).
% 0.22/0.49  thf('18', plain, ((v1_relat_1 @ sk_C)),
% 0.22/0.49      inference('sup-', [status(thm)], ['16', '17'])).
% 0.22/0.49  thf('19', plain, (((sk_C) = (k7_relat_1 @ sk_C @ sk_A))),
% 0.22/0.49      inference('demod', [status(thm)], ['15', '18'])).
% 0.22/0.49  thf(t148_relat_1, axiom,
% 0.22/0.49    (![A:$i,B:$i]:
% 0.22/0.49     ( ( v1_relat_1 @ B ) =>
% 0.22/0.49       ( ( k2_relat_1 @ ( k7_relat_1 @ B @ A ) ) = ( k9_relat_1 @ B @ A ) ) ))).
% 0.22/0.49  thf('20', plain,
% 0.22/0.49      (![X3 : $i, X4 : $i]:
% 0.22/0.49         (((k2_relat_1 @ (k7_relat_1 @ X3 @ X4)) = (k9_relat_1 @ X3 @ X4))
% 0.22/0.49          | ~ (v1_relat_1 @ X3))),
% 0.22/0.49      inference('cnf', [status(esa)], [t148_relat_1])).
% 0.22/0.49  thf('21', plain,
% 0.22/0.49      ((((k2_relat_1 @ sk_C) = (k9_relat_1 @ sk_C @ sk_A))
% 0.22/0.49        | ~ (v1_relat_1 @ sk_C))),
% 0.22/0.49      inference('sup+', [status(thm)], ['19', '20'])).
% 0.22/0.49  thf('22', plain, ((v1_relat_1 @ sk_C)),
% 0.22/0.49      inference('sup-', [status(thm)], ['16', '17'])).
% 0.22/0.49  thf('23', plain, (((k2_relat_1 @ sk_C) = (k9_relat_1 @ sk_C @ sk_A))),
% 0.22/0.49      inference('demod', [status(thm)], ['21', '22'])).
% 0.22/0.49  thf('24', plain,
% 0.22/0.49      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 0.22/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.49  thf(redefinition_k2_relset_1, axiom,
% 0.22/0.49    (![A:$i,B:$i,C:$i]:
% 0.22/0.49     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.22/0.49       ( ( k2_relset_1 @ A @ B @ C ) = ( k2_relat_1 @ C ) ) ))).
% 0.22/0.49  thf('25', plain,
% 0.22/0.49      (![X30 : $i, X31 : $i, X32 : $i]:
% 0.22/0.49         (((k2_relset_1 @ X31 @ X32 @ X30) = (k2_relat_1 @ X30))
% 0.22/0.49          | ~ (m1_subset_1 @ X30 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X31 @ X32))))),
% 0.22/0.49      inference('cnf', [status(esa)], [redefinition_k2_relset_1])).
% 0.22/0.49  thf('26', plain,
% 0.22/0.49      (((k2_relset_1 @ sk_A @ sk_B @ sk_C) = (k2_relat_1 @ sk_C))),
% 0.22/0.49      inference('sup-', [status(thm)], ['24', '25'])).
% 0.22/0.49  thf('27', plain,
% 0.22/0.49      ((((k2_relat_1 @ sk_C) != (k2_relat_1 @ sk_C)))
% 0.22/0.49         <= (~
% 0.22/0.49             (((k7_relset_1 @ sk_A @ sk_B @ sk_C @ sk_A)
% 0.22/0.49                = (k2_relset_1 @ sk_A @ sk_B @ sk_C))))),
% 0.22/0.49      inference('demod', [status(thm)], ['10', '23', '26'])).
% 0.22/0.49  thf('28', plain,
% 0.22/0.49      ((((k7_relset_1 @ sk_A @ sk_B @ sk_C @ sk_A)
% 0.22/0.49          = (k2_relset_1 @ sk_A @ sk_B @ sk_C)))),
% 0.22/0.49      inference('simplify', [status(thm)], ['27'])).
% 0.22/0.49  thf('29', plain,
% 0.22/0.49      (~
% 0.22/0.49       (((k8_relset_1 @ sk_A @ sk_B @ sk_C @ sk_B)
% 0.22/0.49          = (k1_relset_1 @ sk_A @ sk_B @ sk_C))) | 
% 0.22/0.49       ~
% 0.22/0.49       (((k7_relset_1 @ sk_A @ sk_B @ sk_C @ sk_A)
% 0.22/0.49          = (k2_relset_1 @ sk_A @ sk_B @ sk_C)))),
% 0.22/0.49      inference('split', [status(esa)], ['0'])).
% 0.22/0.49  thf('30', plain,
% 0.22/0.49      (~
% 0.22/0.49       (((k8_relset_1 @ sk_A @ sk_B @ sk_C @ sk_B)
% 0.22/0.49          = (k1_relset_1 @ sk_A @ sk_B @ sk_C)))),
% 0.22/0.49      inference('sat_resolution*', [status(thm)], ['28', '29'])).
% 0.22/0.49  thf('31', plain,
% 0.22/0.49      (((k8_relset_1 @ sk_A @ sk_B @ sk_C @ sk_B) != (k1_relat_1 @ sk_C))),
% 0.22/0.49      inference('simpl_trail', [status(thm)], ['5', '30'])).
% 0.22/0.50  thf('32', plain,
% 0.22/0.50      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 0.22/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.50  thf(redefinition_k8_relset_1, axiom,
% 0.22/0.50    (![A:$i,B:$i,C:$i,D:$i]:
% 0.22/0.50     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.22/0.50       ( ( k8_relset_1 @ A @ B @ C @ D ) = ( k10_relat_1 @ C @ D ) ) ))).
% 0.22/0.50  thf('33', plain,
% 0.22/0.50      (![X37 : $i, X38 : $i, X39 : $i, X40 : $i]:
% 0.22/0.50         (~ (m1_subset_1 @ X37 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X38 @ X39)))
% 0.22/0.50          | ((k8_relset_1 @ X38 @ X39 @ X37 @ X40) = (k10_relat_1 @ X37 @ X40)))),
% 0.22/0.50      inference('cnf', [status(esa)], [redefinition_k8_relset_1])).
% 0.22/0.50  thf('34', plain,
% 0.22/0.50      (![X0 : $i]:
% 0.22/0.50         ((k8_relset_1 @ sk_A @ sk_B @ sk_C @ X0) = (k10_relat_1 @ sk_C @ X0))),
% 0.22/0.50      inference('sup-', [status(thm)], ['32', '33'])).
% 0.22/0.50  thf('35', plain,
% 0.22/0.50      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 0.22/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.50  thf(dt_k2_relset_1, axiom,
% 0.22/0.50    (![A:$i,B:$i,C:$i]:
% 0.22/0.50     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.22/0.50       ( m1_subset_1 @ ( k2_relset_1 @ A @ B @ C ) @ ( k1_zfmisc_1 @ B ) ) ))).
% 0.22/0.50  thf('36', plain,
% 0.22/0.50      (![X24 : $i, X25 : $i, X26 : $i]:
% 0.22/0.50         ((m1_subset_1 @ (k2_relset_1 @ X24 @ X25 @ X26) @ (k1_zfmisc_1 @ X25))
% 0.22/0.50          | ~ (m1_subset_1 @ X26 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X24 @ X25))))),
% 0.22/0.50      inference('cnf', [status(esa)], [dt_k2_relset_1])).
% 0.22/0.50  thf('37', plain,
% 0.22/0.50      ((m1_subset_1 @ (k2_relset_1 @ sk_A @ sk_B @ sk_C) @ (k1_zfmisc_1 @ sk_B))),
% 0.22/0.50      inference('sup-', [status(thm)], ['35', '36'])).
% 0.22/0.50  thf('38', plain,
% 0.22/0.50      (((k2_relset_1 @ sk_A @ sk_B @ sk_C) = (k2_relat_1 @ sk_C))),
% 0.22/0.50      inference('sup-', [status(thm)], ['24', '25'])).
% 0.22/0.50  thf('39', plain,
% 0.22/0.50      ((m1_subset_1 @ (k2_relat_1 @ sk_C) @ (k1_zfmisc_1 @ sk_B))),
% 0.22/0.50      inference('demod', [status(thm)], ['37', '38'])).
% 0.22/0.50  thf(t162_funct_1, axiom,
% 0.22/0.50    (![A:$i,B:$i]:
% 0.22/0.50     ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) ) =>
% 0.22/0.50       ( ( k9_relat_1 @ ( k6_relat_1 @ A ) @ B ) = ( B ) ) ))).
% 0.22/0.50  thf('40', plain,
% 0.22/0.50      (![X14 : $i, X15 : $i]:
% 0.22/0.50         (((k9_relat_1 @ (k6_relat_1 @ X15) @ X14) = (X14))
% 0.22/0.50          | ~ (m1_subset_1 @ X14 @ (k1_zfmisc_1 @ X15)))),
% 0.22/0.50      inference('cnf', [status(esa)], [t162_funct_1])).
% 0.22/0.50  thf(t43_funct_1, axiom,
% 0.22/0.50    (![A:$i,B:$i]:
% 0.22/0.50     ( ( k5_relat_1 @ ( k6_relat_1 @ B ) @ ( k6_relat_1 @ A ) ) =
% 0.22/0.50       ( k6_relat_1 @ ( k3_xboole_0 @ A @ B ) ) ))).
% 0.22/0.50  thf('41', plain,
% 0.22/0.50      (![X16 : $i, X17 : $i]:
% 0.22/0.50         ((k5_relat_1 @ (k6_relat_1 @ X17) @ (k6_relat_1 @ X16))
% 0.22/0.50           = (k6_relat_1 @ (k3_xboole_0 @ X16 @ X17)))),
% 0.22/0.50      inference('cnf', [status(esa)], [t43_funct_1])).
% 0.22/0.50  thf(t71_relat_1, axiom,
% 0.22/0.50    (![A:$i]:
% 0.22/0.50     ( ( ( k2_relat_1 @ ( k6_relat_1 @ A ) ) = ( A ) ) & 
% 0.22/0.50       ( ( k1_relat_1 @ ( k6_relat_1 @ A ) ) = ( A ) ) ))).
% 0.22/0.50  thf('42', plain, (![X13 : $i]: ((k2_relat_1 @ (k6_relat_1 @ X13)) = (X13))),
% 0.22/0.50      inference('cnf', [status(esa)], [t71_relat_1])).
% 0.22/0.50  thf(t160_relat_1, axiom,
% 0.22/0.50    (![A:$i]:
% 0.22/0.50     ( ( v1_relat_1 @ A ) =>
% 0.22/0.50       ( ![B:$i]:
% 0.22/0.50         ( ( v1_relat_1 @ B ) =>
% 0.22/0.50           ( ( k2_relat_1 @ ( k5_relat_1 @ A @ B ) ) =
% 0.22/0.50             ( k9_relat_1 @ B @ ( k2_relat_1 @ A ) ) ) ) ) ))).
% 0.22/0.50  thf('43', plain,
% 0.22/0.50      (![X5 : $i, X6 : $i]:
% 0.22/0.50         (~ (v1_relat_1 @ X5)
% 0.22/0.50          | ((k2_relat_1 @ (k5_relat_1 @ X6 @ X5))
% 0.22/0.50              = (k9_relat_1 @ X5 @ (k2_relat_1 @ X6)))
% 0.22/0.50          | ~ (v1_relat_1 @ X6))),
% 0.22/0.50      inference('cnf', [status(esa)], [t160_relat_1])).
% 0.22/0.50  thf('44', plain,
% 0.22/0.50      (![X0 : $i, X1 : $i]:
% 0.22/0.50         (((k2_relat_1 @ (k5_relat_1 @ (k6_relat_1 @ X0) @ X1))
% 0.22/0.50            = (k9_relat_1 @ X1 @ X0))
% 0.22/0.50          | ~ (v1_relat_1 @ (k6_relat_1 @ X0))
% 0.22/0.50          | ~ (v1_relat_1 @ X1))),
% 0.22/0.50      inference('sup+', [status(thm)], ['42', '43'])).
% 0.22/0.50  thf(dt_k6_relat_1, axiom, (![A:$i]: ( v1_relat_1 @ ( k6_relat_1 @ A ) ))).
% 0.22/0.50  thf('45', plain, (![X2 : $i]: (v1_relat_1 @ (k6_relat_1 @ X2))),
% 0.22/0.50      inference('cnf', [status(esa)], [dt_k6_relat_1])).
% 0.22/0.50  thf('46', plain,
% 0.22/0.50      (![X0 : $i, X1 : $i]:
% 0.22/0.50         (((k2_relat_1 @ (k5_relat_1 @ (k6_relat_1 @ X0) @ X1))
% 0.22/0.50            = (k9_relat_1 @ X1 @ X0))
% 0.22/0.50          | ~ (v1_relat_1 @ X1))),
% 0.22/0.50      inference('demod', [status(thm)], ['44', '45'])).
% 0.22/0.50  thf('47', plain,
% 0.22/0.50      (![X0 : $i, X1 : $i]:
% 0.22/0.50         (((k2_relat_1 @ (k6_relat_1 @ (k3_xboole_0 @ X1 @ X0)))
% 0.22/0.50            = (k9_relat_1 @ (k6_relat_1 @ X1) @ X0))
% 0.22/0.50          | ~ (v1_relat_1 @ (k6_relat_1 @ X1)))),
% 0.22/0.50      inference('sup+', [status(thm)], ['41', '46'])).
% 0.22/0.50  thf('48', plain, (![X13 : $i]: ((k2_relat_1 @ (k6_relat_1 @ X13)) = (X13))),
% 0.22/0.50      inference('cnf', [status(esa)], [t71_relat_1])).
% 0.22/0.50  thf('49', plain, (![X2 : $i]: (v1_relat_1 @ (k6_relat_1 @ X2))),
% 0.22/0.50      inference('cnf', [status(esa)], [dt_k6_relat_1])).
% 0.22/0.50  thf('50', plain,
% 0.22/0.50      (![X0 : $i, X1 : $i]:
% 0.22/0.50         ((k3_xboole_0 @ X1 @ X0) = (k9_relat_1 @ (k6_relat_1 @ X1) @ X0))),
% 0.22/0.50      inference('demod', [status(thm)], ['47', '48', '49'])).
% 0.22/0.50  thf('51', plain,
% 0.22/0.50      (![X14 : $i, X15 : $i]:
% 0.22/0.50         (((k3_xboole_0 @ X15 @ X14) = (X14))
% 0.22/0.50          | ~ (m1_subset_1 @ X14 @ (k1_zfmisc_1 @ X15)))),
% 0.22/0.50      inference('demod', [status(thm)], ['40', '50'])).
% 0.22/0.50  thf('52', plain,
% 0.22/0.50      (((k3_xboole_0 @ sk_B @ (k2_relat_1 @ sk_C)) = (k2_relat_1 @ sk_C))),
% 0.22/0.50      inference('sup-', [status(thm)], ['39', '51'])).
% 0.22/0.50  thf(commutativity_k3_xboole_0, axiom,
% 0.22/0.50    (![A:$i,B:$i]: ( ( k3_xboole_0 @ A @ B ) = ( k3_xboole_0 @ B @ A ) ))).
% 0.22/0.50  thf('53', plain,
% 0.22/0.50      (![X0 : $i, X1 : $i]: ((k3_xboole_0 @ X1 @ X0) = (k3_xboole_0 @ X0 @ X1))),
% 0.22/0.50      inference('cnf', [status(esa)], [commutativity_k3_xboole_0])).
% 0.22/0.50  thf(t168_relat_1, axiom,
% 0.22/0.50    (![A:$i,B:$i]:
% 0.22/0.50     ( ( v1_relat_1 @ B ) =>
% 0.22/0.50       ( ( k10_relat_1 @ B @ A ) =
% 0.22/0.50         ( k10_relat_1 @ B @ ( k3_xboole_0 @ ( k2_relat_1 @ B ) @ A ) ) ) ))).
% 0.22/0.50  thf('54', plain,
% 0.22/0.50      (![X7 : $i, X8 : $i]:
% 0.22/0.50         (((k10_relat_1 @ X7 @ X8)
% 0.22/0.50            = (k10_relat_1 @ X7 @ (k3_xboole_0 @ (k2_relat_1 @ X7) @ X8)))
% 0.22/0.50          | ~ (v1_relat_1 @ X7))),
% 0.22/0.50      inference('cnf', [status(esa)], [t168_relat_1])).
% 0.22/0.50  thf('55', plain,
% 0.22/0.50      (![X0 : $i, X1 : $i]:
% 0.22/0.50         (((k10_relat_1 @ X0 @ X1)
% 0.22/0.50            = (k10_relat_1 @ X0 @ (k3_xboole_0 @ X1 @ (k2_relat_1 @ X0))))
% 0.22/0.50          | ~ (v1_relat_1 @ X0))),
% 0.22/0.50      inference('sup+', [status(thm)], ['53', '54'])).
% 0.22/0.50  thf('56', plain,
% 0.22/0.50      ((((k10_relat_1 @ sk_C @ sk_B)
% 0.22/0.50          = (k10_relat_1 @ sk_C @ (k2_relat_1 @ sk_C)))
% 0.22/0.50        | ~ (v1_relat_1 @ sk_C))),
% 0.22/0.50      inference('sup+', [status(thm)], ['52', '55'])).
% 0.22/0.50  thf('57', plain, (((sk_C) = (k7_relat_1 @ sk_C @ sk_A))),
% 0.22/0.50      inference('demod', [status(thm)], ['15', '18'])).
% 0.22/0.50  thf('58', plain,
% 0.22/0.50      (![X3 : $i, X4 : $i]:
% 0.22/0.50         (((k2_relat_1 @ (k7_relat_1 @ X3 @ X4)) = (k9_relat_1 @ X3 @ X4))
% 0.22/0.50          | ~ (v1_relat_1 @ X3))),
% 0.22/0.50      inference('cnf', [status(esa)], [t148_relat_1])).
% 0.22/0.50  thf(t169_relat_1, axiom,
% 0.22/0.50    (![A:$i]:
% 0.22/0.50     ( ( v1_relat_1 @ A ) =>
% 0.22/0.50       ( ( k10_relat_1 @ A @ ( k2_relat_1 @ A ) ) = ( k1_relat_1 @ A ) ) ))).
% 0.22/0.50  thf('59', plain,
% 0.22/0.50      (![X9 : $i]:
% 0.22/0.50         (((k10_relat_1 @ X9 @ (k2_relat_1 @ X9)) = (k1_relat_1 @ X9))
% 0.22/0.50          | ~ (v1_relat_1 @ X9))),
% 0.22/0.50      inference('cnf', [status(esa)], [t169_relat_1])).
% 0.22/0.50  thf('60', plain,
% 0.22/0.50      (![X0 : $i, X1 : $i]:
% 0.22/0.50         (((k10_relat_1 @ (k7_relat_1 @ X1 @ X0) @ (k9_relat_1 @ X1 @ X0))
% 0.22/0.50            = (k1_relat_1 @ (k7_relat_1 @ X1 @ X0)))
% 0.22/0.50          | ~ (v1_relat_1 @ X1)
% 0.22/0.50          | ~ (v1_relat_1 @ (k7_relat_1 @ X1 @ X0)))),
% 0.22/0.50      inference('sup+', [status(thm)], ['58', '59'])).
% 0.22/0.50  thf('61', plain,
% 0.22/0.50      ((~ (v1_relat_1 @ sk_C)
% 0.22/0.50        | ~ (v1_relat_1 @ sk_C)
% 0.22/0.50        | ((k10_relat_1 @ (k7_relat_1 @ sk_C @ sk_A) @ 
% 0.22/0.50            (k9_relat_1 @ sk_C @ sk_A))
% 0.22/0.50            = (k1_relat_1 @ (k7_relat_1 @ sk_C @ sk_A))))),
% 0.22/0.50      inference('sup-', [status(thm)], ['57', '60'])).
% 0.22/0.50  thf('62', plain, ((v1_relat_1 @ sk_C)),
% 0.22/0.50      inference('sup-', [status(thm)], ['16', '17'])).
% 0.22/0.50  thf('63', plain, ((v1_relat_1 @ sk_C)),
% 0.22/0.50      inference('sup-', [status(thm)], ['16', '17'])).
% 0.22/0.50  thf('64', plain, (((sk_C) = (k7_relat_1 @ sk_C @ sk_A))),
% 0.22/0.50      inference('demod', [status(thm)], ['15', '18'])).
% 0.22/0.50  thf('65', plain, (((sk_C) = (k7_relat_1 @ sk_C @ sk_A))),
% 0.22/0.50      inference('demod', [status(thm)], ['15', '18'])).
% 0.22/0.50  thf('66', plain,
% 0.22/0.50      (((k10_relat_1 @ sk_C @ (k9_relat_1 @ sk_C @ sk_A)) = (k1_relat_1 @ sk_C))),
% 0.22/0.50      inference('demod', [status(thm)], ['61', '62', '63', '64', '65'])).
% 0.22/0.50  thf('67', plain, (((k2_relat_1 @ sk_C) = (k9_relat_1 @ sk_C @ sk_A))),
% 0.22/0.50      inference('demod', [status(thm)], ['21', '22'])).
% 0.22/0.50  thf('68', plain,
% 0.22/0.50      (((k10_relat_1 @ sk_C @ (k2_relat_1 @ sk_C)) = (k1_relat_1 @ sk_C))),
% 0.22/0.50      inference('demod', [status(thm)], ['66', '67'])).
% 0.22/0.50  thf('69', plain, ((v1_relat_1 @ sk_C)),
% 0.22/0.50      inference('sup-', [status(thm)], ['16', '17'])).
% 0.22/0.50  thf('70', plain, (((k10_relat_1 @ sk_C @ sk_B) = (k1_relat_1 @ sk_C))),
% 0.22/0.50      inference('demod', [status(thm)], ['56', '68', '69'])).
% 0.22/0.50  thf('71', plain, (((k1_relat_1 @ sk_C) != (k1_relat_1 @ sk_C))),
% 0.22/0.50      inference('demod', [status(thm)], ['31', '34', '70'])).
% 0.22/0.50  thf('72', plain, ($false), inference('simplify', [status(thm)], ['71'])).
% 0.22/0.50  
% 0.22/0.50  % SZS output end Refutation
% 0.22/0.50  
% 0.22/0.51  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
