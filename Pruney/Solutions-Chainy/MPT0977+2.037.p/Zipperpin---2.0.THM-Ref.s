%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.983gh5TIdZ

% Computer   : n009.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:53:49 EST 2020

% Result     : Theorem 0.21s
% Output     : Refutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :   95 ( 163 expanded)
%              Number of leaves         :   33 (  62 expanded)
%              Depth                    :   11
%              Number of atoms          :  802 (1974 expanded)
%              Number of equality atoms :   26 (  30 expanded)
%              Maximal formula depth    :   16 (   7 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k4_relset_1_type,type,(
    k4_relset_1: $i > $i > $i > $i > $i > $i > $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k1_relat_1_type,type,(
    k1_relat_1: $i > $i )).

thf(v4_relat_1_type,type,(
    v4_relat_1: $i > $i > $o )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(r2_relset_1_type,type,(
    r2_relset_1: $i > $i > $i > $i > $o )).

thf(k5_relat_1_type,type,(
    k5_relat_1: $i > $i > $i )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(v5_relat_1_type,type,(
    v5_relat_1: $i > $i > $o )).

thf(k6_partfun1_type,type,(
    k6_partfun1: $i > $i )).

thf(k7_relat_1_type,type,(
    k7_relat_1: $i > $i > $i )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(k6_relat_1_type,type,(
    k6_relat_1: $i > $i )).

thf(k2_relat_1_type,type,(
    k2_relat_1: $i > $i )).

thf(k2_zfmisc_1_type,type,(
    k2_zfmisc_1: $i > $i > $i )).

thf(k8_relat_1_type,type,(
    k8_relat_1: $i > $i > $i )).

thf(t23_funct_2,conjecture,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( r2_relset_1 @ A @ B @ ( k4_relset_1 @ A @ A @ A @ B @ ( k6_partfun1 @ A ) @ C ) @ C )
        & ( r2_relset_1 @ A @ B @ ( k4_relset_1 @ A @ B @ B @ B @ C @ ( k6_partfun1 @ B ) ) @ C ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i] :
        ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
       => ( ( r2_relset_1 @ A @ B @ ( k4_relset_1 @ A @ A @ A @ B @ ( k6_partfun1 @ A ) @ C ) @ C )
          & ( r2_relset_1 @ A @ B @ ( k4_relset_1 @ A @ B @ B @ B @ C @ ( k6_partfun1 @ B ) ) @ C ) ) ) ),
    inference('cnf.neg',[status(esa)],[t23_funct_2])).

thf('0',plain,
    ( ~ ( r2_relset_1 @ sk_A @ sk_B @ ( k4_relset_1 @ sk_A @ sk_A @ sk_A @ sk_B @ ( k6_partfun1 @ sk_A ) @ sk_C ) @ sk_C )
    | ~ ( r2_relset_1 @ sk_A @ sk_B @ ( k4_relset_1 @ sk_A @ sk_B @ sk_B @ sk_B @ sk_C @ ( k6_partfun1 @ sk_B ) ) @ sk_C ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,
    ( ~ ( r2_relset_1 @ sk_A @ sk_B @ ( k4_relset_1 @ sk_A @ sk_A @ sk_A @ sk_B @ ( k6_partfun1 @ sk_A ) @ sk_C ) @ sk_C )
   <= ~ ( r2_relset_1 @ sk_A @ sk_B @ ( k4_relset_1 @ sk_A @ sk_A @ sk_A @ sk_B @ ( k6_partfun1 @ sk_A ) @ sk_C ) @ sk_C ) ),
    inference(split,[status(esa)],['0'])).

thf(redefinition_k6_partfun1,axiom,(
    ! [A: $i] :
      ( ( k6_partfun1 @ A )
      = ( k6_relat_1 @ A ) ) )).

thf('2',plain,(
    ! [X30: $i] :
      ( ( k6_partfun1 @ X30 )
      = ( k6_relat_1 @ X30 ) ) ),
    inference(cnf,[status(esa)],[redefinition_k6_partfun1])).

thf('3',plain,
    ( ~ ( r2_relset_1 @ sk_A @ sk_B @ ( k4_relset_1 @ sk_A @ sk_A @ sk_A @ sk_B @ ( k6_relat_1 @ sk_A ) @ sk_C ) @ sk_C )
   <= ~ ( r2_relset_1 @ sk_A @ sk_B @ ( k4_relset_1 @ sk_A @ sk_A @ sk_A @ sk_B @ ( k6_partfun1 @ sk_A ) @ sk_C ) @ sk_C ) ),
    inference(demod,[status(thm)],['1','2'])).

thf(t123_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( ( k8_relat_1 @ A @ B )
        = ( k5_relat_1 @ B @ ( k6_relat_1 @ A ) ) ) ) )).

thf('4',plain,(
    ! [X6: $i,X7: $i] :
      ( ( ( k8_relat_1 @ X7 @ X6 )
        = ( k5_relat_1 @ X6 @ ( k6_relat_1 @ X7 ) ) )
      | ~ ( v1_relat_1 @ X6 ) ) ),
    inference(cnf,[status(esa)],[t123_relat_1])).

thf(t29_relset_1,axiom,(
    ! [A: $i] :
      ( m1_subset_1 @ ( k6_relat_1 @ A ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ A ) ) ) )).

thf('5',plain,(
    ! [X29: $i] :
      ( m1_subset_1 @ ( k6_relat_1 @ X29 ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X29 @ X29 ) ) ) ),
    inference(cnf,[status(esa)],[t29_relset_1])).

thf('6',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(redefinition_k4_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i,E: $i,F: $i] :
      ( ( ( m1_subset_1 @ E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
        & ( m1_subset_1 @ F @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ D ) ) ) )
     => ( ( k4_relset_1 @ A @ B @ C @ D @ E @ F )
        = ( k5_relat_1 @ E @ F ) ) ) )).

thf('7',plain,(
    ! [X19: $i,X20: $i,X21: $i,X22: $i,X23: $i,X24: $i] :
      ( ~ ( m1_subset_1 @ X19 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X20 @ X21 ) ) )
      | ~ ( m1_subset_1 @ X22 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X23 @ X24 ) ) )
      | ( ( k4_relset_1 @ X20 @ X21 @ X23 @ X24 @ X19 @ X22 )
        = ( k5_relat_1 @ X19 @ X22 ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k4_relset_1])).

thf('8',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( ( k4_relset_1 @ sk_A @ sk_B @ X2 @ X1 @ sk_C @ X0 )
        = ( k5_relat_1 @ sk_C @ X0 ) )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X2 @ X1 ) ) ) ) ),
    inference('sup-',[status(thm)],['6','7'])).

thf('9',plain,(
    ! [X0: $i] :
      ( ( k4_relset_1 @ sk_A @ sk_B @ X0 @ X0 @ sk_C @ ( k6_relat_1 @ X0 ) )
      = ( k5_relat_1 @ sk_C @ ( k6_relat_1 @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['5','8'])).

thf('10',plain,
    ( ~ ( r2_relset_1 @ sk_A @ sk_B @ ( k4_relset_1 @ sk_A @ sk_B @ sk_B @ sk_B @ sk_C @ ( k6_partfun1 @ sk_B ) ) @ sk_C )
   <= ~ ( r2_relset_1 @ sk_A @ sk_B @ ( k4_relset_1 @ sk_A @ sk_B @ sk_B @ sk_B @ sk_C @ ( k6_partfun1 @ sk_B ) ) @ sk_C ) ),
    inference(split,[status(esa)],['0'])).

thf('11',plain,(
    ! [X30: $i] :
      ( ( k6_partfun1 @ X30 )
      = ( k6_relat_1 @ X30 ) ) ),
    inference(cnf,[status(esa)],[redefinition_k6_partfun1])).

thf('12',plain,
    ( ~ ( r2_relset_1 @ sk_A @ sk_B @ ( k4_relset_1 @ sk_A @ sk_B @ sk_B @ sk_B @ sk_C @ ( k6_relat_1 @ sk_B ) ) @ sk_C )
   <= ~ ( r2_relset_1 @ sk_A @ sk_B @ ( k4_relset_1 @ sk_A @ sk_B @ sk_B @ sk_B @ sk_C @ ( k6_partfun1 @ sk_B ) ) @ sk_C ) ),
    inference(demod,[status(thm)],['10','11'])).

thf('13',plain,
    ( ~ ( r2_relset_1 @ sk_A @ sk_B @ ( k5_relat_1 @ sk_C @ ( k6_relat_1 @ sk_B ) ) @ sk_C )
   <= ~ ( r2_relset_1 @ sk_A @ sk_B @ ( k4_relset_1 @ sk_A @ sk_B @ sk_B @ sk_B @ sk_C @ ( k6_partfun1 @ sk_B ) ) @ sk_C ) ),
    inference('sup-',[status(thm)],['9','12'])).

thf('14',plain,
    ( ( ~ ( r2_relset_1 @ sk_A @ sk_B @ ( k8_relat_1 @ sk_B @ sk_C ) @ sk_C )
      | ~ ( v1_relat_1 @ sk_C ) )
   <= ~ ( r2_relset_1 @ sk_A @ sk_B @ ( k4_relset_1 @ sk_A @ sk_B @ sk_B @ sk_B @ sk_C @ ( k6_partfun1 @ sk_B ) ) @ sk_C ) ),
    inference('sup-',[status(thm)],['4','13'])).

thf('15',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(cc2_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( v4_relat_1 @ C @ A )
        & ( v5_relat_1 @ C @ B ) ) ) )).

thf('16',plain,(
    ! [X16: $i,X17: $i,X18: $i] :
      ( ( v5_relat_1 @ X16 @ X18 )
      | ~ ( m1_subset_1 @ X16 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X17 @ X18 ) ) ) ) ),
    inference(cnf,[status(esa)],[cc2_relset_1])).

thf('17',plain,(
    v5_relat_1 @ sk_C @ sk_B ),
    inference('sup-',[status(thm)],['15','16'])).

thf(d19_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( ( v5_relat_1 @ B @ A )
      <=> ( r1_tarski @ ( k2_relat_1 @ B ) @ A ) ) ) )).

thf('18',plain,(
    ! [X2: $i,X3: $i] :
      ( ~ ( v5_relat_1 @ X2 @ X3 )
      | ( r1_tarski @ ( k2_relat_1 @ X2 ) @ X3 )
      | ~ ( v1_relat_1 @ X2 ) ) ),
    inference(cnf,[status(esa)],[d19_relat_1])).

thf('19',plain,
    ( ~ ( v1_relat_1 @ sk_C )
    | ( r1_tarski @ ( k2_relat_1 @ sk_C ) @ sk_B ) ),
    inference('sup-',[status(thm)],['17','18'])).

thf('20',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(cc2_relat_1,axiom,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ! [B: $i] :
          ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) )
         => ( v1_relat_1 @ B ) ) ) )).

thf('21',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ X1 ) )
      | ( v1_relat_1 @ X0 )
      | ~ ( v1_relat_1 @ X1 ) ) ),
    inference(cnf,[status(esa)],[cc2_relat_1])).

thf('22',plain,
    ( ~ ( v1_relat_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) )
    | ( v1_relat_1 @ sk_C ) ),
    inference('sup-',[status(thm)],['20','21'])).

thf(fc6_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( v1_relat_1 @ ( k2_zfmisc_1 @ A @ B ) ) )).

thf('23',plain,(
    ! [X4: $i,X5: $i] :
      ( v1_relat_1 @ ( k2_zfmisc_1 @ X4 @ X5 ) ) ),
    inference(cnf,[status(esa)],[fc6_relat_1])).

thf('24',plain,(
    v1_relat_1 @ sk_C ),
    inference(demod,[status(thm)],['22','23'])).

thf('25',plain,(
    r1_tarski @ ( k2_relat_1 @ sk_C ) @ sk_B ),
    inference(demod,[status(thm)],['19','24'])).

thf(t125_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( ( r1_tarski @ ( k2_relat_1 @ B ) @ A )
       => ( ( k8_relat_1 @ A @ B )
          = B ) ) ) )).

thf('26',plain,(
    ! [X8: $i,X9: $i] :
      ( ~ ( r1_tarski @ ( k2_relat_1 @ X8 ) @ X9 )
      | ( ( k8_relat_1 @ X9 @ X8 )
        = X8 )
      | ~ ( v1_relat_1 @ X8 ) ) ),
    inference(cnf,[status(esa)],[t125_relat_1])).

thf('27',plain,
    ( ~ ( v1_relat_1 @ sk_C )
    | ( ( k8_relat_1 @ sk_B @ sk_C )
      = sk_C ) ),
    inference('sup-',[status(thm)],['25','26'])).

thf('28',plain,(
    v1_relat_1 @ sk_C ),
    inference(demod,[status(thm)],['22','23'])).

thf('29',plain,
    ( ( k8_relat_1 @ sk_B @ sk_C )
    = sk_C ),
    inference(demod,[status(thm)],['27','28'])).

thf('30',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(redefinition_r2_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
        & ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) )
     => ( ( r2_relset_1 @ A @ B @ C @ D )
      <=> ( C = D ) ) ) )).

thf('31',plain,(
    ! [X25: $i,X26: $i,X27: $i,X28: $i] :
      ( ~ ( m1_subset_1 @ X25 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X26 @ X27 ) ) )
      | ~ ( m1_subset_1 @ X28 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X26 @ X27 ) ) )
      | ( r2_relset_1 @ X26 @ X27 @ X25 @ X28 )
      | ( X25 != X28 ) ) ),
    inference(cnf,[status(esa)],[redefinition_r2_relset_1])).

thf('32',plain,(
    ! [X26: $i,X27: $i,X28: $i] :
      ( ( r2_relset_1 @ X26 @ X27 @ X28 @ X28 )
      | ~ ( m1_subset_1 @ X28 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X26 @ X27 ) ) ) ) ),
    inference(simplify,[status(thm)],['31'])).

thf('33',plain,(
    r2_relset_1 @ sk_A @ sk_B @ sk_C @ sk_C ),
    inference('sup-',[status(thm)],['30','32'])).

thf('34',plain,(
    v1_relat_1 @ sk_C ),
    inference(demod,[status(thm)],['22','23'])).

thf('35',plain,(
    r2_relset_1 @ sk_A @ sk_B @ ( k4_relset_1 @ sk_A @ sk_B @ sk_B @ sk_B @ sk_C @ ( k6_partfun1 @ sk_B ) ) @ sk_C ),
    inference(demod,[status(thm)],['14','29','33','34'])).

thf('36',plain,
    ( ~ ( r2_relset_1 @ sk_A @ sk_B @ ( k4_relset_1 @ sk_A @ sk_A @ sk_A @ sk_B @ ( k6_partfun1 @ sk_A ) @ sk_C ) @ sk_C )
    | ~ ( r2_relset_1 @ sk_A @ sk_B @ ( k4_relset_1 @ sk_A @ sk_B @ sk_B @ sk_B @ sk_C @ ( k6_partfun1 @ sk_B ) ) @ sk_C ) ),
    inference(split,[status(esa)],['0'])).

thf('37',plain,(
    ~ ( r2_relset_1 @ sk_A @ sk_B @ ( k4_relset_1 @ sk_A @ sk_A @ sk_A @ sk_B @ ( k6_partfun1 @ sk_A ) @ sk_C ) @ sk_C ) ),
    inference('sat_resolution*',[status(thm)],['35','36'])).

thf('38',plain,(
    ~ ( r2_relset_1 @ sk_A @ sk_B @ ( k4_relset_1 @ sk_A @ sk_A @ sk_A @ sk_B @ ( k6_relat_1 @ sk_A ) @ sk_C ) @ sk_C ) ),
    inference(simpl_trail,[status(thm)],['3','37'])).

thf('39',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('40',plain,(
    ! [X29: $i] :
      ( m1_subset_1 @ ( k6_relat_1 @ X29 ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X29 @ X29 ) ) ) ),
    inference(cnf,[status(esa)],[t29_relset_1])).

thf('41',plain,(
    ! [X19: $i,X20: $i,X21: $i,X22: $i,X23: $i,X24: $i] :
      ( ~ ( m1_subset_1 @ X19 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X20 @ X21 ) ) )
      | ~ ( m1_subset_1 @ X22 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X23 @ X24 ) ) )
      | ( ( k4_relset_1 @ X20 @ X21 @ X23 @ X24 @ X19 @ X22 )
        = ( k5_relat_1 @ X19 @ X22 ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k4_relset_1])).

thf('42',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i] :
      ( ( ( k4_relset_1 @ X0 @ X0 @ X3 @ X2 @ ( k6_relat_1 @ X0 ) @ X1 )
        = ( k5_relat_1 @ ( k6_relat_1 @ X0 ) @ X1 ) )
      | ~ ( m1_subset_1 @ X1 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X3 @ X2 ) ) ) ) ),
    inference('sup-',[status(thm)],['40','41'])).

thf('43',plain,(
    ! [X0: $i] :
      ( ( k4_relset_1 @ X0 @ X0 @ sk_A @ sk_B @ ( k6_relat_1 @ X0 ) @ sk_C )
      = ( k5_relat_1 @ ( k6_relat_1 @ X0 ) @ sk_C ) ) ),
    inference('sup-',[status(thm)],['39','42'])).

thf('44',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('45',plain,(
    ! [X16: $i,X17: $i,X18: $i] :
      ( ( v4_relat_1 @ X16 @ X17 )
      | ~ ( m1_subset_1 @ X16 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X17 @ X18 ) ) ) ) ),
    inference(cnf,[status(esa)],[cc2_relset_1])).

thf('46',plain,(
    v4_relat_1 @ sk_C @ sk_A ),
    inference('sup-',[status(thm)],['44','45'])).

thf(t209_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( v1_relat_1 @ B )
        & ( v4_relat_1 @ B @ A ) )
     => ( B
        = ( k7_relat_1 @ B @ A ) ) ) )).

thf('47',plain,(
    ! [X10: $i,X11: $i] :
      ( ( X10
        = ( k7_relat_1 @ X10 @ X11 ) )
      | ~ ( v4_relat_1 @ X10 @ X11 )
      | ~ ( v1_relat_1 @ X10 ) ) ),
    inference(cnf,[status(esa)],[t209_relat_1])).

thf('48',plain,
    ( ~ ( v1_relat_1 @ sk_C )
    | ( sk_C
      = ( k7_relat_1 @ sk_C @ sk_A ) ) ),
    inference('sup-',[status(thm)],['46','47'])).

thf('49',plain,(
    v1_relat_1 @ sk_C ),
    inference(demod,[status(thm)],['22','23'])).

thf('50',plain,
    ( sk_C
    = ( k7_relat_1 @ sk_C @ sk_A ) ),
    inference(demod,[status(thm)],['48','49'])).

thf(t87_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( r1_tarski @ ( k1_relat_1 @ ( k7_relat_1 @ B @ A ) ) @ A ) ) )).

thf('51',plain,(
    ! [X14: $i,X15: $i] :
      ( ( r1_tarski @ ( k1_relat_1 @ ( k7_relat_1 @ X14 @ X15 ) ) @ X15 )
      | ~ ( v1_relat_1 @ X14 ) ) ),
    inference(cnf,[status(esa)],[t87_relat_1])).

thf('52',plain,
    ( ( r1_tarski @ ( k1_relat_1 @ sk_C ) @ sk_A )
    | ~ ( v1_relat_1 @ sk_C ) ),
    inference('sup+',[status(thm)],['50','51'])).

thf('53',plain,(
    v1_relat_1 @ sk_C ),
    inference(demod,[status(thm)],['22','23'])).

thf('54',plain,(
    r1_tarski @ ( k1_relat_1 @ sk_C ) @ sk_A ),
    inference(demod,[status(thm)],['52','53'])).

thf(t77_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( ( r1_tarski @ ( k1_relat_1 @ B ) @ A )
       => ( ( k5_relat_1 @ ( k6_relat_1 @ A ) @ B )
          = B ) ) ) )).

thf('55',plain,(
    ! [X12: $i,X13: $i] :
      ( ~ ( r1_tarski @ ( k1_relat_1 @ X12 ) @ X13 )
      | ( ( k5_relat_1 @ ( k6_relat_1 @ X13 ) @ X12 )
        = X12 )
      | ~ ( v1_relat_1 @ X12 ) ) ),
    inference(cnf,[status(esa)],[t77_relat_1])).

thf('56',plain,
    ( ~ ( v1_relat_1 @ sk_C )
    | ( ( k5_relat_1 @ ( k6_relat_1 @ sk_A ) @ sk_C )
      = sk_C ) ),
    inference('sup-',[status(thm)],['54','55'])).

thf('57',plain,(
    v1_relat_1 @ sk_C ),
    inference(demod,[status(thm)],['22','23'])).

thf('58',plain,
    ( ( k5_relat_1 @ ( k6_relat_1 @ sk_A ) @ sk_C )
    = sk_C ),
    inference(demod,[status(thm)],['56','57'])).

thf('59',plain,(
    r2_relset_1 @ sk_A @ sk_B @ sk_C @ sk_C ),
    inference('sup-',[status(thm)],['30','32'])).

thf('60',plain,(
    $false ),
    inference(demod,[status(thm)],['38','43','58','59'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.983gh5TIdZ
% 0.13/0.34  % Computer   : n009.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 09:59:56 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running portfolio for 600 s
% 0.13/0.34  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.13/0.35  % Number of cores: 8
% 0.13/0.35  % Python version: Python 3.6.8
% 0.13/0.35  % Running in FO mode
% 0.21/0.51  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.21/0.51  % Solved by: fo/fo7.sh
% 0.21/0.51  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.21/0.51  % done 53 iterations in 0.030s
% 0.21/0.51  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.21/0.51  % SZS output start Refutation
% 0.21/0.51  thf(k4_relset_1_type, type, k4_relset_1: $i > $i > $i > $i > $i > $i > $i).
% 0.21/0.51  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.21/0.51  thf(sk_A_type, type, sk_A: $i).
% 0.21/0.51  thf(k1_relat_1_type, type, k1_relat_1: $i > $i).
% 0.21/0.51  thf(v4_relat_1_type, type, v4_relat_1: $i > $i > $o).
% 0.21/0.51  thf(sk_B_type, type, sk_B: $i).
% 0.21/0.51  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.21/0.51  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.21/0.51  thf(r2_relset_1_type, type, r2_relset_1: $i > $i > $i > $i > $o).
% 0.21/0.51  thf(k5_relat_1_type, type, k5_relat_1: $i > $i > $i).
% 0.21/0.51  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.21/0.51  thf(v5_relat_1_type, type, v5_relat_1: $i > $i > $o).
% 0.21/0.51  thf(k6_partfun1_type, type, k6_partfun1: $i > $i).
% 0.21/0.51  thf(k7_relat_1_type, type, k7_relat_1: $i > $i > $i).
% 0.21/0.51  thf(sk_C_type, type, sk_C: $i).
% 0.21/0.51  thf(k6_relat_1_type, type, k6_relat_1: $i > $i).
% 0.21/0.51  thf(k2_relat_1_type, type, k2_relat_1: $i > $i).
% 0.21/0.51  thf(k2_zfmisc_1_type, type, k2_zfmisc_1: $i > $i > $i).
% 0.21/0.51  thf(k8_relat_1_type, type, k8_relat_1: $i > $i > $i).
% 0.21/0.51  thf(t23_funct_2, conjecture,
% 0.21/0.51    (![A:$i,B:$i,C:$i]:
% 0.21/0.51     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.21/0.51       ( ( r2_relset_1 @
% 0.21/0.51           A @ B @ ( k4_relset_1 @ A @ A @ A @ B @ ( k6_partfun1 @ A ) @ C ) @ 
% 0.21/0.51           C ) & 
% 0.21/0.51         ( r2_relset_1 @
% 0.21/0.51           A @ B @ ( k4_relset_1 @ A @ B @ B @ B @ C @ ( k6_partfun1 @ B ) ) @ 
% 0.21/0.51           C ) ) ))).
% 0.21/0.51  thf(zf_stmt_0, negated_conjecture,
% 0.21/0.51    (~( ![A:$i,B:$i,C:$i]:
% 0.21/0.51        ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.21/0.51          ( ( r2_relset_1 @
% 0.21/0.51              A @ B @ 
% 0.21/0.51              ( k4_relset_1 @ A @ A @ A @ B @ ( k6_partfun1 @ A ) @ C ) @ C ) & 
% 0.21/0.51            ( r2_relset_1 @
% 0.21/0.51              A @ B @ 
% 0.21/0.51              ( k4_relset_1 @ A @ B @ B @ B @ C @ ( k6_partfun1 @ B ) ) @ C ) ) ) )),
% 0.21/0.51    inference('cnf.neg', [status(esa)], [t23_funct_2])).
% 0.21/0.51  thf('0', plain,
% 0.21/0.51      ((~ (r2_relset_1 @ sk_A @ sk_B @ 
% 0.21/0.51           (k4_relset_1 @ sk_A @ sk_A @ sk_A @ sk_B @ (k6_partfun1 @ sk_A) @ 
% 0.21/0.51            sk_C) @ 
% 0.21/0.51           sk_C)
% 0.21/0.51        | ~ (r2_relset_1 @ sk_A @ sk_B @ 
% 0.21/0.51             (k4_relset_1 @ sk_A @ sk_B @ sk_B @ sk_B @ sk_C @ 
% 0.21/0.51              (k6_partfun1 @ sk_B)) @ 
% 0.21/0.51             sk_C))),
% 0.21/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.51  thf('1', plain,
% 0.21/0.51      ((~ (r2_relset_1 @ sk_A @ sk_B @ 
% 0.21/0.51           (k4_relset_1 @ sk_A @ sk_A @ sk_A @ sk_B @ (k6_partfun1 @ sk_A) @ 
% 0.21/0.51            sk_C) @ 
% 0.21/0.51           sk_C))
% 0.21/0.51         <= (~
% 0.21/0.51             ((r2_relset_1 @ sk_A @ sk_B @ 
% 0.21/0.51               (k4_relset_1 @ sk_A @ sk_A @ sk_A @ sk_B @ 
% 0.21/0.51                (k6_partfun1 @ sk_A) @ sk_C) @ 
% 0.21/0.51               sk_C)))),
% 0.21/0.51      inference('split', [status(esa)], ['0'])).
% 0.21/0.51  thf(redefinition_k6_partfun1, axiom,
% 0.21/0.51    (![A:$i]: ( ( k6_partfun1 @ A ) = ( k6_relat_1 @ A ) ))).
% 0.21/0.51  thf('2', plain, (![X30 : $i]: ((k6_partfun1 @ X30) = (k6_relat_1 @ X30))),
% 0.21/0.51      inference('cnf', [status(esa)], [redefinition_k6_partfun1])).
% 0.21/0.51  thf('3', plain,
% 0.21/0.51      ((~ (r2_relset_1 @ sk_A @ sk_B @ 
% 0.21/0.51           (k4_relset_1 @ sk_A @ sk_A @ sk_A @ sk_B @ (k6_relat_1 @ sk_A) @ 
% 0.21/0.51            sk_C) @ 
% 0.21/0.51           sk_C))
% 0.21/0.51         <= (~
% 0.21/0.51             ((r2_relset_1 @ sk_A @ sk_B @ 
% 0.21/0.51               (k4_relset_1 @ sk_A @ sk_A @ sk_A @ sk_B @ 
% 0.21/0.51                (k6_partfun1 @ sk_A) @ sk_C) @ 
% 0.21/0.51               sk_C)))),
% 0.21/0.51      inference('demod', [status(thm)], ['1', '2'])).
% 0.21/0.51  thf(t123_relat_1, axiom,
% 0.21/0.51    (![A:$i,B:$i]:
% 0.21/0.51     ( ( v1_relat_1 @ B ) =>
% 0.21/0.51       ( ( k8_relat_1 @ A @ B ) = ( k5_relat_1 @ B @ ( k6_relat_1 @ A ) ) ) ))).
% 0.21/0.51  thf('4', plain,
% 0.21/0.51      (![X6 : $i, X7 : $i]:
% 0.21/0.51         (((k8_relat_1 @ X7 @ X6) = (k5_relat_1 @ X6 @ (k6_relat_1 @ X7)))
% 0.21/0.51          | ~ (v1_relat_1 @ X6))),
% 0.21/0.51      inference('cnf', [status(esa)], [t123_relat_1])).
% 0.21/0.51  thf(t29_relset_1, axiom,
% 0.21/0.51    (![A:$i]:
% 0.21/0.51     ( m1_subset_1 @
% 0.21/0.51       ( k6_relat_1 @ A ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ A ) ) ))).
% 0.21/0.51  thf('5', plain,
% 0.21/0.51      (![X29 : $i]:
% 0.21/0.51         (m1_subset_1 @ (k6_relat_1 @ X29) @ 
% 0.21/0.51          (k1_zfmisc_1 @ (k2_zfmisc_1 @ X29 @ X29)))),
% 0.21/0.51      inference('cnf', [status(esa)], [t29_relset_1])).
% 0.21/0.51  thf('6', plain,
% 0.21/0.51      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 0.21/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.51  thf(redefinition_k4_relset_1, axiom,
% 0.21/0.51    (![A:$i,B:$i,C:$i,D:$i,E:$i,F:$i]:
% 0.21/0.51     ( ( ( m1_subset_1 @ E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) & 
% 0.21/0.51         ( m1_subset_1 @ F @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ D ) ) ) ) =>
% 0.21/0.51       ( ( k4_relset_1 @ A @ B @ C @ D @ E @ F ) = ( k5_relat_1 @ E @ F ) ) ))).
% 0.21/0.51  thf('7', plain,
% 0.21/0.51      (![X19 : $i, X20 : $i, X21 : $i, X22 : $i, X23 : $i, X24 : $i]:
% 0.21/0.51         (~ (m1_subset_1 @ X19 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X20 @ X21)))
% 0.21/0.51          | ~ (m1_subset_1 @ X22 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X23 @ X24)))
% 0.21/0.51          | ((k4_relset_1 @ X20 @ X21 @ X23 @ X24 @ X19 @ X22)
% 0.21/0.51              = (k5_relat_1 @ X19 @ X22)))),
% 0.21/0.51      inference('cnf', [status(esa)], [redefinition_k4_relset_1])).
% 0.21/0.51  thf('8', plain,
% 0.21/0.51      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.21/0.51         (((k4_relset_1 @ sk_A @ sk_B @ X2 @ X1 @ sk_C @ X0)
% 0.21/0.51            = (k5_relat_1 @ sk_C @ X0))
% 0.21/0.51          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X2 @ X1))))),
% 0.21/0.51      inference('sup-', [status(thm)], ['6', '7'])).
% 0.21/0.51  thf('9', plain,
% 0.21/0.51      (![X0 : $i]:
% 0.21/0.51         ((k4_relset_1 @ sk_A @ sk_B @ X0 @ X0 @ sk_C @ (k6_relat_1 @ X0))
% 0.21/0.51           = (k5_relat_1 @ sk_C @ (k6_relat_1 @ X0)))),
% 0.21/0.51      inference('sup-', [status(thm)], ['5', '8'])).
% 0.21/0.51  thf('10', plain,
% 0.21/0.51      ((~ (r2_relset_1 @ sk_A @ sk_B @ 
% 0.21/0.51           (k4_relset_1 @ sk_A @ sk_B @ sk_B @ sk_B @ sk_C @ 
% 0.21/0.51            (k6_partfun1 @ sk_B)) @ 
% 0.21/0.51           sk_C))
% 0.21/0.51         <= (~
% 0.21/0.51             ((r2_relset_1 @ sk_A @ sk_B @ 
% 0.21/0.51               (k4_relset_1 @ sk_A @ sk_B @ sk_B @ sk_B @ sk_C @ 
% 0.21/0.51                (k6_partfun1 @ sk_B)) @ 
% 0.21/0.51               sk_C)))),
% 0.21/0.51      inference('split', [status(esa)], ['0'])).
% 0.21/0.51  thf('11', plain, (![X30 : $i]: ((k6_partfun1 @ X30) = (k6_relat_1 @ X30))),
% 0.21/0.51      inference('cnf', [status(esa)], [redefinition_k6_partfun1])).
% 0.21/0.51  thf('12', plain,
% 0.21/0.51      ((~ (r2_relset_1 @ sk_A @ sk_B @ 
% 0.21/0.51           (k4_relset_1 @ sk_A @ sk_B @ sk_B @ sk_B @ sk_C @ 
% 0.21/0.51            (k6_relat_1 @ sk_B)) @ 
% 0.21/0.51           sk_C))
% 0.21/0.51         <= (~
% 0.21/0.51             ((r2_relset_1 @ sk_A @ sk_B @ 
% 0.21/0.51               (k4_relset_1 @ sk_A @ sk_B @ sk_B @ sk_B @ sk_C @ 
% 0.21/0.51                (k6_partfun1 @ sk_B)) @ 
% 0.21/0.51               sk_C)))),
% 0.21/0.51      inference('demod', [status(thm)], ['10', '11'])).
% 0.21/0.51  thf('13', plain,
% 0.21/0.51      ((~ (r2_relset_1 @ sk_A @ sk_B @ 
% 0.21/0.51           (k5_relat_1 @ sk_C @ (k6_relat_1 @ sk_B)) @ sk_C))
% 0.21/0.51         <= (~
% 0.21/0.51             ((r2_relset_1 @ sk_A @ sk_B @ 
% 0.21/0.51               (k4_relset_1 @ sk_A @ sk_B @ sk_B @ sk_B @ sk_C @ 
% 0.21/0.51                (k6_partfun1 @ sk_B)) @ 
% 0.21/0.51               sk_C)))),
% 0.21/0.51      inference('sup-', [status(thm)], ['9', '12'])).
% 0.21/0.51  thf('14', plain,
% 0.21/0.51      (((~ (r2_relset_1 @ sk_A @ sk_B @ (k8_relat_1 @ sk_B @ sk_C) @ sk_C)
% 0.21/0.51         | ~ (v1_relat_1 @ sk_C)))
% 0.21/0.51         <= (~
% 0.21/0.51             ((r2_relset_1 @ sk_A @ sk_B @ 
% 0.21/0.51               (k4_relset_1 @ sk_A @ sk_B @ sk_B @ sk_B @ sk_C @ 
% 0.21/0.51                (k6_partfun1 @ sk_B)) @ 
% 0.21/0.51               sk_C)))),
% 0.21/0.51      inference('sup-', [status(thm)], ['4', '13'])).
% 0.21/0.51  thf('15', plain,
% 0.21/0.51      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 0.21/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.51  thf(cc2_relset_1, axiom,
% 0.21/0.51    (![A:$i,B:$i,C:$i]:
% 0.21/0.51     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.21/0.51       ( ( v4_relat_1 @ C @ A ) & ( v5_relat_1 @ C @ B ) ) ))).
% 0.21/0.51  thf('16', plain,
% 0.21/0.51      (![X16 : $i, X17 : $i, X18 : $i]:
% 0.21/0.51         ((v5_relat_1 @ X16 @ X18)
% 0.21/0.51          | ~ (m1_subset_1 @ X16 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X17 @ X18))))),
% 0.21/0.51      inference('cnf', [status(esa)], [cc2_relset_1])).
% 0.21/0.51  thf('17', plain, ((v5_relat_1 @ sk_C @ sk_B)),
% 0.21/0.51      inference('sup-', [status(thm)], ['15', '16'])).
% 0.21/0.51  thf(d19_relat_1, axiom,
% 0.21/0.51    (![A:$i,B:$i]:
% 0.21/0.51     ( ( v1_relat_1 @ B ) =>
% 0.21/0.51       ( ( v5_relat_1 @ B @ A ) <=> ( r1_tarski @ ( k2_relat_1 @ B ) @ A ) ) ))).
% 0.21/0.51  thf('18', plain,
% 0.21/0.51      (![X2 : $i, X3 : $i]:
% 0.21/0.51         (~ (v5_relat_1 @ X2 @ X3)
% 0.21/0.51          | (r1_tarski @ (k2_relat_1 @ X2) @ X3)
% 0.21/0.51          | ~ (v1_relat_1 @ X2))),
% 0.21/0.51      inference('cnf', [status(esa)], [d19_relat_1])).
% 0.21/0.51  thf('19', plain,
% 0.21/0.51      ((~ (v1_relat_1 @ sk_C) | (r1_tarski @ (k2_relat_1 @ sk_C) @ sk_B))),
% 0.21/0.51      inference('sup-', [status(thm)], ['17', '18'])).
% 0.21/0.51  thf('20', plain,
% 0.21/0.51      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 0.21/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.51  thf(cc2_relat_1, axiom,
% 0.21/0.51    (![A:$i]:
% 0.21/0.51     ( ( v1_relat_1 @ A ) =>
% 0.21/0.51       ( ![B:$i]:
% 0.21/0.51         ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) ) => ( v1_relat_1 @ B ) ) ) ))).
% 0.21/0.51  thf('21', plain,
% 0.21/0.51      (![X0 : $i, X1 : $i]:
% 0.21/0.51         (~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ X1))
% 0.21/0.51          | (v1_relat_1 @ X0)
% 0.21/0.51          | ~ (v1_relat_1 @ X1))),
% 0.21/0.51      inference('cnf', [status(esa)], [cc2_relat_1])).
% 0.21/0.51  thf('22', plain,
% 0.21/0.51      ((~ (v1_relat_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)) | (v1_relat_1 @ sk_C))),
% 0.21/0.51      inference('sup-', [status(thm)], ['20', '21'])).
% 0.21/0.51  thf(fc6_relat_1, axiom,
% 0.21/0.51    (![A:$i,B:$i]: ( v1_relat_1 @ ( k2_zfmisc_1 @ A @ B ) ))).
% 0.21/0.51  thf('23', plain,
% 0.21/0.51      (![X4 : $i, X5 : $i]: (v1_relat_1 @ (k2_zfmisc_1 @ X4 @ X5))),
% 0.21/0.51      inference('cnf', [status(esa)], [fc6_relat_1])).
% 0.21/0.51  thf('24', plain, ((v1_relat_1 @ sk_C)),
% 0.21/0.51      inference('demod', [status(thm)], ['22', '23'])).
% 0.21/0.51  thf('25', plain, ((r1_tarski @ (k2_relat_1 @ sk_C) @ sk_B)),
% 0.21/0.51      inference('demod', [status(thm)], ['19', '24'])).
% 0.21/0.51  thf(t125_relat_1, axiom,
% 0.21/0.51    (![A:$i,B:$i]:
% 0.21/0.51     ( ( v1_relat_1 @ B ) =>
% 0.21/0.51       ( ( r1_tarski @ ( k2_relat_1 @ B ) @ A ) =>
% 0.21/0.51         ( ( k8_relat_1 @ A @ B ) = ( B ) ) ) ))).
% 0.21/0.51  thf('26', plain,
% 0.21/0.51      (![X8 : $i, X9 : $i]:
% 0.21/0.51         (~ (r1_tarski @ (k2_relat_1 @ X8) @ X9)
% 0.21/0.51          | ((k8_relat_1 @ X9 @ X8) = (X8))
% 0.21/0.51          | ~ (v1_relat_1 @ X8))),
% 0.21/0.51      inference('cnf', [status(esa)], [t125_relat_1])).
% 0.21/0.51  thf('27', plain,
% 0.21/0.51      ((~ (v1_relat_1 @ sk_C) | ((k8_relat_1 @ sk_B @ sk_C) = (sk_C)))),
% 0.21/0.51      inference('sup-', [status(thm)], ['25', '26'])).
% 0.21/0.51  thf('28', plain, ((v1_relat_1 @ sk_C)),
% 0.21/0.51      inference('demod', [status(thm)], ['22', '23'])).
% 0.21/0.51  thf('29', plain, (((k8_relat_1 @ sk_B @ sk_C) = (sk_C))),
% 0.21/0.51      inference('demod', [status(thm)], ['27', '28'])).
% 0.21/0.51  thf('30', plain,
% 0.21/0.51      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 0.21/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.51  thf(redefinition_r2_relset_1, axiom,
% 0.21/0.51    (![A:$i,B:$i,C:$i,D:$i]:
% 0.21/0.51     ( ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) & 
% 0.21/0.51         ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) =>
% 0.21/0.51       ( ( r2_relset_1 @ A @ B @ C @ D ) <=> ( ( C ) = ( D ) ) ) ))).
% 0.21/0.51  thf('31', plain,
% 0.21/0.51      (![X25 : $i, X26 : $i, X27 : $i, X28 : $i]:
% 0.21/0.51         (~ (m1_subset_1 @ X25 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X26 @ X27)))
% 0.21/0.51          | ~ (m1_subset_1 @ X28 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X26 @ X27)))
% 0.21/0.51          | (r2_relset_1 @ X26 @ X27 @ X25 @ X28)
% 0.21/0.51          | ((X25) != (X28)))),
% 0.21/0.51      inference('cnf', [status(esa)], [redefinition_r2_relset_1])).
% 0.21/0.51  thf('32', plain,
% 0.21/0.51      (![X26 : $i, X27 : $i, X28 : $i]:
% 0.21/0.51         ((r2_relset_1 @ X26 @ X27 @ X28 @ X28)
% 0.21/0.51          | ~ (m1_subset_1 @ X28 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X26 @ X27))))),
% 0.21/0.51      inference('simplify', [status(thm)], ['31'])).
% 0.21/0.51  thf('33', plain, ((r2_relset_1 @ sk_A @ sk_B @ sk_C @ sk_C)),
% 0.21/0.51      inference('sup-', [status(thm)], ['30', '32'])).
% 0.21/0.51  thf('34', plain, ((v1_relat_1 @ sk_C)),
% 0.21/0.51      inference('demod', [status(thm)], ['22', '23'])).
% 0.21/0.51  thf('35', plain,
% 0.21/0.51      (((r2_relset_1 @ sk_A @ sk_B @ 
% 0.21/0.51         (k4_relset_1 @ sk_A @ sk_B @ sk_B @ sk_B @ sk_C @ (k6_partfun1 @ sk_B)) @ 
% 0.21/0.51         sk_C))),
% 0.21/0.51      inference('demod', [status(thm)], ['14', '29', '33', '34'])).
% 0.21/0.51  thf('36', plain,
% 0.21/0.51      (~
% 0.21/0.51       ((r2_relset_1 @ sk_A @ sk_B @ 
% 0.21/0.51         (k4_relset_1 @ sk_A @ sk_A @ sk_A @ sk_B @ (k6_partfun1 @ sk_A) @ sk_C) @ 
% 0.21/0.51         sk_C)) | 
% 0.21/0.51       ~
% 0.21/0.51       ((r2_relset_1 @ sk_A @ sk_B @ 
% 0.21/0.51         (k4_relset_1 @ sk_A @ sk_B @ sk_B @ sk_B @ sk_C @ (k6_partfun1 @ sk_B)) @ 
% 0.21/0.51         sk_C))),
% 0.21/0.51      inference('split', [status(esa)], ['0'])).
% 0.21/0.51  thf('37', plain,
% 0.21/0.51      (~
% 0.21/0.51       ((r2_relset_1 @ sk_A @ sk_B @ 
% 0.21/0.51         (k4_relset_1 @ sk_A @ sk_A @ sk_A @ sk_B @ (k6_partfun1 @ sk_A) @ sk_C) @ 
% 0.21/0.51         sk_C))),
% 0.21/0.51      inference('sat_resolution*', [status(thm)], ['35', '36'])).
% 0.21/0.51  thf('38', plain,
% 0.21/0.51      (~ (r2_relset_1 @ sk_A @ sk_B @ 
% 0.21/0.51          (k4_relset_1 @ sk_A @ sk_A @ sk_A @ sk_B @ (k6_relat_1 @ sk_A) @ sk_C) @ 
% 0.21/0.51          sk_C)),
% 0.21/0.51      inference('simpl_trail', [status(thm)], ['3', '37'])).
% 0.21/0.51  thf('39', plain,
% 0.21/0.51      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 0.21/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.51  thf('40', plain,
% 0.21/0.51      (![X29 : $i]:
% 0.21/0.51         (m1_subset_1 @ (k6_relat_1 @ X29) @ 
% 0.21/0.51          (k1_zfmisc_1 @ (k2_zfmisc_1 @ X29 @ X29)))),
% 0.21/0.51      inference('cnf', [status(esa)], [t29_relset_1])).
% 0.21/0.51  thf('41', plain,
% 0.21/0.51      (![X19 : $i, X20 : $i, X21 : $i, X22 : $i, X23 : $i, X24 : $i]:
% 0.21/0.51         (~ (m1_subset_1 @ X19 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X20 @ X21)))
% 0.21/0.51          | ~ (m1_subset_1 @ X22 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X23 @ X24)))
% 0.21/0.51          | ((k4_relset_1 @ X20 @ X21 @ X23 @ X24 @ X19 @ X22)
% 0.21/0.51              = (k5_relat_1 @ X19 @ X22)))),
% 0.21/0.51      inference('cnf', [status(esa)], [redefinition_k4_relset_1])).
% 0.21/0.51  thf('42', plain,
% 0.21/0.51      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 0.21/0.51         (((k4_relset_1 @ X0 @ X0 @ X3 @ X2 @ (k6_relat_1 @ X0) @ X1)
% 0.21/0.51            = (k5_relat_1 @ (k6_relat_1 @ X0) @ X1))
% 0.21/0.51          | ~ (m1_subset_1 @ X1 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X3 @ X2))))),
% 0.21/0.51      inference('sup-', [status(thm)], ['40', '41'])).
% 0.21/0.51  thf('43', plain,
% 0.21/0.51      (![X0 : $i]:
% 0.21/0.51         ((k4_relset_1 @ X0 @ X0 @ sk_A @ sk_B @ (k6_relat_1 @ X0) @ sk_C)
% 0.21/0.51           = (k5_relat_1 @ (k6_relat_1 @ X0) @ sk_C))),
% 0.21/0.51      inference('sup-', [status(thm)], ['39', '42'])).
% 0.21/0.51  thf('44', plain,
% 0.21/0.51      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 0.21/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.51  thf('45', plain,
% 0.21/0.51      (![X16 : $i, X17 : $i, X18 : $i]:
% 0.21/0.51         ((v4_relat_1 @ X16 @ X17)
% 0.21/0.51          | ~ (m1_subset_1 @ X16 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X17 @ X18))))),
% 0.21/0.51      inference('cnf', [status(esa)], [cc2_relset_1])).
% 0.21/0.51  thf('46', plain, ((v4_relat_1 @ sk_C @ sk_A)),
% 0.21/0.51      inference('sup-', [status(thm)], ['44', '45'])).
% 0.21/0.51  thf(t209_relat_1, axiom,
% 0.21/0.51    (![A:$i,B:$i]:
% 0.21/0.51     ( ( ( v1_relat_1 @ B ) & ( v4_relat_1 @ B @ A ) ) =>
% 0.21/0.51       ( ( B ) = ( k7_relat_1 @ B @ A ) ) ))).
% 0.21/0.51  thf('47', plain,
% 0.21/0.51      (![X10 : $i, X11 : $i]:
% 0.21/0.51         (((X10) = (k7_relat_1 @ X10 @ X11))
% 0.21/0.51          | ~ (v4_relat_1 @ X10 @ X11)
% 0.21/0.51          | ~ (v1_relat_1 @ X10))),
% 0.21/0.51      inference('cnf', [status(esa)], [t209_relat_1])).
% 0.21/0.51  thf('48', plain,
% 0.21/0.51      ((~ (v1_relat_1 @ sk_C) | ((sk_C) = (k7_relat_1 @ sk_C @ sk_A)))),
% 0.21/0.51      inference('sup-', [status(thm)], ['46', '47'])).
% 0.21/0.51  thf('49', plain, ((v1_relat_1 @ sk_C)),
% 0.21/0.51      inference('demod', [status(thm)], ['22', '23'])).
% 0.21/0.51  thf('50', plain, (((sk_C) = (k7_relat_1 @ sk_C @ sk_A))),
% 0.21/0.51      inference('demod', [status(thm)], ['48', '49'])).
% 0.21/0.51  thf(t87_relat_1, axiom,
% 0.21/0.51    (![A:$i,B:$i]:
% 0.21/0.51     ( ( v1_relat_1 @ B ) =>
% 0.21/0.51       ( r1_tarski @ ( k1_relat_1 @ ( k7_relat_1 @ B @ A ) ) @ A ) ))).
% 0.21/0.51  thf('51', plain,
% 0.21/0.51      (![X14 : $i, X15 : $i]:
% 0.21/0.51         ((r1_tarski @ (k1_relat_1 @ (k7_relat_1 @ X14 @ X15)) @ X15)
% 0.21/0.51          | ~ (v1_relat_1 @ X14))),
% 0.21/0.51      inference('cnf', [status(esa)], [t87_relat_1])).
% 0.21/0.51  thf('52', plain,
% 0.21/0.51      (((r1_tarski @ (k1_relat_1 @ sk_C) @ sk_A) | ~ (v1_relat_1 @ sk_C))),
% 0.21/0.51      inference('sup+', [status(thm)], ['50', '51'])).
% 0.21/0.51  thf('53', plain, ((v1_relat_1 @ sk_C)),
% 0.21/0.51      inference('demod', [status(thm)], ['22', '23'])).
% 0.21/0.51  thf('54', plain, ((r1_tarski @ (k1_relat_1 @ sk_C) @ sk_A)),
% 0.21/0.51      inference('demod', [status(thm)], ['52', '53'])).
% 0.21/0.51  thf(t77_relat_1, axiom,
% 0.21/0.51    (![A:$i,B:$i]:
% 0.21/0.51     ( ( v1_relat_1 @ B ) =>
% 0.21/0.51       ( ( r1_tarski @ ( k1_relat_1 @ B ) @ A ) =>
% 0.21/0.51         ( ( k5_relat_1 @ ( k6_relat_1 @ A ) @ B ) = ( B ) ) ) ))).
% 0.21/0.51  thf('55', plain,
% 0.21/0.51      (![X12 : $i, X13 : $i]:
% 0.21/0.51         (~ (r1_tarski @ (k1_relat_1 @ X12) @ X13)
% 0.21/0.51          | ((k5_relat_1 @ (k6_relat_1 @ X13) @ X12) = (X12))
% 0.21/0.51          | ~ (v1_relat_1 @ X12))),
% 0.21/0.51      inference('cnf', [status(esa)], [t77_relat_1])).
% 0.21/0.51  thf('56', plain,
% 0.21/0.51      ((~ (v1_relat_1 @ sk_C)
% 0.21/0.51        | ((k5_relat_1 @ (k6_relat_1 @ sk_A) @ sk_C) = (sk_C)))),
% 0.21/0.51      inference('sup-', [status(thm)], ['54', '55'])).
% 0.21/0.51  thf('57', plain, ((v1_relat_1 @ sk_C)),
% 0.21/0.51      inference('demod', [status(thm)], ['22', '23'])).
% 0.21/0.51  thf('58', plain, (((k5_relat_1 @ (k6_relat_1 @ sk_A) @ sk_C) = (sk_C))),
% 0.21/0.51      inference('demod', [status(thm)], ['56', '57'])).
% 0.21/0.51  thf('59', plain, ((r2_relset_1 @ sk_A @ sk_B @ sk_C @ sk_C)),
% 0.21/0.51      inference('sup-', [status(thm)], ['30', '32'])).
% 0.21/0.51  thf('60', plain, ($false),
% 0.21/0.51      inference('demod', [status(thm)], ['38', '43', '58', '59'])).
% 0.21/0.51  
% 0.21/0.51  % SZS output end Refutation
% 0.21/0.51  
% 0.21/0.52  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
