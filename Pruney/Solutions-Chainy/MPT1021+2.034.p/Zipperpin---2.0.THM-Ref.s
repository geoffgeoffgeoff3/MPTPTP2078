%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.KAmtcY0xrl

% Computer   : n010.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:58:15 EST 2020

% Result     : Theorem 0.70s
% Output     : Refutation 0.70s
% Verified   : 
% Statistics : Number of formulae       :  158 ( 439 expanded)
%              Number of leaves         :   38 ( 148 expanded)
%              Depth                    :   17
%              Number of atoms          : 1526 (9854 expanded)
%              Number of equality atoms :   43 (  73 expanded)
%              Maximal formula depth    :   18 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(v2_funct_1_type,type,(
    v2_funct_1: $i > $o )).

thf(r2_relset_1_type,type,(
    r2_relset_1: $i > $i > $i > $i > $o )).

thf(v1_partfun1_type,type,(
    v1_partfun1: $i > $i > $o )).

thf(sk_B_1_type,type,(
    sk_B_1: $i )).

thf(k6_partfun1_type,type,(
    k6_partfun1: $i > $i )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(v1_funct_2_type,type,(
    v1_funct_2: $i > $i > $i > $o )).

thf(k2_funct_2_type,type,(
    k2_funct_2: $i > $i > $i )).

thf(v3_funct_2_type,type,(
    v3_funct_2: $i > $i > $i > $o )).

thf(k6_relat_1_type,type,(
    k6_relat_1: $i > $i )).

thf(v2_funct_2_type,type,(
    v2_funct_2: $i > $i > $o )).

thf(k1_relat_1_type,type,(
    k1_relat_1: $i > $i )).

thf(k2_funct_1_type,type,(
    k2_funct_1: $i > $i )).

thf(k1_partfun1_type,type,(
    k1_partfun1: $i > $i > $i > $i > $i > $i > $i )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(k2_zfmisc_1_type,type,(
    k2_zfmisc_1: $i > $i > $i )).

thf(v5_relat_1_type,type,(
    v5_relat_1: $i > $i > $o )).

thf(v4_relat_1_type,type,(
    v4_relat_1: $i > $i > $o )).

thf(v1_funct_1_type,type,(
    v1_funct_1: $i > $o )).

thf(k5_relat_1_type,type,(
    k5_relat_1: $i > $i > $i )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(k1_relset_1_type,type,(
    k1_relset_1: $i > $i > $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k2_relat_1_type,type,(
    k2_relat_1: $i > $i )).

thf(t61_funct_1,axiom,(
    ! [A: $i] :
      ( ( ( v1_relat_1 @ A )
        & ( v1_funct_1 @ A ) )
     => ( ( v2_funct_1 @ A )
       => ( ( ( k5_relat_1 @ A @ ( k2_funct_1 @ A ) )
            = ( k6_relat_1 @ ( k1_relat_1 @ A ) ) )
          & ( ( k5_relat_1 @ ( k2_funct_1 @ A ) @ A )
            = ( k6_relat_1 @ ( k2_relat_1 @ A ) ) ) ) ) ) )).

thf('0',plain,(
    ! [X1: $i] :
      ( ~ ( v2_funct_1 @ X1 )
      | ( ( k5_relat_1 @ X1 @ ( k2_funct_1 @ X1 ) )
        = ( k6_relat_1 @ ( k1_relat_1 @ X1 ) ) )
      | ~ ( v1_funct_1 @ X1 )
      | ~ ( v1_relat_1 @ X1 ) ) ),
    inference(cnf,[status(esa)],[t61_funct_1])).

thf(t88_funct_2,conjecture,(
    ! [A: $i,B: $i] :
      ( ( ( v1_funct_1 @ B )
        & ( v1_funct_2 @ B @ A @ A )
        & ( v3_funct_2 @ B @ A @ A )
        & ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ A ) ) ) )
     => ( ( r2_relset_1 @ A @ A @ ( k1_partfun1 @ A @ A @ A @ A @ B @ ( k2_funct_2 @ A @ B ) ) @ ( k6_partfun1 @ A ) )
        & ( r2_relset_1 @ A @ A @ ( k1_partfun1 @ A @ A @ A @ A @ ( k2_funct_2 @ A @ B ) @ B ) @ ( k6_partfun1 @ A ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i] :
        ( ( ( v1_funct_1 @ B )
          & ( v1_funct_2 @ B @ A @ A )
          & ( v3_funct_2 @ B @ A @ A )
          & ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ A ) ) ) )
       => ( ( r2_relset_1 @ A @ A @ ( k1_partfun1 @ A @ A @ A @ A @ B @ ( k2_funct_2 @ A @ B ) ) @ ( k6_partfun1 @ A ) )
          & ( r2_relset_1 @ A @ A @ ( k1_partfun1 @ A @ A @ A @ A @ ( k2_funct_2 @ A @ B ) @ B ) @ ( k6_partfun1 @ A ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t88_funct_2])).

thf('1',plain,
    ( ~ ( r2_relset_1 @ sk_A @ sk_A @ ( k1_partfun1 @ sk_A @ sk_A @ sk_A @ sk_A @ sk_B_1 @ ( k2_funct_2 @ sk_A @ sk_B_1 ) ) @ ( k6_partfun1 @ sk_A ) )
    | ~ ( r2_relset_1 @ sk_A @ sk_A @ ( k1_partfun1 @ sk_A @ sk_A @ sk_A @ sk_A @ ( k2_funct_2 @ sk_A @ sk_B_1 ) @ sk_B_1 ) @ ( k6_partfun1 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('2',plain,
    ( ~ ( r2_relset_1 @ sk_A @ sk_A @ ( k1_partfun1 @ sk_A @ sk_A @ sk_A @ sk_A @ sk_B_1 @ ( k2_funct_2 @ sk_A @ sk_B_1 ) ) @ ( k6_partfun1 @ sk_A ) )
   <= ~ ( r2_relset_1 @ sk_A @ sk_A @ ( k1_partfun1 @ sk_A @ sk_A @ sk_A @ sk_A @ sk_B_1 @ ( k2_funct_2 @ sk_A @ sk_B_1 ) ) @ ( k6_partfun1 @ sk_A ) ) ),
    inference(split,[status(esa)],['1'])).

thf(redefinition_k6_partfun1,axiom,(
    ! [A: $i] :
      ( ( k6_partfun1 @ A )
      = ( k6_relat_1 @ A ) ) )).

thf('3',plain,(
    ! [X32: $i] :
      ( ( k6_partfun1 @ X32 )
      = ( k6_relat_1 @ X32 ) ) ),
    inference(cnf,[status(esa)],[redefinition_k6_partfun1])).

thf('4',plain,
    ( ~ ( r2_relset_1 @ sk_A @ sk_A @ ( k1_partfun1 @ sk_A @ sk_A @ sk_A @ sk_A @ sk_B_1 @ ( k2_funct_2 @ sk_A @ sk_B_1 ) ) @ ( k6_relat_1 @ sk_A ) )
   <= ~ ( r2_relset_1 @ sk_A @ sk_A @ ( k1_partfun1 @ sk_A @ sk_A @ sk_A @ sk_A @ sk_B_1 @ ( k2_funct_2 @ sk_A @ sk_B_1 ) ) @ ( k6_partfun1 @ sk_A ) ) ),
    inference(demod,[status(thm)],['2','3'])).

thf('5',plain,(
    m1_subset_1 @ sk_B_1 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(redefinition_k2_funct_2,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( v1_funct_1 @ B )
        & ( v1_funct_2 @ B @ A @ A )
        & ( v3_funct_2 @ B @ A @ A )
        & ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ A ) ) ) )
     => ( ( k2_funct_2 @ A @ B )
        = ( k2_funct_1 @ B ) ) ) )).

thf('6',plain,(
    ! [X30: $i,X31: $i] :
      ( ( ( k2_funct_2 @ X31 @ X30 )
        = ( k2_funct_1 @ X30 ) )
      | ~ ( m1_subset_1 @ X30 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X31 @ X31 ) ) )
      | ~ ( v3_funct_2 @ X30 @ X31 @ X31 )
      | ~ ( v1_funct_2 @ X30 @ X31 @ X31 )
      | ~ ( v1_funct_1 @ X30 ) ) ),
    inference(cnf,[status(esa)],[redefinition_k2_funct_2])).

thf('7',plain,
    ( ~ ( v1_funct_1 @ sk_B_1 )
    | ~ ( v1_funct_2 @ sk_B_1 @ sk_A @ sk_A )
    | ~ ( v3_funct_2 @ sk_B_1 @ sk_A @ sk_A )
    | ( ( k2_funct_2 @ sk_A @ sk_B_1 )
      = ( k2_funct_1 @ sk_B_1 ) ) ),
    inference('sup-',[status(thm)],['5','6'])).

thf('8',plain,(
    v1_funct_1 @ sk_B_1 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('9',plain,(
    v1_funct_2 @ sk_B_1 @ sk_A @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('10',plain,(
    v3_funct_2 @ sk_B_1 @ sk_A @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('11',plain,
    ( ( k2_funct_2 @ sk_A @ sk_B_1 )
    = ( k2_funct_1 @ sk_B_1 ) ),
    inference(demod,[status(thm)],['7','8','9','10'])).

thf('12',plain,
    ( ~ ( r2_relset_1 @ sk_A @ sk_A @ ( k1_partfun1 @ sk_A @ sk_A @ sk_A @ sk_A @ sk_B_1 @ ( k2_funct_1 @ sk_B_1 ) ) @ ( k6_relat_1 @ sk_A ) )
   <= ~ ( r2_relset_1 @ sk_A @ sk_A @ ( k1_partfun1 @ sk_A @ sk_A @ sk_A @ sk_A @ sk_B_1 @ ( k2_funct_2 @ sk_A @ sk_B_1 ) ) @ ( k6_partfun1 @ sk_A ) ) ),
    inference(demod,[status(thm)],['4','11'])).

thf('13',plain,(
    m1_subset_1 @ sk_B_1 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('14',plain,(
    m1_subset_1 @ sk_B_1 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(dt_k2_funct_2,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( v1_funct_1 @ B )
        & ( v1_funct_2 @ B @ A @ A )
        & ( v3_funct_2 @ B @ A @ A )
        & ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ A ) ) ) )
     => ( ( v1_funct_1 @ ( k2_funct_2 @ A @ B ) )
        & ( v1_funct_2 @ ( k2_funct_2 @ A @ B ) @ A @ A )
        & ( v3_funct_2 @ ( k2_funct_2 @ A @ B ) @ A @ A )
        & ( m1_subset_1 @ ( k2_funct_2 @ A @ B ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ A ) ) ) ) ) )).

thf('15',plain,(
    ! [X20: $i,X21: $i] :
      ( ( m1_subset_1 @ ( k2_funct_2 @ X20 @ X21 ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X20 @ X20 ) ) )
      | ~ ( m1_subset_1 @ X21 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X20 @ X20 ) ) )
      | ~ ( v3_funct_2 @ X21 @ X20 @ X20 )
      | ~ ( v1_funct_2 @ X21 @ X20 @ X20 )
      | ~ ( v1_funct_1 @ X21 ) ) ),
    inference(cnf,[status(esa)],[dt_k2_funct_2])).

thf('16',plain,
    ( ~ ( v1_funct_1 @ sk_B_1 )
    | ~ ( v1_funct_2 @ sk_B_1 @ sk_A @ sk_A )
    | ~ ( v3_funct_2 @ sk_B_1 @ sk_A @ sk_A )
    | ( m1_subset_1 @ ( k2_funct_2 @ sk_A @ sk_B_1 ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_A ) ) ) ),
    inference('sup-',[status(thm)],['14','15'])).

thf('17',plain,(
    v1_funct_1 @ sk_B_1 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('18',plain,(
    v1_funct_2 @ sk_B_1 @ sk_A @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('19',plain,(
    v3_funct_2 @ sk_B_1 @ sk_A @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('20',plain,(
    m1_subset_1 @ ( k2_funct_2 @ sk_A @ sk_B_1 ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_A ) ) ),
    inference(demod,[status(thm)],['16','17','18','19'])).

thf(redefinition_k1_partfun1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i,E: $i,F: $i] :
      ( ( ( v1_funct_1 @ E )
        & ( m1_subset_1 @ E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
        & ( v1_funct_1 @ F )
        & ( m1_subset_1 @ F @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ D ) ) ) )
     => ( ( k1_partfun1 @ A @ B @ C @ D @ E @ F )
        = ( k5_relat_1 @ E @ F ) ) ) )).

thf('21',plain,(
    ! [X24: $i,X25: $i,X26: $i,X27: $i,X28: $i,X29: $i] :
      ( ~ ( m1_subset_1 @ X24 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X25 @ X26 ) ) )
      | ~ ( v1_funct_1 @ X24 )
      | ~ ( v1_funct_1 @ X27 )
      | ~ ( m1_subset_1 @ X27 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X28 @ X29 ) ) )
      | ( ( k1_partfun1 @ X25 @ X26 @ X28 @ X29 @ X24 @ X27 )
        = ( k5_relat_1 @ X24 @ X27 ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k1_partfun1])).

thf('22',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( ( k1_partfun1 @ sk_A @ sk_A @ X2 @ X1 @ ( k2_funct_2 @ sk_A @ sk_B_1 ) @ X0 )
        = ( k5_relat_1 @ ( k2_funct_2 @ sk_A @ sk_B_1 ) @ X0 ) )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X2 @ X1 ) ) )
      | ~ ( v1_funct_1 @ X0 )
      | ~ ( v1_funct_1 @ ( k2_funct_2 @ sk_A @ sk_B_1 ) ) ) ),
    inference('sup-',[status(thm)],['20','21'])).

thf('23',plain,(
    m1_subset_1 @ sk_B_1 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('24',plain,(
    ! [X20: $i,X21: $i] :
      ( ( v1_funct_1 @ ( k2_funct_2 @ X20 @ X21 ) )
      | ~ ( m1_subset_1 @ X21 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X20 @ X20 ) ) )
      | ~ ( v3_funct_2 @ X21 @ X20 @ X20 )
      | ~ ( v1_funct_2 @ X21 @ X20 @ X20 )
      | ~ ( v1_funct_1 @ X21 ) ) ),
    inference(cnf,[status(esa)],[dt_k2_funct_2])).

thf('25',plain,
    ( ~ ( v1_funct_1 @ sk_B_1 )
    | ~ ( v1_funct_2 @ sk_B_1 @ sk_A @ sk_A )
    | ~ ( v3_funct_2 @ sk_B_1 @ sk_A @ sk_A )
    | ( v1_funct_1 @ ( k2_funct_2 @ sk_A @ sk_B_1 ) ) ),
    inference('sup-',[status(thm)],['23','24'])).

thf('26',plain,(
    v1_funct_1 @ sk_B_1 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('27',plain,(
    v1_funct_2 @ sk_B_1 @ sk_A @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('28',plain,(
    v3_funct_2 @ sk_B_1 @ sk_A @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('29',plain,(
    v1_funct_1 @ ( k2_funct_2 @ sk_A @ sk_B_1 ) ),
    inference(demod,[status(thm)],['25','26','27','28'])).

thf('30',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( ( k1_partfun1 @ sk_A @ sk_A @ X2 @ X1 @ ( k2_funct_2 @ sk_A @ sk_B_1 ) @ X0 )
        = ( k5_relat_1 @ ( k2_funct_2 @ sk_A @ sk_B_1 ) @ X0 ) )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X2 @ X1 ) ) )
      | ~ ( v1_funct_1 @ X0 ) ) ),
    inference(demod,[status(thm)],['22','29'])).

thf('31',plain,
    ( ( k2_funct_2 @ sk_A @ sk_B_1 )
    = ( k2_funct_1 @ sk_B_1 ) ),
    inference(demod,[status(thm)],['7','8','9','10'])).

thf('32',plain,
    ( ( k2_funct_2 @ sk_A @ sk_B_1 )
    = ( k2_funct_1 @ sk_B_1 ) ),
    inference(demod,[status(thm)],['7','8','9','10'])).

thf('33',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( ( k1_partfun1 @ sk_A @ sk_A @ X2 @ X1 @ ( k2_funct_1 @ sk_B_1 ) @ X0 )
        = ( k5_relat_1 @ ( k2_funct_1 @ sk_B_1 ) @ X0 ) )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X2 @ X1 ) ) )
      | ~ ( v1_funct_1 @ X0 ) ) ),
    inference(demod,[status(thm)],['30','31','32'])).

thf('34',plain,
    ( ~ ( v1_funct_1 @ sk_B_1 )
    | ( ( k1_partfun1 @ sk_A @ sk_A @ sk_A @ sk_A @ ( k2_funct_1 @ sk_B_1 ) @ sk_B_1 )
      = ( k5_relat_1 @ ( k2_funct_1 @ sk_B_1 ) @ sk_B_1 ) ) ),
    inference('sup-',[status(thm)],['13','33'])).

thf('35',plain,(
    v1_funct_1 @ sk_B_1 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('36',plain,
    ( ( k1_partfun1 @ sk_A @ sk_A @ sk_A @ sk_A @ ( k2_funct_1 @ sk_B_1 ) @ sk_B_1 )
    = ( k5_relat_1 @ ( k2_funct_1 @ sk_B_1 ) @ sk_B_1 ) ),
    inference(demod,[status(thm)],['34','35'])).

thf('37',plain,
    ( ( k2_funct_2 @ sk_A @ sk_B_1 )
    = ( k2_funct_1 @ sk_B_1 ) ),
    inference(demod,[status(thm)],['7','8','9','10'])).

thf('38',plain,
    ( ~ ( r2_relset_1 @ sk_A @ sk_A @ ( k1_partfun1 @ sk_A @ sk_A @ sk_A @ sk_A @ ( k2_funct_2 @ sk_A @ sk_B_1 ) @ sk_B_1 ) @ ( k6_partfun1 @ sk_A ) )
   <= ~ ( r2_relset_1 @ sk_A @ sk_A @ ( k1_partfun1 @ sk_A @ sk_A @ sk_A @ sk_A @ ( k2_funct_2 @ sk_A @ sk_B_1 ) @ sk_B_1 ) @ ( k6_partfun1 @ sk_A ) ) ),
    inference(split,[status(esa)],['1'])).

thf('39',plain,(
    ! [X32: $i] :
      ( ( k6_partfun1 @ X32 )
      = ( k6_relat_1 @ X32 ) ) ),
    inference(cnf,[status(esa)],[redefinition_k6_partfun1])).

thf('40',plain,
    ( ~ ( r2_relset_1 @ sk_A @ sk_A @ ( k1_partfun1 @ sk_A @ sk_A @ sk_A @ sk_A @ ( k2_funct_2 @ sk_A @ sk_B_1 ) @ sk_B_1 ) @ ( k6_relat_1 @ sk_A ) )
   <= ~ ( r2_relset_1 @ sk_A @ sk_A @ ( k1_partfun1 @ sk_A @ sk_A @ sk_A @ sk_A @ ( k2_funct_2 @ sk_A @ sk_B_1 ) @ sk_B_1 ) @ ( k6_partfun1 @ sk_A ) ) ),
    inference(demod,[status(thm)],['38','39'])).

thf('41',plain,
    ( ~ ( r2_relset_1 @ sk_A @ sk_A @ ( k1_partfun1 @ sk_A @ sk_A @ sk_A @ sk_A @ ( k2_funct_1 @ sk_B_1 ) @ sk_B_1 ) @ ( k6_relat_1 @ sk_A ) )
   <= ~ ( r2_relset_1 @ sk_A @ sk_A @ ( k1_partfun1 @ sk_A @ sk_A @ sk_A @ sk_A @ ( k2_funct_2 @ sk_A @ sk_B_1 ) @ sk_B_1 ) @ ( k6_partfun1 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['37','40'])).

thf('42',plain,
    ( ~ ( r2_relset_1 @ sk_A @ sk_A @ ( k5_relat_1 @ ( k2_funct_1 @ sk_B_1 ) @ sk_B_1 ) @ ( k6_relat_1 @ sk_A ) )
   <= ~ ( r2_relset_1 @ sk_A @ sk_A @ ( k1_partfun1 @ sk_A @ sk_A @ sk_A @ sk_A @ ( k2_funct_2 @ sk_A @ sk_B_1 ) @ sk_B_1 ) @ ( k6_partfun1 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['36','41'])).

thf('43',plain,(
    ! [X1: $i] :
      ( ~ ( v2_funct_1 @ X1 )
      | ( ( k5_relat_1 @ ( k2_funct_1 @ X1 ) @ X1 )
        = ( k6_relat_1 @ ( k2_relat_1 @ X1 ) ) )
      | ~ ( v1_funct_1 @ X1 )
      | ~ ( v1_relat_1 @ X1 ) ) ),
    inference(cnf,[status(esa)],[t61_funct_1])).

thf('44',plain,(
    m1_subset_1 @ sk_B_1 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(cc2_funct_2,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( ( v1_funct_1 @ C )
          & ( v3_funct_2 @ C @ A @ B ) )
       => ( ( v1_funct_1 @ C )
          & ( v2_funct_1 @ C )
          & ( v2_funct_2 @ C @ B ) ) ) ) )).

thf('45',plain,(
    ! [X15: $i,X16: $i,X17: $i] :
      ( ~ ( v1_funct_1 @ X15 )
      | ~ ( v3_funct_2 @ X15 @ X16 @ X17 )
      | ( v2_funct_2 @ X15 @ X17 )
      | ~ ( m1_subset_1 @ X15 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X16 @ X17 ) ) ) ) ),
    inference(cnf,[status(esa)],[cc2_funct_2])).

thf('46',plain,
    ( ( v2_funct_2 @ sk_B_1 @ sk_A )
    | ~ ( v3_funct_2 @ sk_B_1 @ sk_A @ sk_A )
    | ~ ( v1_funct_1 @ sk_B_1 ) ),
    inference('sup-',[status(thm)],['44','45'])).

thf('47',plain,(
    v3_funct_2 @ sk_B_1 @ sk_A @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('48',plain,(
    v1_funct_1 @ sk_B_1 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('49',plain,(
    v2_funct_2 @ sk_B_1 @ sk_A ),
    inference(demod,[status(thm)],['46','47','48'])).

thf(d3_funct_2,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( v1_relat_1 @ B )
        & ( v5_relat_1 @ B @ A ) )
     => ( ( v2_funct_2 @ B @ A )
      <=> ( ( k2_relat_1 @ B )
          = A ) ) ) )).

thf('50',plain,(
    ! [X18: $i,X19: $i] :
      ( ~ ( v2_funct_2 @ X19 @ X18 )
      | ( ( k2_relat_1 @ X19 )
        = X18 )
      | ~ ( v5_relat_1 @ X19 @ X18 )
      | ~ ( v1_relat_1 @ X19 ) ) ),
    inference(cnf,[status(esa)],[d3_funct_2])).

thf('51',plain,
    ( ~ ( v1_relat_1 @ sk_B_1 )
    | ~ ( v5_relat_1 @ sk_B_1 @ sk_A )
    | ( ( k2_relat_1 @ sk_B_1 )
      = sk_A ) ),
    inference('sup-',[status(thm)],['49','50'])).

thf('52',plain,(
    m1_subset_1 @ sk_B_1 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(cc1_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( v1_relat_1 @ C ) ) )).

thf('53',plain,(
    ! [X2: $i,X3: $i,X4: $i] :
      ( ( v1_relat_1 @ X2 )
      | ~ ( m1_subset_1 @ X2 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X3 @ X4 ) ) ) ) ),
    inference(cnf,[status(esa)],[cc1_relset_1])).

thf('54',plain,(
    v1_relat_1 @ sk_B_1 ),
    inference('sup-',[status(thm)],['52','53'])).

thf('55',plain,(
    m1_subset_1 @ sk_B_1 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(cc2_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( v4_relat_1 @ C @ A )
        & ( v5_relat_1 @ C @ B ) ) ) )).

thf('56',plain,(
    ! [X5: $i,X6: $i,X7: $i] :
      ( ( v5_relat_1 @ X5 @ X7 )
      | ~ ( m1_subset_1 @ X5 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X6 @ X7 ) ) ) ) ),
    inference(cnf,[status(esa)],[cc2_relset_1])).

thf('57',plain,(
    v5_relat_1 @ sk_B_1 @ sk_A ),
    inference('sup-',[status(thm)],['55','56'])).

thf('58',plain,
    ( ( k2_relat_1 @ sk_B_1 )
    = sk_A ),
    inference(demod,[status(thm)],['51','54','57'])).

thf('59',plain,(
    ! [X1: $i] :
      ( ~ ( v2_funct_1 @ X1 )
      | ( ( k5_relat_1 @ ( k2_funct_1 @ X1 ) @ X1 )
        = ( k6_relat_1 @ ( k2_relat_1 @ X1 ) ) )
      | ~ ( v1_funct_1 @ X1 )
      | ~ ( v1_relat_1 @ X1 ) ) ),
    inference(cnf,[status(esa)],[t61_funct_1])).

thf(dt_k6_partfun1,axiom,(
    ! [A: $i] :
      ( ( m1_subset_1 @ ( k6_partfun1 @ A ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ A ) ) )
      & ( v1_partfun1 @ ( k6_partfun1 @ A ) @ A ) ) )).

thf('60',plain,(
    ! [X23: $i] :
      ( m1_subset_1 @ ( k6_partfun1 @ X23 ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X23 @ X23 ) ) ) ),
    inference(cnf,[status(esa)],[dt_k6_partfun1])).

thf('61',plain,(
    ! [X32: $i] :
      ( ( k6_partfun1 @ X32 )
      = ( k6_relat_1 @ X32 ) ) ),
    inference(cnf,[status(esa)],[redefinition_k6_partfun1])).

thf('62',plain,(
    ! [X23: $i] :
      ( m1_subset_1 @ ( k6_relat_1 @ X23 ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X23 @ X23 ) ) ) ),
    inference(demod,[status(thm)],['60','61'])).

thf('63',plain,(
    ! [X0: $i] :
      ( ( m1_subset_1 @ ( k5_relat_1 @ ( k2_funct_1 @ X0 ) @ X0 ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( k2_relat_1 @ X0 ) @ ( k2_relat_1 @ X0 ) ) ) )
      | ~ ( v1_relat_1 @ X0 )
      | ~ ( v1_funct_1 @ X0 )
      | ~ ( v2_funct_1 @ X0 ) ) ),
    inference('sup+',[status(thm)],['59','62'])).

thf('64',plain,
    ( ( m1_subset_1 @ ( k5_relat_1 @ ( k2_funct_1 @ sk_B_1 ) @ sk_B_1 ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( k2_relat_1 @ sk_B_1 ) @ sk_A ) ) )
    | ~ ( v2_funct_1 @ sk_B_1 )
    | ~ ( v1_funct_1 @ sk_B_1 )
    | ~ ( v1_relat_1 @ sk_B_1 ) ),
    inference('sup+',[status(thm)],['58','63'])).

thf('65',plain,
    ( ( k2_relat_1 @ sk_B_1 )
    = sk_A ),
    inference(demod,[status(thm)],['51','54','57'])).

thf('66',plain,(
    m1_subset_1 @ sk_B_1 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('67',plain,(
    ! [X15: $i,X16: $i,X17: $i] :
      ( ~ ( v1_funct_1 @ X15 )
      | ~ ( v3_funct_2 @ X15 @ X16 @ X17 )
      | ( v2_funct_1 @ X15 )
      | ~ ( m1_subset_1 @ X15 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X16 @ X17 ) ) ) ) ),
    inference(cnf,[status(esa)],[cc2_funct_2])).

thf('68',plain,
    ( ( v2_funct_1 @ sk_B_1 )
    | ~ ( v3_funct_2 @ sk_B_1 @ sk_A @ sk_A )
    | ~ ( v1_funct_1 @ sk_B_1 ) ),
    inference('sup-',[status(thm)],['66','67'])).

thf('69',plain,(
    v3_funct_2 @ sk_B_1 @ sk_A @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('70',plain,(
    v1_funct_1 @ sk_B_1 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('71',plain,(
    v2_funct_1 @ sk_B_1 ),
    inference(demod,[status(thm)],['68','69','70'])).

thf('72',plain,(
    v1_funct_1 @ sk_B_1 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('73',plain,(
    v1_relat_1 @ sk_B_1 ),
    inference('sup-',[status(thm)],['52','53'])).

thf('74',plain,(
    m1_subset_1 @ ( k5_relat_1 @ ( k2_funct_1 @ sk_B_1 ) @ sk_B_1 ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_A ) ) ),
    inference(demod,[status(thm)],['64','65','71','72','73'])).

thf(reflexivity_r2_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
        & ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) )
     => ( r2_relset_1 @ A @ B @ C @ C ) ) )).

thf('75',plain,(
    ! [X11: $i,X12: $i,X13: $i,X14: $i] :
      ( ( r2_relset_1 @ X11 @ X12 @ X13 @ X13 )
      | ~ ( m1_subset_1 @ X13 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X11 @ X12 ) ) )
      | ~ ( m1_subset_1 @ X14 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X11 @ X12 ) ) ) ) ),
    inference(cnf,[status(esa)],[reflexivity_r2_relset_1])).

thf('76',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( r2_relset_1 @ X2 @ X1 @ X0 @ X0 )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X2 @ X1 ) ) ) ) ),
    inference(condensation,[status(thm)],['75'])).

thf('77',plain,(
    r2_relset_1 @ sk_A @ sk_A @ ( k5_relat_1 @ ( k2_funct_1 @ sk_B_1 ) @ sk_B_1 ) @ ( k5_relat_1 @ ( k2_funct_1 @ sk_B_1 ) @ sk_B_1 ) ),
    inference('sup-',[status(thm)],['74','76'])).

thf('78',plain,
    ( ( r2_relset_1 @ sk_A @ sk_A @ ( k5_relat_1 @ ( k2_funct_1 @ sk_B_1 ) @ sk_B_1 ) @ ( k6_relat_1 @ ( k2_relat_1 @ sk_B_1 ) ) )
    | ~ ( v1_relat_1 @ sk_B_1 )
    | ~ ( v1_funct_1 @ sk_B_1 )
    | ~ ( v2_funct_1 @ sk_B_1 ) ),
    inference('sup+',[status(thm)],['43','77'])).

thf('79',plain,
    ( ( k2_relat_1 @ sk_B_1 )
    = sk_A ),
    inference(demod,[status(thm)],['51','54','57'])).

thf('80',plain,(
    v1_relat_1 @ sk_B_1 ),
    inference('sup-',[status(thm)],['52','53'])).

thf('81',plain,(
    v1_funct_1 @ sk_B_1 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('82',plain,(
    v2_funct_1 @ sk_B_1 ),
    inference(demod,[status(thm)],['68','69','70'])).

thf('83',plain,(
    r2_relset_1 @ sk_A @ sk_A @ ( k5_relat_1 @ ( k2_funct_1 @ sk_B_1 ) @ sk_B_1 ) @ ( k6_relat_1 @ sk_A ) ),
    inference(demod,[status(thm)],['78','79','80','81','82'])).

thf('84',plain,(
    r2_relset_1 @ sk_A @ sk_A @ ( k1_partfun1 @ sk_A @ sk_A @ sk_A @ sk_A @ ( k2_funct_2 @ sk_A @ sk_B_1 ) @ sk_B_1 ) @ ( k6_partfun1 @ sk_A ) ),
    inference(demod,[status(thm)],['42','83'])).

thf('85',plain,
    ( ~ ( r2_relset_1 @ sk_A @ sk_A @ ( k1_partfun1 @ sk_A @ sk_A @ sk_A @ sk_A @ sk_B_1 @ ( k2_funct_2 @ sk_A @ sk_B_1 ) ) @ ( k6_partfun1 @ sk_A ) )
    | ~ ( r2_relset_1 @ sk_A @ sk_A @ ( k1_partfun1 @ sk_A @ sk_A @ sk_A @ sk_A @ ( k2_funct_2 @ sk_A @ sk_B_1 ) @ sk_B_1 ) @ ( k6_partfun1 @ sk_A ) ) ),
    inference(split,[status(esa)],['1'])).

thf('86',plain,(
    ~ ( r2_relset_1 @ sk_A @ sk_A @ ( k1_partfun1 @ sk_A @ sk_A @ sk_A @ sk_A @ sk_B_1 @ ( k2_funct_2 @ sk_A @ sk_B_1 ) ) @ ( k6_partfun1 @ sk_A ) ) ),
    inference('sat_resolution*',[status(thm)],['84','85'])).

thf('87',plain,(
    ~ ( r2_relset_1 @ sk_A @ sk_A @ ( k1_partfun1 @ sk_A @ sk_A @ sk_A @ sk_A @ sk_B_1 @ ( k2_funct_1 @ sk_B_1 ) ) @ ( k6_relat_1 @ sk_A ) ) ),
    inference(simpl_trail,[status(thm)],['12','86'])).

thf('88',plain,(
    m1_subset_1 @ ( k2_funct_2 @ sk_A @ sk_B_1 ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_A ) ) ),
    inference(demod,[status(thm)],['16','17','18','19'])).

thf('89',plain,
    ( ( k2_funct_2 @ sk_A @ sk_B_1 )
    = ( k2_funct_1 @ sk_B_1 ) ),
    inference(demod,[status(thm)],['7','8','9','10'])).

thf('90',plain,(
    m1_subset_1 @ ( k2_funct_1 @ sk_B_1 ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_A ) ) ),
    inference(demod,[status(thm)],['88','89'])).

thf('91',plain,(
    m1_subset_1 @ sk_B_1 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('92',plain,(
    ! [X24: $i,X25: $i,X26: $i,X27: $i,X28: $i,X29: $i] :
      ( ~ ( m1_subset_1 @ X24 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X25 @ X26 ) ) )
      | ~ ( v1_funct_1 @ X24 )
      | ~ ( v1_funct_1 @ X27 )
      | ~ ( m1_subset_1 @ X27 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X28 @ X29 ) ) )
      | ( ( k1_partfun1 @ X25 @ X26 @ X28 @ X29 @ X24 @ X27 )
        = ( k5_relat_1 @ X24 @ X27 ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k1_partfun1])).

thf('93',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( ( k1_partfun1 @ sk_A @ sk_A @ X2 @ X1 @ sk_B_1 @ X0 )
        = ( k5_relat_1 @ sk_B_1 @ X0 ) )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X2 @ X1 ) ) )
      | ~ ( v1_funct_1 @ X0 )
      | ~ ( v1_funct_1 @ sk_B_1 ) ) ),
    inference('sup-',[status(thm)],['91','92'])).

thf('94',plain,(
    v1_funct_1 @ sk_B_1 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('95',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( ( k1_partfun1 @ sk_A @ sk_A @ X2 @ X1 @ sk_B_1 @ X0 )
        = ( k5_relat_1 @ sk_B_1 @ X0 ) )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X2 @ X1 ) ) )
      | ~ ( v1_funct_1 @ X0 ) ) ),
    inference(demod,[status(thm)],['93','94'])).

thf('96',plain,
    ( ~ ( v1_funct_1 @ ( k2_funct_1 @ sk_B_1 ) )
    | ( ( k1_partfun1 @ sk_A @ sk_A @ sk_A @ sk_A @ sk_B_1 @ ( k2_funct_1 @ sk_B_1 ) )
      = ( k5_relat_1 @ sk_B_1 @ ( k2_funct_1 @ sk_B_1 ) ) ) ),
    inference('sup-',[status(thm)],['90','95'])).

thf('97',plain,(
    v1_funct_1 @ ( k2_funct_2 @ sk_A @ sk_B_1 ) ),
    inference(demod,[status(thm)],['25','26','27','28'])).

thf('98',plain,
    ( ( k2_funct_2 @ sk_A @ sk_B_1 )
    = ( k2_funct_1 @ sk_B_1 ) ),
    inference(demod,[status(thm)],['7','8','9','10'])).

thf('99',plain,(
    v1_funct_1 @ ( k2_funct_1 @ sk_B_1 ) ),
    inference(demod,[status(thm)],['97','98'])).

thf('100',plain,
    ( ( k1_partfun1 @ sk_A @ sk_A @ sk_A @ sk_A @ sk_B_1 @ ( k2_funct_1 @ sk_B_1 ) )
    = ( k5_relat_1 @ sk_B_1 @ ( k2_funct_1 @ sk_B_1 ) ) ),
    inference(demod,[status(thm)],['96','99'])).

thf('101',plain,(
    ~ ( r2_relset_1 @ sk_A @ sk_A @ ( k5_relat_1 @ sk_B_1 @ ( k2_funct_1 @ sk_B_1 ) ) @ ( k6_relat_1 @ sk_A ) ) ),
    inference(demod,[status(thm)],['87','100'])).

thf('102',plain,
    ( ~ ( r2_relset_1 @ sk_A @ sk_A @ ( k6_relat_1 @ ( k1_relat_1 @ sk_B_1 ) ) @ ( k6_relat_1 @ sk_A ) )
    | ~ ( v1_relat_1 @ sk_B_1 )
    | ~ ( v1_funct_1 @ sk_B_1 )
    | ~ ( v2_funct_1 @ sk_B_1 ) ),
    inference('sup-',[status(thm)],['0','101'])).

thf('103',plain,(
    m1_subset_1 @ sk_B_1 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t67_funct_2,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( v1_funct_1 @ B )
        & ( v1_funct_2 @ B @ A @ A )
        & ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ A ) ) ) )
     => ( ( k1_relset_1 @ A @ A @ B )
        = A ) ) )).

thf('104',plain,(
    ! [X33: $i,X34: $i] :
      ( ( ( k1_relset_1 @ X33 @ X33 @ X34 )
        = X33 )
      | ~ ( m1_subset_1 @ X34 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X33 @ X33 ) ) )
      | ~ ( v1_funct_2 @ X34 @ X33 @ X33 )
      | ~ ( v1_funct_1 @ X34 ) ) ),
    inference(cnf,[status(esa)],[t67_funct_2])).

thf('105',plain,
    ( ~ ( v1_funct_1 @ sk_B_1 )
    | ~ ( v1_funct_2 @ sk_B_1 @ sk_A @ sk_A )
    | ( ( k1_relset_1 @ sk_A @ sk_A @ sk_B_1 )
      = sk_A ) ),
    inference('sup-',[status(thm)],['103','104'])).

thf('106',plain,(
    v1_funct_1 @ sk_B_1 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('107',plain,(
    v1_funct_2 @ sk_B_1 @ sk_A @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('108',plain,(
    m1_subset_1 @ sk_B_1 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(redefinition_k1_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( k1_relset_1 @ A @ B @ C )
        = ( k1_relat_1 @ C ) ) ) )).

thf('109',plain,(
    ! [X8: $i,X9: $i,X10: $i] :
      ( ( ( k1_relset_1 @ X9 @ X10 @ X8 )
        = ( k1_relat_1 @ X8 ) )
      | ~ ( m1_subset_1 @ X8 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X9 @ X10 ) ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k1_relset_1])).

thf('110',plain,
    ( ( k1_relset_1 @ sk_A @ sk_A @ sk_B_1 )
    = ( k1_relat_1 @ sk_B_1 ) ),
    inference('sup-',[status(thm)],['108','109'])).

thf('111',plain,
    ( ( k1_relat_1 @ sk_B_1 )
    = sk_A ),
    inference(demod,[status(thm)],['105','106','107','110'])).

thf('112',plain,(
    ! [X23: $i] :
      ( m1_subset_1 @ ( k6_relat_1 @ X23 ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X23 @ X23 ) ) ) ),
    inference(demod,[status(thm)],['60','61'])).

thf('113',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( r2_relset_1 @ X2 @ X1 @ X0 @ X0 )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X2 @ X1 ) ) ) ) ),
    inference(condensation,[status(thm)],['75'])).

thf('114',plain,(
    ! [X0: $i] :
      ( r2_relset_1 @ X0 @ X0 @ ( k6_relat_1 @ X0 ) @ ( k6_relat_1 @ X0 ) ) ),
    inference('sup-',[status(thm)],['112','113'])).

thf('115',plain,(
    v1_relat_1 @ sk_B_1 ),
    inference('sup-',[status(thm)],['52','53'])).

thf('116',plain,(
    v1_funct_1 @ sk_B_1 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('117',plain,(
    v2_funct_1 @ sk_B_1 ),
    inference(demod,[status(thm)],['68','69','70'])).

thf('118',plain,(
    $false ),
    inference(demod,[status(thm)],['102','111','114','115','116','117'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.10/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.10/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.KAmtcY0xrl
% 0.14/0.34  % Computer   : n010.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.35  % CPULimit   : 60
% 0.14/0.35  % DateTime   : Tue Dec  1 12:25:45 EST 2020
% 0.14/0.35  % CPUTime    : 
% 0.14/0.35  % Running portfolio for 600 s
% 0.14/0.35  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.14/0.35  % Number of cores: 8
% 0.14/0.35  % Python version: Python 3.6.8
% 0.14/0.35  % Running in FO mode
% 0.70/0.89  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.70/0.89  % Solved by: fo/fo7.sh
% 0.70/0.89  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.70/0.89  % done 641 iterations in 0.441s
% 0.70/0.89  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.70/0.89  % SZS output start Refutation
% 0.70/0.89  thf(v2_funct_1_type, type, v2_funct_1: $i > $o).
% 0.70/0.89  thf(r2_relset_1_type, type, r2_relset_1: $i > $i > $i > $i > $o).
% 0.70/0.89  thf(v1_partfun1_type, type, v1_partfun1: $i > $i > $o).
% 0.70/0.89  thf(sk_B_1_type, type, sk_B_1: $i).
% 0.70/0.89  thf(k6_partfun1_type, type, k6_partfun1: $i > $i).
% 0.70/0.89  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.70/0.89  thf(v1_funct_2_type, type, v1_funct_2: $i > $i > $i > $o).
% 0.70/0.89  thf(k2_funct_2_type, type, k2_funct_2: $i > $i > $i).
% 0.70/0.89  thf(v3_funct_2_type, type, v3_funct_2: $i > $i > $i > $o).
% 0.70/0.89  thf(k6_relat_1_type, type, k6_relat_1: $i > $i).
% 0.70/0.89  thf(v2_funct_2_type, type, v2_funct_2: $i > $i > $o).
% 0.70/0.89  thf(k1_relat_1_type, type, k1_relat_1: $i > $i).
% 0.70/0.89  thf(k2_funct_1_type, type, k2_funct_1: $i > $i).
% 0.70/0.89  thf(k1_partfun1_type, type, k1_partfun1: $i > $i > $i > $i > $i > $i > $i).
% 0.70/0.89  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.70/0.89  thf(k2_zfmisc_1_type, type, k2_zfmisc_1: $i > $i > $i).
% 0.70/0.89  thf(v5_relat_1_type, type, v5_relat_1: $i > $i > $o).
% 0.70/0.89  thf(v4_relat_1_type, type, v4_relat_1: $i > $i > $o).
% 0.70/0.89  thf(v1_funct_1_type, type, v1_funct_1: $i > $o).
% 0.70/0.89  thf(k5_relat_1_type, type, k5_relat_1: $i > $i > $i).
% 0.70/0.89  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.70/0.89  thf(k1_relset_1_type, type, k1_relset_1: $i > $i > $i > $i).
% 0.70/0.89  thf(sk_A_type, type, sk_A: $i).
% 0.70/0.89  thf(k2_relat_1_type, type, k2_relat_1: $i > $i).
% 0.70/0.89  thf(t61_funct_1, axiom,
% 0.70/0.89    (![A:$i]:
% 0.70/0.89     ( ( ( v1_relat_1 @ A ) & ( v1_funct_1 @ A ) ) =>
% 0.70/0.89       ( ( v2_funct_1 @ A ) =>
% 0.70/0.89         ( ( ( k5_relat_1 @ A @ ( k2_funct_1 @ A ) ) =
% 0.70/0.89             ( k6_relat_1 @ ( k1_relat_1 @ A ) ) ) & 
% 0.70/0.89           ( ( k5_relat_1 @ ( k2_funct_1 @ A ) @ A ) =
% 0.70/0.89             ( k6_relat_1 @ ( k2_relat_1 @ A ) ) ) ) ) ))).
% 0.70/0.89  thf('0', plain,
% 0.70/0.89      (![X1 : $i]:
% 0.70/0.89         (~ (v2_funct_1 @ X1)
% 0.70/0.89          | ((k5_relat_1 @ X1 @ (k2_funct_1 @ X1))
% 0.70/0.89              = (k6_relat_1 @ (k1_relat_1 @ X1)))
% 0.70/0.89          | ~ (v1_funct_1 @ X1)
% 0.70/0.89          | ~ (v1_relat_1 @ X1))),
% 0.70/0.89      inference('cnf', [status(esa)], [t61_funct_1])).
% 0.70/0.89  thf(t88_funct_2, conjecture,
% 0.70/0.89    (![A:$i,B:$i]:
% 0.70/0.89     ( ( ( v1_funct_1 @ B ) & ( v1_funct_2 @ B @ A @ A ) & 
% 0.70/0.89         ( v3_funct_2 @ B @ A @ A ) & 
% 0.70/0.89         ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ A ) ) ) ) =>
% 0.70/0.89       ( ( r2_relset_1 @
% 0.70/0.89           A @ A @ 
% 0.70/0.89           ( k1_partfun1 @ A @ A @ A @ A @ B @ ( k2_funct_2 @ A @ B ) ) @ 
% 0.70/0.89           ( k6_partfun1 @ A ) ) & 
% 0.70/0.89         ( r2_relset_1 @
% 0.70/0.89           A @ A @ 
% 0.70/0.89           ( k1_partfun1 @ A @ A @ A @ A @ ( k2_funct_2 @ A @ B ) @ B ) @ 
% 0.70/0.89           ( k6_partfun1 @ A ) ) ) ))).
% 0.70/0.89  thf(zf_stmt_0, negated_conjecture,
% 0.70/0.89    (~( ![A:$i,B:$i]:
% 0.70/0.89        ( ( ( v1_funct_1 @ B ) & ( v1_funct_2 @ B @ A @ A ) & 
% 0.70/0.89            ( v3_funct_2 @ B @ A @ A ) & 
% 0.70/0.89            ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ A ) ) ) ) =>
% 0.70/0.89          ( ( r2_relset_1 @
% 0.70/0.89              A @ A @ 
% 0.70/0.89              ( k1_partfun1 @ A @ A @ A @ A @ B @ ( k2_funct_2 @ A @ B ) ) @ 
% 0.70/0.89              ( k6_partfun1 @ A ) ) & 
% 0.70/0.89            ( r2_relset_1 @
% 0.70/0.89              A @ A @ 
% 0.70/0.89              ( k1_partfun1 @ A @ A @ A @ A @ ( k2_funct_2 @ A @ B ) @ B ) @ 
% 0.70/0.89              ( k6_partfun1 @ A ) ) ) ) )),
% 0.70/0.89    inference('cnf.neg', [status(esa)], [t88_funct_2])).
% 0.70/0.89  thf('1', plain,
% 0.70/0.89      ((~ (r2_relset_1 @ sk_A @ sk_A @ 
% 0.70/0.89           (k1_partfun1 @ sk_A @ sk_A @ sk_A @ sk_A @ sk_B_1 @ 
% 0.70/0.89            (k2_funct_2 @ sk_A @ sk_B_1)) @ 
% 0.70/0.89           (k6_partfun1 @ sk_A))
% 0.70/0.89        | ~ (r2_relset_1 @ sk_A @ sk_A @ 
% 0.70/0.89             (k1_partfun1 @ sk_A @ sk_A @ sk_A @ sk_A @ 
% 0.70/0.89              (k2_funct_2 @ sk_A @ sk_B_1) @ sk_B_1) @ 
% 0.70/0.89             (k6_partfun1 @ sk_A)))),
% 0.70/0.89      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.70/0.89  thf('2', plain,
% 0.70/0.89      ((~ (r2_relset_1 @ sk_A @ sk_A @ 
% 0.70/0.89           (k1_partfun1 @ sk_A @ sk_A @ sk_A @ sk_A @ sk_B_1 @ 
% 0.70/0.89            (k2_funct_2 @ sk_A @ sk_B_1)) @ 
% 0.70/0.89           (k6_partfun1 @ sk_A)))
% 0.70/0.89         <= (~
% 0.70/0.89             ((r2_relset_1 @ sk_A @ sk_A @ 
% 0.70/0.89               (k1_partfun1 @ sk_A @ sk_A @ sk_A @ sk_A @ sk_B_1 @ 
% 0.70/0.89                (k2_funct_2 @ sk_A @ sk_B_1)) @ 
% 0.70/0.89               (k6_partfun1 @ sk_A))))),
% 0.70/0.89      inference('split', [status(esa)], ['1'])).
% 0.70/0.89  thf(redefinition_k6_partfun1, axiom,
% 0.70/0.89    (![A:$i]: ( ( k6_partfun1 @ A ) = ( k6_relat_1 @ A ) ))).
% 0.70/0.89  thf('3', plain, (![X32 : $i]: ((k6_partfun1 @ X32) = (k6_relat_1 @ X32))),
% 0.70/0.89      inference('cnf', [status(esa)], [redefinition_k6_partfun1])).
% 0.70/0.89  thf('4', plain,
% 0.70/0.89      ((~ (r2_relset_1 @ sk_A @ sk_A @ 
% 0.70/0.89           (k1_partfun1 @ sk_A @ sk_A @ sk_A @ sk_A @ sk_B_1 @ 
% 0.70/0.89            (k2_funct_2 @ sk_A @ sk_B_1)) @ 
% 0.70/0.89           (k6_relat_1 @ sk_A)))
% 0.70/0.89         <= (~
% 0.70/0.89             ((r2_relset_1 @ sk_A @ sk_A @ 
% 0.70/0.89               (k1_partfun1 @ sk_A @ sk_A @ sk_A @ sk_A @ sk_B_1 @ 
% 0.70/0.89                (k2_funct_2 @ sk_A @ sk_B_1)) @ 
% 0.70/0.89               (k6_partfun1 @ sk_A))))),
% 0.70/0.89      inference('demod', [status(thm)], ['2', '3'])).
% 0.70/0.89  thf('5', plain,
% 0.70/0.89      ((m1_subset_1 @ sk_B_1 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_A)))),
% 0.70/0.89      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.70/0.89  thf(redefinition_k2_funct_2, axiom,
% 0.70/0.89    (![A:$i,B:$i]:
% 0.70/0.89     ( ( ( v1_funct_1 @ B ) & ( v1_funct_2 @ B @ A @ A ) & 
% 0.70/0.89         ( v3_funct_2 @ B @ A @ A ) & 
% 0.70/0.89         ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ A ) ) ) ) =>
% 0.70/0.89       ( ( k2_funct_2 @ A @ B ) = ( k2_funct_1 @ B ) ) ))).
% 0.70/0.89  thf('6', plain,
% 0.70/0.89      (![X30 : $i, X31 : $i]:
% 0.70/0.89         (((k2_funct_2 @ X31 @ X30) = (k2_funct_1 @ X30))
% 0.70/0.89          | ~ (m1_subset_1 @ X30 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X31 @ X31)))
% 0.70/0.89          | ~ (v3_funct_2 @ X30 @ X31 @ X31)
% 0.70/0.89          | ~ (v1_funct_2 @ X30 @ X31 @ X31)
% 0.70/0.89          | ~ (v1_funct_1 @ X30))),
% 0.70/0.89      inference('cnf', [status(esa)], [redefinition_k2_funct_2])).
% 0.70/0.89  thf('7', plain,
% 0.70/0.89      ((~ (v1_funct_1 @ sk_B_1)
% 0.70/0.89        | ~ (v1_funct_2 @ sk_B_1 @ sk_A @ sk_A)
% 0.70/0.89        | ~ (v3_funct_2 @ sk_B_1 @ sk_A @ sk_A)
% 0.70/0.89        | ((k2_funct_2 @ sk_A @ sk_B_1) = (k2_funct_1 @ sk_B_1)))),
% 0.70/0.89      inference('sup-', [status(thm)], ['5', '6'])).
% 0.70/0.89  thf('8', plain, ((v1_funct_1 @ sk_B_1)),
% 0.70/0.89      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.70/0.89  thf('9', plain, ((v1_funct_2 @ sk_B_1 @ sk_A @ sk_A)),
% 0.70/0.89      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.70/0.89  thf('10', plain, ((v3_funct_2 @ sk_B_1 @ sk_A @ sk_A)),
% 0.70/0.89      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.70/0.89  thf('11', plain, (((k2_funct_2 @ sk_A @ sk_B_1) = (k2_funct_1 @ sk_B_1))),
% 0.70/0.89      inference('demod', [status(thm)], ['7', '8', '9', '10'])).
% 0.70/0.89  thf('12', plain,
% 0.70/0.89      ((~ (r2_relset_1 @ sk_A @ sk_A @ 
% 0.70/0.89           (k1_partfun1 @ sk_A @ sk_A @ sk_A @ sk_A @ sk_B_1 @ 
% 0.70/0.89            (k2_funct_1 @ sk_B_1)) @ 
% 0.70/0.89           (k6_relat_1 @ sk_A)))
% 0.70/0.89         <= (~
% 0.70/0.89             ((r2_relset_1 @ sk_A @ sk_A @ 
% 0.70/0.89               (k1_partfun1 @ sk_A @ sk_A @ sk_A @ sk_A @ sk_B_1 @ 
% 0.70/0.89                (k2_funct_2 @ sk_A @ sk_B_1)) @ 
% 0.70/0.89               (k6_partfun1 @ sk_A))))),
% 0.70/0.89      inference('demod', [status(thm)], ['4', '11'])).
% 0.70/0.89  thf('13', plain,
% 0.70/0.89      ((m1_subset_1 @ sk_B_1 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_A)))),
% 0.70/0.89      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.70/0.89  thf('14', plain,
% 0.70/0.89      ((m1_subset_1 @ sk_B_1 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_A)))),
% 0.70/0.89      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.70/0.89  thf(dt_k2_funct_2, axiom,
% 0.70/0.89    (![A:$i,B:$i]:
% 0.70/0.89     ( ( ( v1_funct_1 @ B ) & ( v1_funct_2 @ B @ A @ A ) & 
% 0.70/0.89         ( v3_funct_2 @ B @ A @ A ) & 
% 0.70/0.89         ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ A ) ) ) ) =>
% 0.70/0.89       ( ( v1_funct_1 @ ( k2_funct_2 @ A @ B ) ) & 
% 0.70/0.89         ( v1_funct_2 @ ( k2_funct_2 @ A @ B ) @ A @ A ) & 
% 0.70/0.89         ( v3_funct_2 @ ( k2_funct_2 @ A @ B ) @ A @ A ) & 
% 0.70/0.89         ( m1_subset_1 @
% 0.70/0.89           ( k2_funct_2 @ A @ B ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ A ) ) ) ) ))).
% 0.70/0.89  thf('15', plain,
% 0.70/0.89      (![X20 : $i, X21 : $i]:
% 0.70/0.89         ((m1_subset_1 @ (k2_funct_2 @ X20 @ X21) @ 
% 0.70/0.89           (k1_zfmisc_1 @ (k2_zfmisc_1 @ X20 @ X20)))
% 0.70/0.89          | ~ (m1_subset_1 @ X21 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X20 @ X20)))
% 0.70/0.89          | ~ (v3_funct_2 @ X21 @ X20 @ X20)
% 0.70/0.89          | ~ (v1_funct_2 @ X21 @ X20 @ X20)
% 0.70/0.89          | ~ (v1_funct_1 @ X21))),
% 0.70/0.89      inference('cnf', [status(esa)], [dt_k2_funct_2])).
% 0.70/0.89  thf('16', plain,
% 0.70/0.89      ((~ (v1_funct_1 @ sk_B_1)
% 0.70/0.89        | ~ (v1_funct_2 @ sk_B_1 @ sk_A @ sk_A)
% 0.70/0.89        | ~ (v3_funct_2 @ sk_B_1 @ sk_A @ sk_A)
% 0.70/0.89        | (m1_subset_1 @ (k2_funct_2 @ sk_A @ sk_B_1) @ 
% 0.70/0.89           (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_A))))),
% 0.70/0.89      inference('sup-', [status(thm)], ['14', '15'])).
% 0.70/0.89  thf('17', plain, ((v1_funct_1 @ sk_B_1)),
% 0.70/0.89      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.70/0.89  thf('18', plain, ((v1_funct_2 @ sk_B_1 @ sk_A @ sk_A)),
% 0.70/0.89      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.70/0.89  thf('19', plain, ((v3_funct_2 @ sk_B_1 @ sk_A @ sk_A)),
% 0.70/0.89      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.70/0.89  thf('20', plain,
% 0.70/0.89      ((m1_subset_1 @ (k2_funct_2 @ sk_A @ sk_B_1) @ 
% 0.70/0.89        (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_A)))),
% 0.70/0.89      inference('demod', [status(thm)], ['16', '17', '18', '19'])).
% 0.70/0.89  thf(redefinition_k1_partfun1, axiom,
% 0.70/0.89    (![A:$i,B:$i,C:$i,D:$i,E:$i,F:$i]:
% 0.70/0.89     ( ( ( v1_funct_1 @ E ) & 
% 0.70/0.89         ( m1_subset_1 @ E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) & 
% 0.70/0.89         ( v1_funct_1 @ F ) & 
% 0.70/0.89         ( m1_subset_1 @ F @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ D ) ) ) ) =>
% 0.70/0.89       ( ( k1_partfun1 @ A @ B @ C @ D @ E @ F ) = ( k5_relat_1 @ E @ F ) ) ))).
% 0.70/0.89  thf('21', plain,
% 0.70/0.89      (![X24 : $i, X25 : $i, X26 : $i, X27 : $i, X28 : $i, X29 : $i]:
% 0.70/0.89         (~ (m1_subset_1 @ X24 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X25 @ X26)))
% 0.70/0.89          | ~ (v1_funct_1 @ X24)
% 0.70/0.89          | ~ (v1_funct_1 @ X27)
% 0.70/0.89          | ~ (m1_subset_1 @ X27 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X28 @ X29)))
% 0.70/0.89          | ((k1_partfun1 @ X25 @ X26 @ X28 @ X29 @ X24 @ X27)
% 0.70/0.89              = (k5_relat_1 @ X24 @ X27)))),
% 0.70/0.89      inference('cnf', [status(esa)], [redefinition_k1_partfun1])).
% 0.70/0.89  thf('22', plain,
% 0.70/0.89      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.70/0.89         (((k1_partfun1 @ sk_A @ sk_A @ X2 @ X1 @ 
% 0.70/0.89            (k2_funct_2 @ sk_A @ sk_B_1) @ X0)
% 0.70/0.89            = (k5_relat_1 @ (k2_funct_2 @ sk_A @ sk_B_1) @ X0))
% 0.70/0.89          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X2 @ X1)))
% 0.70/0.89          | ~ (v1_funct_1 @ X0)
% 0.70/0.89          | ~ (v1_funct_1 @ (k2_funct_2 @ sk_A @ sk_B_1)))),
% 0.70/0.89      inference('sup-', [status(thm)], ['20', '21'])).
% 0.70/0.89  thf('23', plain,
% 0.70/0.89      ((m1_subset_1 @ sk_B_1 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_A)))),
% 0.70/0.89      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.70/0.89  thf('24', plain,
% 0.70/0.89      (![X20 : $i, X21 : $i]:
% 0.70/0.89         ((v1_funct_1 @ (k2_funct_2 @ X20 @ X21))
% 0.70/0.89          | ~ (m1_subset_1 @ X21 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X20 @ X20)))
% 0.70/0.89          | ~ (v3_funct_2 @ X21 @ X20 @ X20)
% 0.70/0.89          | ~ (v1_funct_2 @ X21 @ X20 @ X20)
% 0.70/0.89          | ~ (v1_funct_1 @ X21))),
% 0.70/0.89      inference('cnf', [status(esa)], [dt_k2_funct_2])).
% 0.70/0.89  thf('25', plain,
% 0.70/0.89      ((~ (v1_funct_1 @ sk_B_1)
% 0.70/0.89        | ~ (v1_funct_2 @ sk_B_1 @ sk_A @ sk_A)
% 0.70/0.89        | ~ (v3_funct_2 @ sk_B_1 @ sk_A @ sk_A)
% 0.70/0.89        | (v1_funct_1 @ (k2_funct_2 @ sk_A @ sk_B_1)))),
% 0.70/0.89      inference('sup-', [status(thm)], ['23', '24'])).
% 0.70/0.89  thf('26', plain, ((v1_funct_1 @ sk_B_1)),
% 0.70/0.89      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.70/0.89  thf('27', plain, ((v1_funct_2 @ sk_B_1 @ sk_A @ sk_A)),
% 0.70/0.89      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.70/0.89  thf('28', plain, ((v3_funct_2 @ sk_B_1 @ sk_A @ sk_A)),
% 0.70/0.89      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.70/0.89  thf('29', plain, ((v1_funct_1 @ (k2_funct_2 @ sk_A @ sk_B_1))),
% 0.70/0.89      inference('demod', [status(thm)], ['25', '26', '27', '28'])).
% 0.70/0.89  thf('30', plain,
% 0.70/0.89      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.70/0.89         (((k1_partfun1 @ sk_A @ sk_A @ X2 @ X1 @ 
% 0.70/0.89            (k2_funct_2 @ sk_A @ sk_B_1) @ X0)
% 0.70/0.89            = (k5_relat_1 @ (k2_funct_2 @ sk_A @ sk_B_1) @ X0))
% 0.70/0.89          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X2 @ X1)))
% 0.70/0.89          | ~ (v1_funct_1 @ X0))),
% 0.70/0.89      inference('demod', [status(thm)], ['22', '29'])).
% 0.70/0.89  thf('31', plain, (((k2_funct_2 @ sk_A @ sk_B_1) = (k2_funct_1 @ sk_B_1))),
% 0.70/0.89      inference('demod', [status(thm)], ['7', '8', '9', '10'])).
% 0.70/0.89  thf('32', plain, (((k2_funct_2 @ sk_A @ sk_B_1) = (k2_funct_1 @ sk_B_1))),
% 0.70/0.89      inference('demod', [status(thm)], ['7', '8', '9', '10'])).
% 0.70/0.89  thf('33', plain,
% 0.70/0.89      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.70/0.89         (((k1_partfun1 @ sk_A @ sk_A @ X2 @ X1 @ (k2_funct_1 @ sk_B_1) @ X0)
% 0.70/0.89            = (k5_relat_1 @ (k2_funct_1 @ sk_B_1) @ X0))
% 0.70/0.89          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X2 @ X1)))
% 0.70/0.89          | ~ (v1_funct_1 @ X0))),
% 0.70/0.89      inference('demod', [status(thm)], ['30', '31', '32'])).
% 0.70/0.89  thf('34', plain,
% 0.70/0.89      ((~ (v1_funct_1 @ sk_B_1)
% 0.70/0.89        | ((k1_partfun1 @ sk_A @ sk_A @ sk_A @ sk_A @ (k2_funct_1 @ sk_B_1) @ 
% 0.70/0.89            sk_B_1) = (k5_relat_1 @ (k2_funct_1 @ sk_B_1) @ sk_B_1)))),
% 0.70/0.89      inference('sup-', [status(thm)], ['13', '33'])).
% 0.70/0.89  thf('35', plain, ((v1_funct_1 @ sk_B_1)),
% 0.70/0.89      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.70/0.89  thf('36', plain,
% 0.70/0.89      (((k1_partfun1 @ sk_A @ sk_A @ sk_A @ sk_A @ (k2_funct_1 @ sk_B_1) @ 
% 0.70/0.89         sk_B_1) = (k5_relat_1 @ (k2_funct_1 @ sk_B_1) @ sk_B_1))),
% 0.70/0.89      inference('demod', [status(thm)], ['34', '35'])).
% 0.70/0.89  thf('37', plain, (((k2_funct_2 @ sk_A @ sk_B_1) = (k2_funct_1 @ sk_B_1))),
% 0.70/0.89      inference('demod', [status(thm)], ['7', '8', '9', '10'])).
% 0.70/0.89  thf('38', plain,
% 0.70/0.89      ((~ (r2_relset_1 @ sk_A @ sk_A @ 
% 0.70/0.89           (k1_partfun1 @ sk_A @ sk_A @ sk_A @ sk_A @ 
% 0.70/0.89            (k2_funct_2 @ sk_A @ sk_B_1) @ sk_B_1) @ 
% 0.70/0.89           (k6_partfun1 @ sk_A)))
% 0.70/0.89         <= (~
% 0.70/0.89             ((r2_relset_1 @ sk_A @ sk_A @ 
% 0.70/0.89               (k1_partfun1 @ sk_A @ sk_A @ sk_A @ sk_A @ 
% 0.70/0.89                (k2_funct_2 @ sk_A @ sk_B_1) @ sk_B_1) @ 
% 0.70/0.89               (k6_partfun1 @ sk_A))))),
% 0.70/0.89      inference('split', [status(esa)], ['1'])).
% 0.70/0.89  thf('39', plain, (![X32 : $i]: ((k6_partfun1 @ X32) = (k6_relat_1 @ X32))),
% 0.70/0.89      inference('cnf', [status(esa)], [redefinition_k6_partfun1])).
% 0.70/0.89  thf('40', plain,
% 0.70/0.89      ((~ (r2_relset_1 @ sk_A @ sk_A @ 
% 0.70/0.89           (k1_partfun1 @ sk_A @ sk_A @ sk_A @ sk_A @ 
% 0.70/0.89            (k2_funct_2 @ sk_A @ sk_B_1) @ sk_B_1) @ 
% 0.70/0.89           (k6_relat_1 @ sk_A)))
% 0.70/0.89         <= (~
% 0.70/0.89             ((r2_relset_1 @ sk_A @ sk_A @ 
% 0.70/0.89               (k1_partfun1 @ sk_A @ sk_A @ sk_A @ sk_A @ 
% 0.70/0.89                (k2_funct_2 @ sk_A @ sk_B_1) @ sk_B_1) @ 
% 0.70/0.89               (k6_partfun1 @ sk_A))))),
% 0.70/0.89      inference('demod', [status(thm)], ['38', '39'])).
% 0.70/0.89  thf('41', plain,
% 0.70/0.89      ((~ (r2_relset_1 @ sk_A @ sk_A @ 
% 0.70/0.89           (k1_partfun1 @ sk_A @ sk_A @ sk_A @ sk_A @ (k2_funct_1 @ sk_B_1) @ 
% 0.70/0.89            sk_B_1) @ 
% 0.70/0.89           (k6_relat_1 @ sk_A)))
% 0.70/0.89         <= (~
% 0.70/0.89             ((r2_relset_1 @ sk_A @ sk_A @ 
% 0.70/0.89               (k1_partfun1 @ sk_A @ sk_A @ sk_A @ sk_A @ 
% 0.70/0.89                (k2_funct_2 @ sk_A @ sk_B_1) @ sk_B_1) @ 
% 0.70/0.89               (k6_partfun1 @ sk_A))))),
% 0.70/0.89      inference('sup-', [status(thm)], ['37', '40'])).
% 0.70/0.89  thf('42', plain,
% 0.70/0.89      ((~ (r2_relset_1 @ sk_A @ sk_A @ 
% 0.70/0.89           (k5_relat_1 @ (k2_funct_1 @ sk_B_1) @ sk_B_1) @ (k6_relat_1 @ sk_A)))
% 0.70/0.89         <= (~
% 0.70/0.89             ((r2_relset_1 @ sk_A @ sk_A @ 
% 0.70/0.89               (k1_partfun1 @ sk_A @ sk_A @ sk_A @ sk_A @ 
% 0.70/0.89                (k2_funct_2 @ sk_A @ sk_B_1) @ sk_B_1) @ 
% 0.70/0.89               (k6_partfun1 @ sk_A))))),
% 0.70/0.89      inference('sup-', [status(thm)], ['36', '41'])).
% 0.70/0.89  thf('43', plain,
% 0.70/0.89      (![X1 : $i]:
% 0.70/0.89         (~ (v2_funct_1 @ X1)
% 0.70/0.89          | ((k5_relat_1 @ (k2_funct_1 @ X1) @ X1)
% 0.70/0.89              = (k6_relat_1 @ (k2_relat_1 @ X1)))
% 0.70/0.89          | ~ (v1_funct_1 @ X1)
% 0.70/0.89          | ~ (v1_relat_1 @ X1))),
% 0.70/0.89      inference('cnf', [status(esa)], [t61_funct_1])).
% 0.70/0.89  thf('44', plain,
% 0.70/0.89      ((m1_subset_1 @ sk_B_1 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_A)))),
% 0.70/0.89      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.70/0.89  thf(cc2_funct_2, axiom,
% 0.70/0.89    (![A:$i,B:$i,C:$i]:
% 0.70/0.89     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.70/0.89       ( ( ( v1_funct_1 @ C ) & ( v3_funct_2 @ C @ A @ B ) ) =>
% 0.70/0.89         ( ( v1_funct_1 @ C ) & ( v2_funct_1 @ C ) & ( v2_funct_2 @ C @ B ) ) ) ))).
% 0.70/0.89  thf('45', plain,
% 0.70/0.89      (![X15 : $i, X16 : $i, X17 : $i]:
% 0.70/0.89         (~ (v1_funct_1 @ X15)
% 0.70/0.89          | ~ (v3_funct_2 @ X15 @ X16 @ X17)
% 0.70/0.89          | (v2_funct_2 @ X15 @ X17)
% 0.70/0.89          | ~ (m1_subset_1 @ X15 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X16 @ X17))))),
% 0.70/0.89      inference('cnf', [status(esa)], [cc2_funct_2])).
% 0.70/0.89  thf('46', plain,
% 0.70/0.89      (((v2_funct_2 @ sk_B_1 @ sk_A)
% 0.70/0.89        | ~ (v3_funct_2 @ sk_B_1 @ sk_A @ sk_A)
% 0.70/0.89        | ~ (v1_funct_1 @ sk_B_1))),
% 0.70/0.89      inference('sup-', [status(thm)], ['44', '45'])).
% 0.70/0.89  thf('47', plain, ((v3_funct_2 @ sk_B_1 @ sk_A @ sk_A)),
% 0.70/0.89      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.70/0.89  thf('48', plain, ((v1_funct_1 @ sk_B_1)),
% 0.70/0.89      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.70/0.89  thf('49', plain, ((v2_funct_2 @ sk_B_1 @ sk_A)),
% 0.70/0.89      inference('demod', [status(thm)], ['46', '47', '48'])).
% 0.70/0.89  thf(d3_funct_2, axiom,
% 0.70/0.89    (![A:$i,B:$i]:
% 0.70/0.89     ( ( ( v1_relat_1 @ B ) & ( v5_relat_1 @ B @ A ) ) =>
% 0.70/0.89       ( ( v2_funct_2 @ B @ A ) <=> ( ( k2_relat_1 @ B ) = ( A ) ) ) ))).
% 0.70/0.89  thf('50', plain,
% 0.70/0.89      (![X18 : $i, X19 : $i]:
% 0.70/0.89         (~ (v2_funct_2 @ X19 @ X18)
% 0.70/0.89          | ((k2_relat_1 @ X19) = (X18))
% 0.70/0.89          | ~ (v5_relat_1 @ X19 @ X18)
% 0.70/0.89          | ~ (v1_relat_1 @ X19))),
% 0.70/0.89      inference('cnf', [status(esa)], [d3_funct_2])).
% 0.70/0.89  thf('51', plain,
% 0.70/0.89      ((~ (v1_relat_1 @ sk_B_1)
% 0.70/0.89        | ~ (v5_relat_1 @ sk_B_1 @ sk_A)
% 0.70/0.89        | ((k2_relat_1 @ sk_B_1) = (sk_A)))),
% 0.70/0.89      inference('sup-', [status(thm)], ['49', '50'])).
% 0.70/0.89  thf('52', plain,
% 0.70/0.89      ((m1_subset_1 @ sk_B_1 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_A)))),
% 0.70/0.89      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.70/0.89  thf(cc1_relset_1, axiom,
% 0.70/0.89    (![A:$i,B:$i,C:$i]:
% 0.70/0.89     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.70/0.89       ( v1_relat_1 @ C ) ))).
% 0.70/0.89  thf('53', plain,
% 0.70/0.89      (![X2 : $i, X3 : $i, X4 : $i]:
% 0.70/0.89         ((v1_relat_1 @ X2)
% 0.70/0.89          | ~ (m1_subset_1 @ X2 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X3 @ X4))))),
% 0.70/0.89      inference('cnf', [status(esa)], [cc1_relset_1])).
% 0.70/0.89  thf('54', plain, ((v1_relat_1 @ sk_B_1)),
% 0.70/0.89      inference('sup-', [status(thm)], ['52', '53'])).
% 0.70/0.89  thf('55', plain,
% 0.70/0.89      ((m1_subset_1 @ sk_B_1 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_A)))),
% 0.70/0.89      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.70/0.89  thf(cc2_relset_1, axiom,
% 0.70/0.89    (![A:$i,B:$i,C:$i]:
% 0.70/0.89     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.70/0.89       ( ( v4_relat_1 @ C @ A ) & ( v5_relat_1 @ C @ B ) ) ))).
% 0.70/0.89  thf('56', plain,
% 0.70/0.89      (![X5 : $i, X6 : $i, X7 : $i]:
% 0.70/0.89         ((v5_relat_1 @ X5 @ X7)
% 0.70/0.89          | ~ (m1_subset_1 @ X5 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X6 @ X7))))),
% 0.70/0.89      inference('cnf', [status(esa)], [cc2_relset_1])).
% 0.70/0.89  thf('57', plain, ((v5_relat_1 @ sk_B_1 @ sk_A)),
% 0.70/0.89      inference('sup-', [status(thm)], ['55', '56'])).
% 0.70/0.89  thf('58', plain, (((k2_relat_1 @ sk_B_1) = (sk_A))),
% 0.70/0.89      inference('demod', [status(thm)], ['51', '54', '57'])).
% 0.70/0.89  thf('59', plain,
% 0.70/0.89      (![X1 : $i]:
% 0.70/0.89         (~ (v2_funct_1 @ X1)
% 0.70/0.89          | ((k5_relat_1 @ (k2_funct_1 @ X1) @ X1)
% 0.70/0.89              = (k6_relat_1 @ (k2_relat_1 @ X1)))
% 0.70/0.89          | ~ (v1_funct_1 @ X1)
% 0.70/0.89          | ~ (v1_relat_1 @ X1))),
% 0.70/0.89      inference('cnf', [status(esa)], [t61_funct_1])).
% 0.70/0.89  thf(dt_k6_partfun1, axiom,
% 0.70/0.89    (![A:$i]:
% 0.70/0.89     ( ( m1_subset_1 @
% 0.70/0.89         ( k6_partfun1 @ A ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ A ) ) ) & 
% 0.70/0.89       ( v1_partfun1 @ ( k6_partfun1 @ A ) @ A ) ))).
% 0.70/0.89  thf('60', plain,
% 0.70/0.89      (![X23 : $i]:
% 0.70/0.89         (m1_subset_1 @ (k6_partfun1 @ X23) @ 
% 0.70/0.89          (k1_zfmisc_1 @ (k2_zfmisc_1 @ X23 @ X23)))),
% 0.70/0.89      inference('cnf', [status(esa)], [dt_k6_partfun1])).
% 0.70/0.89  thf('61', plain, (![X32 : $i]: ((k6_partfun1 @ X32) = (k6_relat_1 @ X32))),
% 0.70/0.89      inference('cnf', [status(esa)], [redefinition_k6_partfun1])).
% 0.70/0.89  thf('62', plain,
% 0.70/0.89      (![X23 : $i]:
% 0.70/0.89         (m1_subset_1 @ (k6_relat_1 @ X23) @ 
% 0.70/0.89          (k1_zfmisc_1 @ (k2_zfmisc_1 @ X23 @ X23)))),
% 0.70/0.89      inference('demod', [status(thm)], ['60', '61'])).
% 0.70/0.89  thf('63', plain,
% 0.70/0.89      (![X0 : $i]:
% 0.70/0.89         ((m1_subset_1 @ (k5_relat_1 @ (k2_funct_1 @ X0) @ X0) @ 
% 0.70/0.89           (k1_zfmisc_1 @ (k2_zfmisc_1 @ (k2_relat_1 @ X0) @ (k2_relat_1 @ X0))))
% 0.70/0.89          | ~ (v1_relat_1 @ X0)
% 0.70/0.89          | ~ (v1_funct_1 @ X0)
% 0.70/0.89          | ~ (v2_funct_1 @ X0))),
% 0.70/0.89      inference('sup+', [status(thm)], ['59', '62'])).
% 0.70/0.89  thf('64', plain,
% 0.70/0.89      (((m1_subset_1 @ (k5_relat_1 @ (k2_funct_1 @ sk_B_1) @ sk_B_1) @ 
% 0.70/0.89         (k1_zfmisc_1 @ (k2_zfmisc_1 @ (k2_relat_1 @ sk_B_1) @ sk_A)))
% 0.70/0.89        | ~ (v2_funct_1 @ sk_B_1)
% 0.70/0.89        | ~ (v1_funct_1 @ sk_B_1)
% 0.70/0.89        | ~ (v1_relat_1 @ sk_B_1))),
% 0.70/0.89      inference('sup+', [status(thm)], ['58', '63'])).
% 0.70/0.89  thf('65', plain, (((k2_relat_1 @ sk_B_1) = (sk_A))),
% 0.70/0.89      inference('demod', [status(thm)], ['51', '54', '57'])).
% 0.70/0.89  thf('66', plain,
% 0.70/0.89      ((m1_subset_1 @ sk_B_1 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_A)))),
% 0.70/0.89      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.70/0.89  thf('67', plain,
% 0.70/0.89      (![X15 : $i, X16 : $i, X17 : $i]:
% 0.70/0.89         (~ (v1_funct_1 @ X15)
% 0.70/0.89          | ~ (v3_funct_2 @ X15 @ X16 @ X17)
% 0.70/0.89          | (v2_funct_1 @ X15)
% 0.70/0.89          | ~ (m1_subset_1 @ X15 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X16 @ X17))))),
% 0.70/0.89      inference('cnf', [status(esa)], [cc2_funct_2])).
% 0.70/0.89  thf('68', plain,
% 0.70/0.89      (((v2_funct_1 @ sk_B_1)
% 0.70/0.89        | ~ (v3_funct_2 @ sk_B_1 @ sk_A @ sk_A)
% 0.70/0.89        | ~ (v1_funct_1 @ sk_B_1))),
% 0.70/0.89      inference('sup-', [status(thm)], ['66', '67'])).
% 0.70/0.89  thf('69', plain, ((v3_funct_2 @ sk_B_1 @ sk_A @ sk_A)),
% 0.70/0.89      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.70/0.89  thf('70', plain, ((v1_funct_1 @ sk_B_1)),
% 0.70/0.89      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.70/0.89  thf('71', plain, ((v2_funct_1 @ sk_B_1)),
% 0.70/0.89      inference('demod', [status(thm)], ['68', '69', '70'])).
% 0.70/0.89  thf('72', plain, ((v1_funct_1 @ sk_B_1)),
% 0.70/0.89      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.70/0.89  thf('73', plain, ((v1_relat_1 @ sk_B_1)),
% 0.70/0.89      inference('sup-', [status(thm)], ['52', '53'])).
% 0.70/0.89  thf('74', plain,
% 0.70/0.89      ((m1_subset_1 @ (k5_relat_1 @ (k2_funct_1 @ sk_B_1) @ sk_B_1) @ 
% 0.70/0.89        (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_A)))),
% 0.70/0.89      inference('demod', [status(thm)], ['64', '65', '71', '72', '73'])).
% 0.70/0.89  thf(reflexivity_r2_relset_1, axiom,
% 0.70/0.89    (![A:$i,B:$i,C:$i,D:$i]:
% 0.70/0.89     ( ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) & 
% 0.70/0.89         ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) =>
% 0.70/0.89       ( r2_relset_1 @ A @ B @ C @ C ) ))).
% 0.70/0.89  thf('75', plain,
% 0.70/0.89      (![X11 : $i, X12 : $i, X13 : $i, X14 : $i]:
% 0.70/0.89         ((r2_relset_1 @ X11 @ X12 @ X13 @ X13)
% 0.70/0.89          | ~ (m1_subset_1 @ X13 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X11 @ X12)))
% 0.70/0.89          | ~ (m1_subset_1 @ X14 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X11 @ X12))))),
% 0.70/0.89      inference('cnf', [status(esa)], [reflexivity_r2_relset_1])).
% 0.70/0.89  thf('76', plain,
% 0.70/0.89      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.70/0.89         ((r2_relset_1 @ X2 @ X1 @ X0 @ X0)
% 0.70/0.89          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X2 @ X1))))),
% 0.70/0.89      inference('condensation', [status(thm)], ['75'])).
% 0.70/0.89  thf('77', plain,
% 0.70/0.89      ((r2_relset_1 @ sk_A @ sk_A @ 
% 0.70/0.89        (k5_relat_1 @ (k2_funct_1 @ sk_B_1) @ sk_B_1) @ 
% 0.70/0.89        (k5_relat_1 @ (k2_funct_1 @ sk_B_1) @ sk_B_1))),
% 0.70/0.89      inference('sup-', [status(thm)], ['74', '76'])).
% 0.70/0.89  thf('78', plain,
% 0.70/0.89      (((r2_relset_1 @ sk_A @ sk_A @ 
% 0.70/0.89         (k5_relat_1 @ (k2_funct_1 @ sk_B_1) @ sk_B_1) @ 
% 0.70/0.89         (k6_relat_1 @ (k2_relat_1 @ sk_B_1)))
% 0.70/0.89        | ~ (v1_relat_1 @ sk_B_1)
% 0.70/0.89        | ~ (v1_funct_1 @ sk_B_1)
% 0.70/0.89        | ~ (v2_funct_1 @ sk_B_1))),
% 0.70/0.89      inference('sup+', [status(thm)], ['43', '77'])).
% 0.70/0.89  thf('79', plain, (((k2_relat_1 @ sk_B_1) = (sk_A))),
% 0.70/0.89      inference('demod', [status(thm)], ['51', '54', '57'])).
% 0.70/0.89  thf('80', plain, ((v1_relat_1 @ sk_B_1)),
% 0.70/0.89      inference('sup-', [status(thm)], ['52', '53'])).
% 0.70/0.89  thf('81', plain, ((v1_funct_1 @ sk_B_1)),
% 0.70/0.89      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.70/0.89  thf('82', plain, ((v2_funct_1 @ sk_B_1)),
% 0.70/0.89      inference('demod', [status(thm)], ['68', '69', '70'])).
% 0.70/0.89  thf('83', plain,
% 0.70/0.89      ((r2_relset_1 @ sk_A @ sk_A @ 
% 0.70/0.89        (k5_relat_1 @ (k2_funct_1 @ sk_B_1) @ sk_B_1) @ (k6_relat_1 @ sk_A))),
% 0.70/0.89      inference('demod', [status(thm)], ['78', '79', '80', '81', '82'])).
% 0.70/0.89  thf('84', plain,
% 0.70/0.89      (((r2_relset_1 @ sk_A @ sk_A @ 
% 0.70/0.89         (k1_partfun1 @ sk_A @ sk_A @ sk_A @ sk_A @ 
% 0.70/0.89          (k2_funct_2 @ sk_A @ sk_B_1) @ sk_B_1) @ 
% 0.70/0.89         (k6_partfun1 @ sk_A)))),
% 0.70/0.89      inference('demod', [status(thm)], ['42', '83'])).
% 0.70/0.89  thf('85', plain,
% 0.70/0.89      (~
% 0.70/0.89       ((r2_relset_1 @ sk_A @ sk_A @ 
% 0.70/0.89         (k1_partfun1 @ sk_A @ sk_A @ sk_A @ sk_A @ sk_B_1 @ 
% 0.70/0.89          (k2_funct_2 @ sk_A @ sk_B_1)) @ 
% 0.70/0.89         (k6_partfun1 @ sk_A))) | 
% 0.70/0.89       ~
% 0.70/0.89       ((r2_relset_1 @ sk_A @ sk_A @ 
% 0.70/0.89         (k1_partfun1 @ sk_A @ sk_A @ sk_A @ sk_A @ 
% 0.70/0.89          (k2_funct_2 @ sk_A @ sk_B_1) @ sk_B_1) @ 
% 0.70/0.89         (k6_partfun1 @ sk_A)))),
% 0.70/0.89      inference('split', [status(esa)], ['1'])).
% 0.70/0.89  thf('86', plain,
% 0.70/0.89      (~
% 0.70/0.89       ((r2_relset_1 @ sk_A @ sk_A @ 
% 0.70/0.89         (k1_partfun1 @ sk_A @ sk_A @ sk_A @ sk_A @ sk_B_1 @ 
% 0.70/0.89          (k2_funct_2 @ sk_A @ sk_B_1)) @ 
% 0.70/0.89         (k6_partfun1 @ sk_A)))),
% 0.70/0.89      inference('sat_resolution*', [status(thm)], ['84', '85'])).
% 0.70/0.89  thf('87', plain,
% 0.70/0.89      (~ (r2_relset_1 @ sk_A @ sk_A @ 
% 0.70/0.89          (k1_partfun1 @ sk_A @ sk_A @ sk_A @ sk_A @ sk_B_1 @ 
% 0.70/0.89           (k2_funct_1 @ sk_B_1)) @ 
% 0.70/0.89          (k6_relat_1 @ sk_A))),
% 0.70/0.89      inference('simpl_trail', [status(thm)], ['12', '86'])).
% 0.70/0.89  thf('88', plain,
% 0.70/0.89      ((m1_subset_1 @ (k2_funct_2 @ sk_A @ sk_B_1) @ 
% 0.70/0.89        (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_A)))),
% 0.70/0.89      inference('demod', [status(thm)], ['16', '17', '18', '19'])).
% 0.70/0.89  thf('89', plain, (((k2_funct_2 @ sk_A @ sk_B_1) = (k2_funct_1 @ sk_B_1))),
% 0.70/0.89      inference('demod', [status(thm)], ['7', '8', '9', '10'])).
% 0.70/0.89  thf('90', plain,
% 0.70/0.89      ((m1_subset_1 @ (k2_funct_1 @ sk_B_1) @ 
% 0.70/0.89        (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_A)))),
% 0.70/0.89      inference('demod', [status(thm)], ['88', '89'])).
% 0.70/0.89  thf('91', plain,
% 0.70/0.89      ((m1_subset_1 @ sk_B_1 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_A)))),
% 0.70/0.89      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.70/0.89  thf('92', plain,
% 0.70/0.89      (![X24 : $i, X25 : $i, X26 : $i, X27 : $i, X28 : $i, X29 : $i]:
% 0.70/0.89         (~ (m1_subset_1 @ X24 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X25 @ X26)))
% 0.70/0.89          | ~ (v1_funct_1 @ X24)
% 0.70/0.89          | ~ (v1_funct_1 @ X27)
% 0.70/0.89          | ~ (m1_subset_1 @ X27 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X28 @ X29)))
% 0.70/0.89          | ((k1_partfun1 @ X25 @ X26 @ X28 @ X29 @ X24 @ X27)
% 0.70/0.89              = (k5_relat_1 @ X24 @ X27)))),
% 0.70/0.89      inference('cnf', [status(esa)], [redefinition_k1_partfun1])).
% 0.70/0.89  thf('93', plain,
% 0.70/0.89      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.70/0.89         (((k1_partfun1 @ sk_A @ sk_A @ X2 @ X1 @ sk_B_1 @ X0)
% 0.70/0.89            = (k5_relat_1 @ sk_B_1 @ X0))
% 0.70/0.89          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X2 @ X1)))
% 0.70/0.89          | ~ (v1_funct_1 @ X0)
% 0.70/0.89          | ~ (v1_funct_1 @ sk_B_1))),
% 0.70/0.89      inference('sup-', [status(thm)], ['91', '92'])).
% 0.70/0.89  thf('94', plain, ((v1_funct_1 @ sk_B_1)),
% 0.70/0.89      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.70/0.89  thf('95', plain,
% 0.70/0.89      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.70/0.89         (((k1_partfun1 @ sk_A @ sk_A @ X2 @ X1 @ sk_B_1 @ X0)
% 0.70/0.89            = (k5_relat_1 @ sk_B_1 @ X0))
% 0.70/0.89          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X2 @ X1)))
% 0.70/0.89          | ~ (v1_funct_1 @ X0))),
% 0.70/0.89      inference('demod', [status(thm)], ['93', '94'])).
% 0.70/0.89  thf('96', plain,
% 0.70/0.89      ((~ (v1_funct_1 @ (k2_funct_1 @ sk_B_1))
% 0.70/0.89        | ((k1_partfun1 @ sk_A @ sk_A @ sk_A @ sk_A @ sk_B_1 @ 
% 0.70/0.89            (k2_funct_1 @ sk_B_1))
% 0.70/0.89            = (k5_relat_1 @ sk_B_1 @ (k2_funct_1 @ sk_B_1))))),
% 0.70/0.89      inference('sup-', [status(thm)], ['90', '95'])).
% 0.70/0.89  thf('97', plain, ((v1_funct_1 @ (k2_funct_2 @ sk_A @ sk_B_1))),
% 0.70/0.89      inference('demod', [status(thm)], ['25', '26', '27', '28'])).
% 0.70/0.89  thf('98', plain, (((k2_funct_2 @ sk_A @ sk_B_1) = (k2_funct_1 @ sk_B_1))),
% 0.70/0.89      inference('demod', [status(thm)], ['7', '8', '9', '10'])).
% 0.70/0.89  thf('99', plain, ((v1_funct_1 @ (k2_funct_1 @ sk_B_1))),
% 0.70/0.89      inference('demod', [status(thm)], ['97', '98'])).
% 0.70/0.89  thf('100', plain,
% 0.70/0.89      (((k1_partfun1 @ sk_A @ sk_A @ sk_A @ sk_A @ sk_B_1 @ 
% 0.70/0.89         (k2_funct_1 @ sk_B_1)) = (k5_relat_1 @ sk_B_1 @ (k2_funct_1 @ sk_B_1)))),
% 0.70/0.89      inference('demod', [status(thm)], ['96', '99'])).
% 0.70/0.89  thf('101', plain,
% 0.70/0.89      (~ (r2_relset_1 @ sk_A @ sk_A @ 
% 0.70/0.89          (k5_relat_1 @ sk_B_1 @ (k2_funct_1 @ sk_B_1)) @ (k6_relat_1 @ sk_A))),
% 0.70/0.89      inference('demod', [status(thm)], ['87', '100'])).
% 0.70/0.89  thf('102', plain,
% 0.70/0.89      ((~ (r2_relset_1 @ sk_A @ sk_A @ (k6_relat_1 @ (k1_relat_1 @ sk_B_1)) @ 
% 0.70/0.89           (k6_relat_1 @ sk_A))
% 0.70/0.89        | ~ (v1_relat_1 @ sk_B_1)
% 0.70/0.89        | ~ (v1_funct_1 @ sk_B_1)
% 0.70/0.89        | ~ (v2_funct_1 @ sk_B_1))),
% 0.70/0.89      inference('sup-', [status(thm)], ['0', '101'])).
% 0.70/0.89  thf('103', plain,
% 0.70/0.89      ((m1_subset_1 @ sk_B_1 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_A)))),
% 0.70/0.89      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.70/0.89  thf(t67_funct_2, axiom,
% 0.70/0.89    (![A:$i,B:$i]:
% 0.70/0.89     ( ( ( v1_funct_1 @ B ) & ( v1_funct_2 @ B @ A @ A ) & 
% 0.70/0.89         ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ A ) ) ) ) =>
% 0.70/0.89       ( ( k1_relset_1 @ A @ A @ B ) = ( A ) ) ))).
% 0.70/0.89  thf('104', plain,
% 0.70/0.89      (![X33 : $i, X34 : $i]:
% 0.70/0.89         (((k1_relset_1 @ X33 @ X33 @ X34) = (X33))
% 0.70/0.89          | ~ (m1_subset_1 @ X34 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X33 @ X33)))
% 0.70/0.89          | ~ (v1_funct_2 @ X34 @ X33 @ X33)
% 0.70/0.89          | ~ (v1_funct_1 @ X34))),
% 0.70/0.89      inference('cnf', [status(esa)], [t67_funct_2])).
% 0.70/0.89  thf('105', plain,
% 0.70/0.89      ((~ (v1_funct_1 @ sk_B_1)
% 0.70/0.89        | ~ (v1_funct_2 @ sk_B_1 @ sk_A @ sk_A)
% 0.70/0.89        | ((k1_relset_1 @ sk_A @ sk_A @ sk_B_1) = (sk_A)))),
% 0.70/0.89      inference('sup-', [status(thm)], ['103', '104'])).
% 0.70/0.89  thf('106', plain, ((v1_funct_1 @ sk_B_1)),
% 0.70/0.89      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.70/0.89  thf('107', plain, ((v1_funct_2 @ sk_B_1 @ sk_A @ sk_A)),
% 0.70/0.89      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.70/0.89  thf('108', plain,
% 0.70/0.89      ((m1_subset_1 @ sk_B_1 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_A)))),
% 0.70/0.89      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.70/0.89  thf(redefinition_k1_relset_1, axiom,
% 0.70/0.89    (![A:$i,B:$i,C:$i]:
% 0.70/0.89     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.70/0.89       ( ( k1_relset_1 @ A @ B @ C ) = ( k1_relat_1 @ C ) ) ))).
% 0.70/0.89  thf('109', plain,
% 0.70/0.89      (![X8 : $i, X9 : $i, X10 : $i]:
% 0.70/0.89         (((k1_relset_1 @ X9 @ X10 @ X8) = (k1_relat_1 @ X8))
% 0.70/0.89          | ~ (m1_subset_1 @ X8 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X9 @ X10))))),
% 0.70/0.89      inference('cnf', [status(esa)], [redefinition_k1_relset_1])).
% 0.70/0.89  thf('110', plain,
% 0.70/0.89      (((k1_relset_1 @ sk_A @ sk_A @ sk_B_1) = (k1_relat_1 @ sk_B_1))),
% 0.70/0.89      inference('sup-', [status(thm)], ['108', '109'])).
% 0.70/0.89  thf('111', plain, (((k1_relat_1 @ sk_B_1) = (sk_A))),
% 0.70/0.89      inference('demod', [status(thm)], ['105', '106', '107', '110'])).
% 0.70/0.89  thf('112', plain,
% 0.70/0.89      (![X23 : $i]:
% 0.70/0.89         (m1_subset_1 @ (k6_relat_1 @ X23) @ 
% 0.70/0.89          (k1_zfmisc_1 @ (k2_zfmisc_1 @ X23 @ X23)))),
% 0.70/0.89      inference('demod', [status(thm)], ['60', '61'])).
% 0.70/0.89  thf('113', plain,
% 0.70/0.89      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.70/0.89         ((r2_relset_1 @ X2 @ X1 @ X0 @ X0)
% 0.70/0.89          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X2 @ X1))))),
% 0.70/0.89      inference('condensation', [status(thm)], ['75'])).
% 0.70/0.89  thf('114', plain,
% 0.70/0.89      (![X0 : $i]:
% 0.70/0.89         (r2_relset_1 @ X0 @ X0 @ (k6_relat_1 @ X0) @ (k6_relat_1 @ X0))),
% 0.70/0.89      inference('sup-', [status(thm)], ['112', '113'])).
% 0.70/0.89  thf('115', plain, ((v1_relat_1 @ sk_B_1)),
% 0.70/0.89      inference('sup-', [status(thm)], ['52', '53'])).
% 0.70/0.89  thf('116', plain, ((v1_funct_1 @ sk_B_1)),
% 0.70/0.89      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.70/0.89  thf('117', plain, ((v2_funct_1 @ sk_B_1)),
% 0.70/0.89      inference('demod', [status(thm)], ['68', '69', '70'])).
% 0.70/0.89  thf('118', plain, ($false),
% 0.70/0.89      inference('demod', [status(thm)],
% 0.70/0.89                ['102', '111', '114', '115', '116', '117'])).
% 0.70/0.89  
% 0.70/0.89  % SZS output end Refutation
% 0.70/0.89  
% 0.70/0.90  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
