%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.rjKqj2JRqZ

% Computer   : n018.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:53:49 EST 2020

% Result     : Theorem 0.20s
% Output     : Refutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   92 ( 156 expanded)
%              Number of leaves         :   32 (  60 expanded)
%              Depth                    :   12
%              Number of atoms          :  783 (1879 expanded)
%              Number of equality atoms :   23 (  28 expanded)
%              Maximal formula depth    :   16 (   7 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(v4_relat_1_type,type,(
    v4_relat_1: $i > $i > $o )).

thf(r2_relset_1_type,type,(
    r2_relset_1: $i > $i > $i > $i > $o )).

thf(v1_partfun1_type,type,(
    v1_partfun1: $i > $i > $o )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k5_relat_1_type,type,(
    k5_relat_1: $i > $i > $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(v5_relat_1_type,type,(
    v5_relat_1: $i > $i > $o )).

thf(k7_relat_1_type,type,(
    k7_relat_1: $i > $i > $i )).

thf(k6_relat_1_type,type,(
    k6_relat_1: $i > $i )).

thf(k2_relat_1_type,type,(
    k2_relat_1: $i > $i )).

thf(k6_partfun1_type,type,(
    k6_partfun1: $i > $i )).

thf(k2_zfmisc_1_type,type,(
    k2_zfmisc_1: $i > $i > $i )).

thf(k4_relset_1_type,type,(
    k4_relset_1: $i > $i > $i > $i > $i > $i > $i )).

thf(k8_relat_1_type,type,(
    k8_relat_1: $i > $i > $i )).

thf(t123_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( ( k8_relat_1 @ A @ B )
        = ( k5_relat_1 @ B @ ( k6_relat_1 @ A ) ) ) ) )).

thf('0',plain,(
    ! [X6: $i,X7: $i] :
      ( ( ( k8_relat_1 @ X7 @ X6 )
        = ( k5_relat_1 @ X6 @ ( k6_relat_1 @ X7 ) ) )
      | ~ ( v1_relat_1 @ X6 ) ) ),
    inference(cnf,[status(esa)],[t123_relat_1])).

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

thf('1',plain,
    ( ~ ( r2_relset_1 @ sk_A @ sk_B @ ( k4_relset_1 @ sk_A @ sk_A @ sk_A @ sk_B @ ( k6_partfun1 @ sk_A ) @ sk_C ) @ sk_C )
    | ~ ( r2_relset_1 @ sk_A @ sk_B @ ( k4_relset_1 @ sk_A @ sk_B @ sk_B @ sk_B @ sk_C @ ( k6_partfun1 @ sk_B ) ) @ sk_C ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('2',plain,
    ( ~ ( r2_relset_1 @ sk_A @ sk_B @ ( k4_relset_1 @ sk_A @ sk_B @ sk_B @ sk_B @ sk_C @ ( k6_partfun1 @ sk_B ) ) @ sk_C )
   <= ~ ( r2_relset_1 @ sk_A @ sk_B @ ( k4_relset_1 @ sk_A @ sk_B @ sk_B @ sk_B @ sk_C @ ( k6_partfun1 @ sk_B ) ) @ sk_C ) ),
    inference(split,[status(esa)],['1'])).

thf(redefinition_k6_partfun1,axiom,(
    ! [A: $i] :
      ( ( k6_partfun1 @ A )
      = ( k6_relat_1 @ A ) ) )).

thf('3',plain,(
    ! [X29: $i] :
      ( ( k6_partfun1 @ X29 )
      = ( k6_relat_1 @ X29 ) ) ),
    inference(cnf,[status(esa)],[redefinition_k6_partfun1])).

thf('4',plain,
    ( ~ ( r2_relset_1 @ sk_A @ sk_B @ ( k4_relset_1 @ sk_A @ sk_B @ sk_B @ sk_B @ sk_C @ ( k6_relat_1 @ sk_B ) ) @ sk_C )
   <= ~ ( r2_relset_1 @ sk_A @ sk_B @ ( k4_relset_1 @ sk_A @ sk_B @ sk_B @ sk_B @ sk_C @ ( k6_partfun1 @ sk_B ) ) @ sk_C ) ),
    inference(demod,[status(thm)],['2','3'])).

thf(t94_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( ( k7_relat_1 @ B @ A )
        = ( k5_relat_1 @ ( k6_relat_1 @ A ) @ B ) ) ) )).

thf('5',plain,(
    ! [X12: $i,X13: $i] :
      ( ( ( k7_relat_1 @ X13 @ X12 )
        = ( k5_relat_1 @ ( k6_relat_1 @ X12 ) @ X13 ) )
      | ~ ( v1_relat_1 @ X13 ) ) ),
    inference(cnf,[status(esa)],[t94_relat_1])).

thf('6',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(dt_k6_partfun1,axiom,(
    ! [A: $i] :
      ( ( m1_subset_1 @ ( k6_partfun1 @ A ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ A ) ) )
      & ( v1_partfun1 @ ( k6_partfun1 @ A ) @ A ) ) )).

thf('7',plain,(
    ! [X28: $i] :
      ( m1_subset_1 @ ( k6_partfun1 @ X28 ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X28 @ X28 ) ) ) ),
    inference(cnf,[status(esa)],[dt_k6_partfun1])).

thf('8',plain,(
    ! [X29: $i] :
      ( ( k6_partfun1 @ X29 )
      = ( k6_relat_1 @ X29 ) ) ),
    inference(cnf,[status(esa)],[redefinition_k6_partfun1])).

thf('9',plain,(
    ! [X28: $i] :
      ( m1_subset_1 @ ( k6_relat_1 @ X28 ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X28 @ X28 ) ) ) ),
    inference(demod,[status(thm)],['7','8'])).

thf(redefinition_k4_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i,E: $i,F: $i] :
      ( ( ( m1_subset_1 @ E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
        & ( m1_subset_1 @ F @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ D ) ) ) )
     => ( ( k4_relset_1 @ A @ B @ C @ D @ E @ F )
        = ( k5_relat_1 @ E @ F ) ) ) )).

thf('10',plain,(
    ! [X17: $i,X18: $i,X19: $i,X20: $i,X21: $i,X22: $i] :
      ( ~ ( m1_subset_1 @ X17 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X18 @ X19 ) ) )
      | ~ ( m1_subset_1 @ X20 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X21 @ X22 ) ) )
      | ( ( k4_relset_1 @ X18 @ X19 @ X21 @ X22 @ X17 @ X20 )
        = ( k5_relat_1 @ X17 @ X20 ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k4_relset_1])).

thf('11',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i] :
      ( ( ( k4_relset_1 @ X0 @ X0 @ X3 @ X2 @ ( k6_relat_1 @ X0 ) @ X1 )
        = ( k5_relat_1 @ ( k6_relat_1 @ X0 ) @ X1 ) )
      | ~ ( m1_subset_1 @ X1 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X3 @ X2 ) ) ) ) ),
    inference('sup-',[status(thm)],['9','10'])).

thf('12',plain,(
    ! [X0: $i] :
      ( ( k4_relset_1 @ X0 @ X0 @ sk_A @ sk_B @ ( k6_relat_1 @ X0 ) @ sk_C )
      = ( k5_relat_1 @ ( k6_relat_1 @ X0 ) @ sk_C ) ) ),
    inference('sup-',[status(thm)],['6','11'])).

thf('13',plain,
    ( ~ ( r2_relset_1 @ sk_A @ sk_B @ ( k4_relset_1 @ sk_A @ sk_A @ sk_A @ sk_B @ ( k6_partfun1 @ sk_A ) @ sk_C ) @ sk_C )
   <= ~ ( r2_relset_1 @ sk_A @ sk_B @ ( k4_relset_1 @ sk_A @ sk_A @ sk_A @ sk_B @ ( k6_partfun1 @ sk_A ) @ sk_C ) @ sk_C ) ),
    inference(split,[status(esa)],['1'])).

thf('14',plain,(
    ! [X29: $i] :
      ( ( k6_partfun1 @ X29 )
      = ( k6_relat_1 @ X29 ) ) ),
    inference(cnf,[status(esa)],[redefinition_k6_partfun1])).

thf('15',plain,
    ( ~ ( r2_relset_1 @ sk_A @ sk_B @ ( k4_relset_1 @ sk_A @ sk_A @ sk_A @ sk_B @ ( k6_relat_1 @ sk_A ) @ sk_C ) @ sk_C )
   <= ~ ( r2_relset_1 @ sk_A @ sk_B @ ( k4_relset_1 @ sk_A @ sk_A @ sk_A @ sk_B @ ( k6_partfun1 @ sk_A ) @ sk_C ) @ sk_C ) ),
    inference(demod,[status(thm)],['13','14'])).

thf('16',plain,
    ( ~ ( r2_relset_1 @ sk_A @ sk_B @ ( k5_relat_1 @ ( k6_relat_1 @ sk_A ) @ sk_C ) @ sk_C )
   <= ~ ( r2_relset_1 @ sk_A @ sk_B @ ( k4_relset_1 @ sk_A @ sk_A @ sk_A @ sk_B @ ( k6_partfun1 @ sk_A ) @ sk_C ) @ sk_C ) ),
    inference('sup-',[status(thm)],['12','15'])).

thf('17',plain,
    ( ( ~ ( r2_relset_1 @ sk_A @ sk_B @ ( k7_relat_1 @ sk_C @ sk_A ) @ sk_C )
      | ~ ( v1_relat_1 @ sk_C ) )
   <= ~ ( r2_relset_1 @ sk_A @ sk_B @ ( k4_relset_1 @ sk_A @ sk_A @ sk_A @ sk_B @ ( k6_partfun1 @ sk_A ) @ sk_C ) @ sk_C ) ),
    inference('sup-',[status(thm)],['5','16'])).

thf('18',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(cc2_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( v4_relat_1 @ C @ A )
        & ( v5_relat_1 @ C @ B ) ) ) )).

thf('19',plain,(
    ! [X14: $i,X15: $i,X16: $i] :
      ( ( v4_relat_1 @ X14 @ X15 )
      | ~ ( m1_subset_1 @ X14 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X15 @ X16 ) ) ) ) ),
    inference(cnf,[status(esa)],[cc2_relset_1])).

thf('20',plain,(
    v4_relat_1 @ sk_C @ sk_A ),
    inference('sup-',[status(thm)],['18','19'])).

thf(t209_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( v1_relat_1 @ B )
        & ( v4_relat_1 @ B @ A ) )
     => ( B
        = ( k7_relat_1 @ B @ A ) ) ) )).

thf('21',plain,(
    ! [X10: $i,X11: $i] :
      ( ( X10
        = ( k7_relat_1 @ X10 @ X11 ) )
      | ~ ( v4_relat_1 @ X10 @ X11 )
      | ~ ( v1_relat_1 @ X10 ) ) ),
    inference(cnf,[status(esa)],[t209_relat_1])).

thf('22',plain,
    ( ~ ( v1_relat_1 @ sk_C )
    | ( sk_C
      = ( k7_relat_1 @ sk_C @ sk_A ) ) ),
    inference('sup-',[status(thm)],['20','21'])).

thf('23',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(cc2_relat_1,axiom,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ! [B: $i] :
          ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) )
         => ( v1_relat_1 @ B ) ) ) )).

thf('24',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ X1 ) )
      | ( v1_relat_1 @ X0 )
      | ~ ( v1_relat_1 @ X1 ) ) ),
    inference(cnf,[status(esa)],[cc2_relat_1])).

thf('25',plain,
    ( ~ ( v1_relat_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) )
    | ( v1_relat_1 @ sk_C ) ),
    inference('sup-',[status(thm)],['23','24'])).

thf(fc6_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( v1_relat_1 @ ( k2_zfmisc_1 @ A @ B ) ) )).

thf('26',plain,(
    ! [X4: $i,X5: $i] :
      ( v1_relat_1 @ ( k2_zfmisc_1 @ X4 @ X5 ) ) ),
    inference(cnf,[status(esa)],[fc6_relat_1])).

thf('27',plain,(
    v1_relat_1 @ sk_C ),
    inference(demod,[status(thm)],['25','26'])).

thf('28',plain,
    ( sk_C
    = ( k7_relat_1 @ sk_C @ sk_A ) ),
    inference(demod,[status(thm)],['22','27'])).

thf('29',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(reflexivity_r2_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
        & ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) )
     => ( r2_relset_1 @ A @ B @ C @ C ) ) )).

thf('30',plain,(
    ! [X23: $i,X24: $i,X25: $i,X26: $i] :
      ( ( r2_relset_1 @ X23 @ X24 @ X25 @ X25 )
      | ~ ( m1_subset_1 @ X25 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X23 @ X24 ) ) )
      | ~ ( m1_subset_1 @ X26 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X23 @ X24 ) ) ) ) ),
    inference(cnf,[status(esa)],[reflexivity_r2_relset_1])).

thf('31',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( r2_relset_1 @ X2 @ X1 @ X0 @ X0 )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X2 @ X1 ) ) ) ) ),
    inference(condensation,[status(thm)],['30'])).

thf('32',plain,(
    r2_relset_1 @ sk_A @ sk_B @ sk_C @ sk_C ),
    inference('sup-',[status(thm)],['29','31'])).

thf('33',plain,(
    v1_relat_1 @ sk_C ),
    inference(demod,[status(thm)],['25','26'])).

thf('34',plain,(
    r2_relset_1 @ sk_A @ sk_B @ ( k4_relset_1 @ sk_A @ sk_A @ sk_A @ sk_B @ ( k6_partfun1 @ sk_A ) @ sk_C ) @ sk_C ),
    inference(demod,[status(thm)],['17','28','32','33'])).

thf('35',plain,
    ( ~ ( r2_relset_1 @ sk_A @ sk_B @ ( k4_relset_1 @ sk_A @ sk_B @ sk_B @ sk_B @ sk_C @ ( k6_partfun1 @ sk_B ) ) @ sk_C )
    | ~ ( r2_relset_1 @ sk_A @ sk_B @ ( k4_relset_1 @ sk_A @ sk_A @ sk_A @ sk_B @ ( k6_partfun1 @ sk_A ) @ sk_C ) @ sk_C ) ),
    inference(split,[status(esa)],['1'])).

thf('36',plain,(
    ~ ( r2_relset_1 @ sk_A @ sk_B @ ( k4_relset_1 @ sk_A @ sk_B @ sk_B @ sk_B @ sk_C @ ( k6_partfun1 @ sk_B ) ) @ sk_C ) ),
    inference('sat_resolution*',[status(thm)],['34','35'])).

thf('37',plain,(
    ~ ( r2_relset_1 @ sk_A @ sk_B @ ( k4_relset_1 @ sk_A @ sk_B @ sk_B @ sk_B @ sk_C @ ( k6_relat_1 @ sk_B ) ) @ sk_C ) ),
    inference(simpl_trail,[status(thm)],['4','36'])).

thf('38',plain,(
    ! [X28: $i] :
      ( m1_subset_1 @ ( k6_relat_1 @ X28 ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X28 @ X28 ) ) ) ),
    inference(demod,[status(thm)],['7','8'])).

thf('39',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('40',plain,(
    ! [X17: $i,X18: $i,X19: $i,X20: $i,X21: $i,X22: $i] :
      ( ~ ( m1_subset_1 @ X17 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X18 @ X19 ) ) )
      | ~ ( m1_subset_1 @ X20 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X21 @ X22 ) ) )
      | ( ( k4_relset_1 @ X18 @ X19 @ X21 @ X22 @ X17 @ X20 )
        = ( k5_relat_1 @ X17 @ X20 ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k4_relset_1])).

thf('41',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( ( k4_relset_1 @ sk_A @ sk_B @ X2 @ X1 @ sk_C @ X0 )
        = ( k5_relat_1 @ sk_C @ X0 ) )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X2 @ X1 ) ) ) ) ),
    inference('sup-',[status(thm)],['39','40'])).

thf('42',plain,(
    ! [X0: $i] :
      ( ( k4_relset_1 @ sk_A @ sk_B @ X0 @ X0 @ sk_C @ ( k6_relat_1 @ X0 ) )
      = ( k5_relat_1 @ sk_C @ ( k6_relat_1 @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['38','41'])).

thf('43',plain,(
    ~ ( r2_relset_1 @ sk_A @ sk_B @ ( k5_relat_1 @ sk_C @ ( k6_relat_1 @ sk_B ) ) @ sk_C ) ),
    inference(demod,[status(thm)],['37','42'])).

thf('44',plain,
    ( ~ ( r2_relset_1 @ sk_A @ sk_B @ ( k8_relat_1 @ sk_B @ sk_C ) @ sk_C )
    | ~ ( v1_relat_1 @ sk_C ) ),
    inference('sup-',[status(thm)],['0','43'])).

thf('45',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('46',plain,(
    ! [X14: $i,X15: $i,X16: $i] :
      ( ( v5_relat_1 @ X14 @ X16 )
      | ~ ( m1_subset_1 @ X14 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X15 @ X16 ) ) ) ) ),
    inference(cnf,[status(esa)],[cc2_relset_1])).

thf('47',plain,(
    v5_relat_1 @ sk_C @ sk_B ),
    inference('sup-',[status(thm)],['45','46'])).

thf(d19_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( ( v5_relat_1 @ B @ A )
      <=> ( r1_tarski @ ( k2_relat_1 @ B ) @ A ) ) ) )).

thf('48',plain,(
    ! [X2: $i,X3: $i] :
      ( ~ ( v5_relat_1 @ X2 @ X3 )
      | ( r1_tarski @ ( k2_relat_1 @ X2 ) @ X3 )
      | ~ ( v1_relat_1 @ X2 ) ) ),
    inference(cnf,[status(esa)],[d19_relat_1])).

thf('49',plain,
    ( ~ ( v1_relat_1 @ sk_C )
    | ( r1_tarski @ ( k2_relat_1 @ sk_C ) @ sk_B ) ),
    inference('sup-',[status(thm)],['47','48'])).

thf('50',plain,(
    v1_relat_1 @ sk_C ),
    inference(demod,[status(thm)],['25','26'])).

thf('51',plain,(
    r1_tarski @ ( k2_relat_1 @ sk_C ) @ sk_B ),
    inference(demod,[status(thm)],['49','50'])).

thf(t125_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( ( r1_tarski @ ( k2_relat_1 @ B ) @ A )
       => ( ( k8_relat_1 @ A @ B )
          = B ) ) ) )).

thf('52',plain,(
    ! [X8: $i,X9: $i] :
      ( ~ ( r1_tarski @ ( k2_relat_1 @ X8 ) @ X9 )
      | ( ( k8_relat_1 @ X9 @ X8 )
        = X8 )
      | ~ ( v1_relat_1 @ X8 ) ) ),
    inference(cnf,[status(esa)],[t125_relat_1])).

thf('53',plain,
    ( ~ ( v1_relat_1 @ sk_C )
    | ( ( k8_relat_1 @ sk_B @ sk_C )
      = sk_C ) ),
    inference('sup-',[status(thm)],['51','52'])).

thf('54',plain,(
    v1_relat_1 @ sk_C ),
    inference(demod,[status(thm)],['25','26'])).

thf('55',plain,
    ( ( k8_relat_1 @ sk_B @ sk_C )
    = sk_C ),
    inference(demod,[status(thm)],['53','54'])).

thf('56',plain,(
    r2_relset_1 @ sk_A @ sk_B @ sk_C @ sk_C ),
    inference('sup-',[status(thm)],['29','31'])).

thf('57',plain,(
    v1_relat_1 @ sk_C ),
    inference(demod,[status(thm)],['25','26'])).

thf('58',plain,(
    $false ),
    inference(demod,[status(thm)],['44','55','56','57'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.10/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.10/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.rjKqj2JRqZ
% 0.13/0.34  % Computer   : n018.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 09:46:11 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running portfolio for 600 s
% 0.13/0.34  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.13/0.34  % Number of cores: 8
% 0.13/0.34  % Python version: Python 3.6.8
% 0.13/0.34  % Running in FO mode
% 0.20/0.47  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.20/0.47  % Solved by: fo/fo7.sh
% 0.20/0.47  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.20/0.47  % done 47 iterations in 0.023s
% 0.20/0.47  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.20/0.47  % SZS output start Refutation
% 0.20/0.47  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.20/0.47  thf(v4_relat_1_type, type, v4_relat_1: $i > $i > $o).
% 0.20/0.47  thf(r2_relset_1_type, type, r2_relset_1: $i > $i > $i > $i > $o).
% 0.20/0.47  thf(v1_partfun1_type, type, v1_partfun1: $i > $i > $o).
% 0.20/0.47  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.20/0.47  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.20/0.47  thf(sk_A_type, type, sk_A: $i).
% 0.20/0.47  thf(k5_relat_1_type, type, k5_relat_1: $i > $i > $i).
% 0.20/0.47  thf(sk_B_type, type, sk_B: $i).
% 0.20/0.47  thf(sk_C_type, type, sk_C: $i).
% 0.20/0.47  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.20/0.47  thf(v5_relat_1_type, type, v5_relat_1: $i > $i > $o).
% 0.20/0.47  thf(k7_relat_1_type, type, k7_relat_1: $i > $i > $i).
% 0.20/0.47  thf(k6_relat_1_type, type, k6_relat_1: $i > $i).
% 0.20/0.47  thf(k2_relat_1_type, type, k2_relat_1: $i > $i).
% 0.20/0.47  thf(k6_partfun1_type, type, k6_partfun1: $i > $i).
% 0.20/0.47  thf(k2_zfmisc_1_type, type, k2_zfmisc_1: $i > $i > $i).
% 0.20/0.47  thf(k4_relset_1_type, type, k4_relset_1: $i > $i > $i > $i > $i > $i > $i).
% 0.20/0.47  thf(k8_relat_1_type, type, k8_relat_1: $i > $i > $i).
% 0.20/0.47  thf(t123_relat_1, axiom,
% 0.20/0.47    (![A:$i,B:$i]:
% 0.20/0.47     ( ( v1_relat_1 @ B ) =>
% 0.20/0.47       ( ( k8_relat_1 @ A @ B ) = ( k5_relat_1 @ B @ ( k6_relat_1 @ A ) ) ) ))).
% 0.20/0.47  thf('0', plain,
% 0.20/0.47      (![X6 : $i, X7 : $i]:
% 0.20/0.47         (((k8_relat_1 @ X7 @ X6) = (k5_relat_1 @ X6 @ (k6_relat_1 @ X7)))
% 0.20/0.47          | ~ (v1_relat_1 @ X6))),
% 0.20/0.47      inference('cnf', [status(esa)], [t123_relat_1])).
% 0.20/0.47  thf(t23_funct_2, conjecture,
% 0.20/0.47    (![A:$i,B:$i,C:$i]:
% 0.20/0.47     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.20/0.47       ( ( r2_relset_1 @
% 0.20/0.47           A @ B @ ( k4_relset_1 @ A @ A @ A @ B @ ( k6_partfun1 @ A ) @ C ) @ 
% 0.20/0.47           C ) & 
% 0.20/0.47         ( r2_relset_1 @
% 0.20/0.47           A @ B @ ( k4_relset_1 @ A @ B @ B @ B @ C @ ( k6_partfun1 @ B ) ) @ 
% 0.20/0.47           C ) ) ))).
% 0.20/0.47  thf(zf_stmt_0, negated_conjecture,
% 0.20/0.47    (~( ![A:$i,B:$i,C:$i]:
% 0.20/0.47        ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.20/0.47          ( ( r2_relset_1 @
% 0.20/0.47              A @ B @ 
% 0.20/0.47              ( k4_relset_1 @ A @ A @ A @ B @ ( k6_partfun1 @ A ) @ C ) @ C ) & 
% 0.20/0.47            ( r2_relset_1 @
% 0.20/0.47              A @ B @ 
% 0.20/0.47              ( k4_relset_1 @ A @ B @ B @ B @ C @ ( k6_partfun1 @ B ) ) @ C ) ) ) )),
% 0.20/0.47    inference('cnf.neg', [status(esa)], [t23_funct_2])).
% 0.20/0.47  thf('1', plain,
% 0.20/0.47      ((~ (r2_relset_1 @ sk_A @ sk_B @ 
% 0.20/0.47           (k4_relset_1 @ sk_A @ sk_A @ sk_A @ sk_B @ (k6_partfun1 @ sk_A) @ 
% 0.20/0.47            sk_C) @ 
% 0.20/0.47           sk_C)
% 0.20/0.47        | ~ (r2_relset_1 @ sk_A @ sk_B @ 
% 0.20/0.47             (k4_relset_1 @ sk_A @ sk_B @ sk_B @ sk_B @ sk_C @ 
% 0.20/0.47              (k6_partfun1 @ sk_B)) @ 
% 0.20/0.47             sk_C))),
% 0.20/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.47  thf('2', plain,
% 0.20/0.47      ((~ (r2_relset_1 @ sk_A @ sk_B @ 
% 0.20/0.47           (k4_relset_1 @ sk_A @ sk_B @ sk_B @ sk_B @ sk_C @ 
% 0.20/0.47            (k6_partfun1 @ sk_B)) @ 
% 0.20/0.47           sk_C))
% 0.20/0.47         <= (~
% 0.20/0.47             ((r2_relset_1 @ sk_A @ sk_B @ 
% 0.20/0.47               (k4_relset_1 @ sk_A @ sk_B @ sk_B @ sk_B @ sk_C @ 
% 0.20/0.47                (k6_partfun1 @ sk_B)) @ 
% 0.20/0.47               sk_C)))),
% 0.20/0.47      inference('split', [status(esa)], ['1'])).
% 0.20/0.47  thf(redefinition_k6_partfun1, axiom,
% 0.20/0.47    (![A:$i]: ( ( k6_partfun1 @ A ) = ( k6_relat_1 @ A ) ))).
% 0.20/0.47  thf('3', plain, (![X29 : $i]: ((k6_partfun1 @ X29) = (k6_relat_1 @ X29))),
% 0.20/0.47      inference('cnf', [status(esa)], [redefinition_k6_partfun1])).
% 0.20/0.47  thf('4', plain,
% 0.20/0.47      ((~ (r2_relset_1 @ sk_A @ sk_B @ 
% 0.20/0.47           (k4_relset_1 @ sk_A @ sk_B @ sk_B @ sk_B @ sk_C @ 
% 0.20/0.47            (k6_relat_1 @ sk_B)) @ 
% 0.20/0.47           sk_C))
% 0.20/0.47         <= (~
% 0.20/0.47             ((r2_relset_1 @ sk_A @ sk_B @ 
% 0.20/0.47               (k4_relset_1 @ sk_A @ sk_B @ sk_B @ sk_B @ sk_C @ 
% 0.20/0.47                (k6_partfun1 @ sk_B)) @ 
% 0.20/0.47               sk_C)))),
% 0.20/0.47      inference('demod', [status(thm)], ['2', '3'])).
% 0.20/0.47  thf(t94_relat_1, axiom,
% 0.20/0.47    (![A:$i,B:$i]:
% 0.20/0.47     ( ( v1_relat_1 @ B ) =>
% 0.20/0.47       ( ( k7_relat_1 @ B @ A ) = ( k5_relat_1 @ ( k6_relat_1 @ A ) @ B ) ) ))).
% 0.20/0.47  thf('5', plain,
% 0.20/0.47      (![X12 : $i, X13 : $i]:
% 0.20/0.47         (((k7_relat_1 @ X13 @ X12) = (k5_relat_1 @ (k6_relat_1 @ X12) @ X13))
% 0.20/0.47          | ~ (v1_relat_1 @ X13))),
% 0.20/0.47      inference('cnf', [status(esa)], [t94_relat_1])).
% 0.20/0.47  thf('6', plain,
% 0.20/0.47      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 0.20/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.47  thf(dt_k6_partfun1, axiom,
% 0.20/0.47    (![A:$i]:
% 0.20/0.47     ( ( m1_subset_1 @
% 0.20/0.47         ( k6_partfun1 @ A ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ A ) ) ) & 
% 0.20/0.47       ( v1_partfun1 @ ( k6_partfun1 @ A ) @ A ) ))).
% 0.20/0.47  thf('7', plain,
% 0.20/0.47      (![X28 : $i]:
% 0.20/0.47         (m1_subset_1 @ (k6_partfun1 @ X28) @ 
% 0.20/0.47          (k1_zfmisc_1 @ (k2_zfmisc_1 @ X28 @ X28)))),
% 0.20/0.47      inference('cnf', [status(esa)], [dt_k6_partfun1])).
% 0.20/0.47  thf('8', plain, (![X29 : $i]: ((k6_partfun1 @ X29) = (k6_relat_1 @ X29))),
% 0.20/0.47      inference('cnf', [status(esa)], [redefinition_k6_partfun1])).
% 0.20/0.47  thf('9', plain,
% 0.20/0.47      (![X28 : $i]:
% 0.20/0.47         (m1_subset_1 @ (k6_relat_1 @ X28) @ 
% 0.20/0.47          (k1_zfmisc_1 @ (k2_zfmisc_1 @ X28 @ X28)))),
% 0.20/0.47      inference('demod', [status(thm)], ['7', '8'])).
% 0.20/0.47  thf(redefinition_k4_relset_1, axiom,
% 0.20/0.47    (![A:$i,B:$i,C:$i,D:$i,E:$i,F:$i]:
% 0.20/0.47     ( ( ( m1_subset_1 @ E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) & 
% 0.20/0.47         ( m1_subset_1 @ F @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ D ) ) ) ) =>
% 0.20/0.47       ( ( k4_relset_1 @ A @ B @ C @ D @ E @ F ) = ( k5_relat_1 @ E @ F ) ) ))).
% 0.20/0.47  thf('10', plain,
% 0.20/0.47      (![X17 : $i, X18 : $i, X19 : $i, X20 : $i, X21 : $i, X22 : $i]:
% 0.20/0.47         (~ (m1_subset_1 @ X17 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X18 @ X19)))
% 0.20/0.47          | ~ (m1_subset_1 @ X20 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X21 @ X22)))
% 0.20/0.47          | ((k4_relset_1 @ X18 @ X19 @ X21 @ X22 @ X17 @ X20)
% 0.20/0.47              = (k5_relat_1 @ X17 @ X20)))),
% 0.20/0.47      inference('cnf', [status(esa)], [redefinition_k4_relset_1])).
% 0.20/0.47  thf('11', plain,
% 0.20/0.47      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 0.20/0.47         (((k4_relset_1 @ X0 @ X0 @ X3 @ X2 @ (k6_relat_1 @ X0) @ X1)
% 0.20/0.47            = (k5_relat_1 @ (k6_relat_1 @ X0) @ X1))
% 0.20/0.47          | ~ (m1_subset_1 @ X1 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X3 @ X2))))),
% 0.20/0.47      inference('sup-', [status(thm)], ['9', '10'])).
% 0.20/0.47  thf('12', plain,
% 0.20/0.47      (![X0 : $i]:
% 0.20/0.47         ((k4_relset_1 @ X0 @ X0 @ sk_A @ sk_B @ (k6_relat_1 @ X0) @ sk_C)
% 0.20/0.47           = (k5_relat_1 @ (k6_relat_1 @ X0) @ sk_C))),
% 0.20/0.47      inference('sup-', [status(thm)], ['6', '11'])).
% 0.20/0.47  thf('13', plain,
% 0.20/0.47      ((~ (r2_relset_1 @ sk_A @ sk_B @ 
% 0.20/0.47           (k4_relset_1 @ sk_A @ sk_A @ sk_A @ sk_B @ (k6_partfun1 @ sk_A) @ 
% 0.20/0.47            sk_C) @ 
% 0.20/0.47           sk_C))
% 0.20/0.47         <= (~
% 0.20/0.47             ((r2_relset_1 @ sk_A @ sk_B @ 
% 0.20/0.47               (k4_relset_1 @ sk_A @ sk_A @ sk_A @ sk_B @ 
% 0.20/0.47                (k6_partfun1 @ sk_A) @ sk_C) @ 
% 0.20/0.47               sk_C)))),
% 0.20/0.47      inference('split', [status(esa)], ['1'])).
% 0.20/0.47  thf('14', plain, (![X29 : $i]: ((k6_partfun1 @ X29) = (k6_relat_1 @ X29))),
% 0.20/0.47      inference('cnf', [status(esa)], [redefinition_k6_partfun1])).
% 0.20/0.47  thf('15', plain,
% 0.20/0.47      ((~ (r2_relset_1 @ sk_A @ sk_B @ 
% 0.20/0.47           (k4_relset_1 @ sk_A @ sk_A @ sk_A @ sk_B @ (k6_relat_1 @ sk_A) @ 
% 0.20/0.47            sk_C) @ 
% 0.20/0.47           sk_C))
% 0.20/0.47         <= (~
% 0.20/0.47             ((r2_relset_1 @ sk_A @ sk_B @ 
% 0.20/0.47               (k4_relset_1 @ sk_A @ sk_A @ sk_A @ sk_B @ 
% 0.20/0.47                (k6_partfun1 @ sk_A) @ sk_C) @ 
% 0.20/0.47               sk_C)))),
% 0.20/0.47      inference('demod', [status(thm)], ['13', '14'])).
% 0.20/0.47  thf('16', plain,
% 0.20/0.47      ((~ (r2_relset_1 @ sk_A @ sk_B @ 
% 0.20/0.47           (k5_relat_1 @ (k6_relat_1 @ sk_A) @ sk_C) @ sk_C))
% 0.20/0.47         <= (~
% 0.20/0.47             ((r2_relset_1 @ sk_A @ sk_B @ 
% 0.20/0.47               (k4_relset_1 @ sk_A @ sk_A @ sk_A @ sk_B @ 
% 0.20/0.47                (k6_partfun1 @ sk_A) @ sk_C) @ 
% 0.20/0.47               sk_C)))),
% 0.20/0.47      inference('sup-', [status(thm)], ['12', '15'])).
% 0.20/0.47  thf('17', plain,
% 0.20/0.47      (((~ (r2_relset_1 @ sk_A @ sk_B @ (k7_relat_1 @ sk_C @ sk_A) @ sk_C)
% 0.20/0.47         | ~ (v1_relat_1 @ sk_C)))
% 0.20/0.47         <= (~
% 0.20/0.47             ((r2_relset_1 @ sk_A @ sk_B @ 
% 0.20/0.47               (k4_relset_1 @ sk_A @ sk_A @ sk_A @ sk_B @ 
% 0.20/0.47                (k6_partfun1 @ sk_A) @ sk_C) @ 
% 0.20/0.47               sk_C)))),
% 0.20/0.47      inference('sup-', [status(thm)], ['5', '16'])).
% 0.20/0.47  thf('18', plain,
% 0.20/0.47      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 0.20/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.47  thf(cc2_relset_1, axiom,
% 0.20/0.47    (![A:$i,B:$i,C:$i]:
% 0.20/0.47     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.20/0.47       ( ( v4_relat_1 @ C @ A ) & ( v5_relat_1 @ C @ B ) ) ))).
% 0.20/0.47  thf('19', plain,
% 0.20/0.47      (![X14 : $i, X15 : $i, X16 : $i]:
% 0.20/0.47         ((v4_relat_1 @ X14 @ X15)
% 0.20/0.47          | ~ (m1_subset_1 @ X14 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X15 @ X16))))),
% 0.20/0.47      inference('cnf', [status(esa)], [cc2_relset_1])).
% 0.20/0.47  thf('20', plain, ((v4_relat_1 @ sk_C @ sk_A)),
% 0.20/0.47      inference('sup-', [status(thm)], ['18', '19'])).
% 0.20/0.47  thf(t209_relat_1, axiom,
% 0.20/0.47    (![A:$i,B:$i]:
% 0.20/0.47     ( ( ( v1_relat_1 @ B ) & ( v4_relat_1 @ B @ A ) ) =>
% 0.20/0.47       ( ( B ) = ( k7_relat_1 @ B @ A ) ) ))).
% 0.20/0.47  thf('21', plain,
% 0.20/0.47      (![X10 : $i, X11 : $i]:
% 0.20/0.47         (((X10) = (k7_relat_1 @ X10 @ X11))
% 0.20/0.47          | ~ (v4_relat_1 @ X10 @ X11)
% 0.20/0.47          | ~ (v1_relat_1 @ X10))),
% 0.20/0.47      inference('cnf', [status(esa)], [t209_relat_1])).
% 0.20/0.47  thf('22', plain,
% 0.20/0.47      ((~ (v1_relat_1 @ sk_C) | ((sk_C) = (k7_relat_1 @ sk_C @ sk_A)))),
% 0.20/0.47      inference('sup-', [status(thm)], ['20', '21'])).
% 0.20/0.47  thf('23', plain,
% 0.20/0.47      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 0.20/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.47  thf(cc2_relat_1, axiom,
% 0.20/0.47    (![A:$i]:
% 0.20/0.47     ( ( v1_relat_1 @ A ) =>
% 0.20/0.47       ( ![B:$i]:
% 0.20/0.47         ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) ) => ( v1_relat_1 @ B ) ) ) ))).
% 0.20/0.47  thf('24', plain,
% 0.20/0.47      (![X0 : $i, X1 : $i]:
% 0.20/0.47         (~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ X1))
% 0.20/0.47          | (v1_relat_1 @ X0)
% 0.20/0.47          | ~ (v1_relat_1 @ X1))),
% 0.20/0.47      inference('cnf', [status(esa)], [cc2_relat_1])).
% 0.20/0.47  thf('25', plain,
% 0.20/0.47      ((~ (v1_relat_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)) | (v1_relat_1 @ sk_C))),
% 0.20/0.47      inference('sup-', [status(thm)], ['23', '24'])).
% 0.20/0.47  thf(fc6_relat_1, axiom,
% 0.20/0.47    (![A:$i,B:$i]: ( v1_relat_1 @ ( k2_zfmisc_1 @ A @ B ) ))).
% 0.20/0.47  thf('26', plain,
% 0.20/0.47      (![X4 : $i, X5 : $i]: (v1_relat_1 @ (k2_zfmisc_1 @ X4 @ X5))),
% 0.20/0.47      inference('cnf', [status(esa)], [fc6_relat_1])).
% 0.20/0.47  thf('27', plain, ((v1_relat_1 @ sk_C)),
% 0.20/0.47      inference('demod', [status(thm)], ['25', '26'])).
% 0.20/0.47  thf('28', plain, (((sk_C) = (k7_relat_1 @ sk_C @ sk_A))),
% 0.20/0.47      inference('demod', [status(thm)], ['22', '27'])).
% 0.20/0.47  thf('29', plain,
% 0.20/0.47      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 0.20/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.47  thf(reflexivity_r2_relset_1, axiom,
% 0.20/0.47    (![A:$i,B:$i,C:$i,D:$i]:
% 0.20/0.47     ( ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) & 
% 0.20/0.47         ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) =>
% 0.20/0.47       ( r2_relset_1 @ A @ B @ C @ C ) ))).
% 0.20/0.47  thf('30', plain,
% 0.20/0.47      (![X23 : $i, X24 : $i, X25 : $i, X26 : $i]:
% 0.20/0.47         ((r2_relset_1 @ X23 @ X24 @ X25 @ X25)
% 0.20/0.47          | ~ (m1_subset_1 @ X25 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X23 @ X24)))
% 0.20/0.47          | ~ (m1_subset_1 @ X26 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X23 @ X24))))),
% 0.20/0.47      inference('cnf', [status(esa)], [reflexivity_r2_relset_1])).
% 0.20/0.47  thf('31', plain,
% 0.20/0.47      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.20/0.47         ((r2_relset_1 @ X2 @ X1 @ X0 @ X0)
% 0.20/0.47          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X2 @ X1))))),
% 0.20/0.47      inference('condensation', [status(thm)], ['30'])).
% 0.20/0.47  thf('32', plain, ((r2_relset_1 @ sk_A @ sk_B @ sk_C @ sk_C)),
% 0.20/0.47      inference('sup-', [status(thm)], ['29', '31'])).
% 0.20/0.47  thf('33', plain, ((v1_relat_1 @ sk_C)),
% 0.20/0.47      inference('demod', [status(thm)], ['25', '26'])).
% 0.20/0.47  thf('34', plain,
% 0.20/0.47      (((r2_relset_1 @ sk_A @ sk_B @ 
% 0.20/0.47         (k4_relset_1 @ sk_A @ sk_A @ sk_A @ sk_B @ (k6_partfun1 @ sk_A) @ sk_C) @ 
% 0.20/0.47         sk_C))),
% 0.20/0.47      inference('demod', [status(thm)], ['17', '28', '32', '33'])).
% 0.20/0.47  thf('35', plain,
% 0.20/0.47      (~
% 0.20/0.47       ((r2_relset_1 @ sk_A @ sk_B @ 
% 0.20/0.47         (k4_relset_1 @ sk_A @ sk_B @ sk_B @ sk_B @ sk_C @ (k6_partfun1 @ sk_B)) @ 
% 0.20/0.47         sk_C)) | 
% 0.20/0.47       ~
% 0.20/0.47       ((r2_relset_1 @ sk_A @ sk_B @ 
% 0.20/0.47         (k4_relset_1 @ sk_A @ sk_A @ sk_A @ sk_B @ (k6_partfun1 @ sk_A) @ sk_C) @ 
% 0.20/0.47         sk_C))),
% 0.20/0.47      inference('split', [status(esa)], ['1'])).
% 0.20/0.47  thf('36', plain,
% 0.20/0.47      (~
% 0.20/0.47       ((r2_relset_1 @ sk_A @ sk_B @ 
% 0.20/0.47         (k4_relset_1 @ sk_A @ sk_B @ sk_B @ sk_B @ sk_C @ (k6_partfun1 @ sk_B)) @ 
% 0.20/0.47         sk_C))),
% 0.20/0.47      inference('sat_resolution*', [status(thm)], ['34', '35'])).
% 0.20/0.47  thf('37', plain,
% 0.20/0.47      (~ (r2_relset_1 @ sk_A @ sk_B @ 
% 0.20/0.47          (k4_relset_1 @ sk_A @ sk_B @ sk_B @ sk_B @ sk_C @ (k6_relat_1 @ sk_B)) @ 
% 0.20/0.47          sk_C)),
% 0.20/0.47      inference('simpl_trail', [status(thm)], ['4', '36'])).
% 0.20/0.47  thf('38', plain,
% 0.20/0.47      (![X28 : $i]:
% 0.20/0.47         (m1_subset_1 @ (k6_relat_1 @ X28) @ 
% 0.20/0.47          (k1_zfmisc_1 @ (k2_zfmisc_1 @ X28 @ X28)))),
% 0.20/0.47      inference('demod', [status(thm)], ['7', '8'])).
% 0.20/0.47  thf('39', plain,
% 0.20/0.47      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 0.20/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.47  thf('40', plain,
% 0.20/0.47      (![X17 : $i, X18 : $i, X19 : $i, X20 : $i, X21 : $i, X22 : $i]:
% 0.20/0.47         (~ (m1_subset_1 @ X17 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X18 @ X19)))
% 0.20/0.47          | ~ (m1_subset_1 @ X20 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X21 @ X22)))
% 0.20/0.47          | ((k4_relset_1 @ X18 @ X19 @ X21 @ X22 @ X17 @ X20)
% 0.20/0.47              = (k5_relat_1 @ X17 @ X20)))),
% 0.20/0.47      inference('cnf', [status(esa)], [redefinition_k4_relset_1])).
% 0.20/0.47  thf('41', plain,
% 0.20/0.47      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.20/0.47         (((k4_relset_1 @ sk_A @ sk_B @ X2 @ X1 @ sk_C @ X0)
% 0.20/0.47            = (k5_relat_1 @ sk_C @ X0))
% 0.20/0.47          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X2 @ X1))))),
% 0.20/0.47      inference('sup-', [status(thm)], ['39', '40'])).
% 0.20/0.47  thf('42', plain,
% 0.20/0.47      (![X0 : $i]:
% 0.20/0.47         ((k4_relset_1 @ sk_A @ sk_B @ X0 @ X0 @ sk_C @ (k6_relat_1 @ X0))
% 0.20/0.47           = (k5_relat_1 @ sk_C @ (k6_relat_1 @ X0)))),
% 0.20/0.47      inference('sup-', [status(thm)], ['38', '41'])).
% 0.20/0.47  thf('43', plain,
% 0.20/0.47      (~ (r2_relset_1 @ sk_A @ sk_B @ 
% 0.20/0.47          (k5_relat_1 @ sk_C @ (k6_relat_1 @ sk_B)) @ sk_C)),
% 0.20/0.47      inference('demod', [status(thm)], ['37', '42'])).
% 0.20/0.47  thf('44', plain,
% 0.20/0.47      ((~ (r2_relset_1 @ sk_A @ sk_B @ (k8_relat_1 @ sk_B @ sk_C) @ sk_C)
% 0.20/0.47        | ~ (v1_relat_1 @ sk_C))),
% 0.20/0.47      inference('sup-', [status(thm)], ['0', '43'])).
% 0.20/0.47  thf('45', plain,
% 0.20/0.47      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 0.20/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.47  thf('46', plain,
% 0.20/0.47      (![X14 : $i, X15 : $i, X16 : $i]:
% 0.20/0.47         ((v5_relat_1 @ X14 @ X16)
% 0.20/0.47          | ~ (m1_subset_1 @ X14 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X15 @ X16))))),
% 0.20/0.47      inference('cnf', [status(esa)], [cc2_relset_1])).
% 0.20/0.47  thf('47', plain, ((v5_relat_1 @ sk_C @ sk_B)),
% 0.20/0.47      inference('sup-', [status(thm)], ['45', '46'])).
% 0.20/0.47  thf(d19_relat_1, axiom,
% 0.20/0.47    (![A:$i,B:$i]:
% 0.20/0.47     ( ( v1_relat_1 @ B ) =>
% 0.20/0.47       ( ( v5_relat_1 @ B @ A ) <=> ( r1_tarski @ ( k2_relat_1 @ B ) @ A ) ) ))).
% 0.20/0.47  thf('48', plain,
% 0.20/0.47      (![X2 : $i, X3 : $i]:
% 0.20/0.47         (~ (v5_relat_1 @ X2 @ X3)
% 0.20/0.47          | (r1_tarski @ (k2_relat_1 @ X2) @ X3)
% 0.20/0.47          | ~ (v1_relat_1 @ X2))),
% 0.20/0.47      inference('cnf', [status(esa)], [d19_relat_1])).
% 0.20/0.47  thf('49', plain,
% 0.20/0.47      ((~ (v1_relat_1 @ sk_C) | (r1_tarski @ (k2_relat_1 @ sk_C) @ sk_B))),
% 0.20/0.47      inference('sup-', [status(thm)], ['47', '48'])).
% 0.20/0.47  thf('50', plain, ((v1_relat_1 @ sk_C)),
% 0.20/0.47      inference('demod', [status(thm)], ['25', '26'])).
% 0.20/0.47  thf('51', plain, ((r1_tarski @ (k2_relat_1 @ sk_C) @ sk_B)),
% 0.20/0.47      inference('demod', [status(thm)], ['49', '50'])).
% 0.20/0.47  thf(t125_relat_1, axiom,
% 0.20/0.47    (![A:$i,B:$i]:
% 0.20/0.47     ( ( v1_relat_1 @ B ) =>
% 0.20/0.47       ( ( r1_tarski @ ( k2_relat_1 @ B ) @ A ) =>
% 0.20/0.47         ( ( k8_relat_1 @ A @ B ) = ( B ) ) ) ))).
% 0.20/0.47  thf('52', plain,
% 0.20/0.47      (![X8 : $i, X9 : $i]:
% 0.20/0.47         (~ (r1_tarski @ (k2_relat_1 @ X8) @ X9)
% 0.20/0.47          | ((k8_relat_1 @ X9 @ X8) = (X8))
% 0.20/0.47          | ~ (v1_relat_1 @ X8))),
% 0.20/0.47      inference('cnf', [status(esa)], [t125_relat_1])).
% 0.20/0.47  thf('53', plain,
% 0.20/0.47      ((~ (v1_relat_1 @ sk_C) | ((k8_relat_1 @ sk_B @ sk_C) = (sk_C)))),
% 0.20/0.47      inference('sup-', [status(thm)], ['51', '52'])).
% 0.20/0.47  thf('54', plain, ((v1_relat_1 @ sk_C)),
% 0.20/0.47      inference('demod', [status(thm)], ['25', '26'])).
% 0.20/0.47  thf('55', plain, (((k8_relat_1 @ sk_B @ sk_C) = (sk_C))),
% 0.20/0.47      inference('demod', [status(thm)], ['53', '54'])).
% 0.20/0.47  thf('56', plain, ((r2_relset_1 @ sk_A @ sk_B @ sk_C @ sk_C)),
% 0.20/0.47      inference('sup-', [status(thm)], ['29', '31'])).
% 0.20/0.47  thf('57', plain, ((v1_relat_1 @ sk_C)),
% 0.20/0.47      inference('demod', [status(thm)], ['25', '26'])).
% 0.20/0.47  thf('58', plain, ($false),
% 0.20/0.47      inference('demod', [status(thm)], ['44', '55', '56', '57'])).
% 0.20/0.47  
% 0.20/0.47  % SZS output end Refutation
% 0.20/0.47  
% 0.20/0.48  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
