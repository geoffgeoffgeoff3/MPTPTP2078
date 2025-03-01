%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.vJADaw89sX

% Computer   : n016.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:54:26 EST 2020

% Result     : Theorem 3.61s
% Output     : Refutation 3.61s
% Verified   : 
% Statistics : Number of formulae       :  184 ( 768 expanded)
%              Number of leaves         :   34 ( 227 expanded)
%              Depth                    :   20
%              Number of atoms          : 1404 (16505 expanded)
%              Number of equality atoms :  147 (1191 expanded)
%              Maximal formula depth    :   18 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(v2_funct_1_type,type,(
    v2_funct_1: $i > $o )).

thf(sk_E_type,type,(
    sk_E: $i )).

thf(k2_relset_1_type,type,(
    k2_relset_1: $i > $i > $i > $i )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(sk_D_type,type,(
    sk_D: $i )).

thf(v1_funct_1_type,type,(
    v1_funct_1: $i > $o )).

thf(k5_relat_1_type,type,(
    k5_relat_1: $i > $i > $i )).

thf(zip_tseitin_0_type,type,(
    zip_tseitin_0: $i > $i > $o )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(zip_tseitin_1_type,type,(
    zip_tseitin_1: $i > $i > $i > $o )).

thf(k2_zfmisc_1_type,type,(
    k2_zfmisc_1: $i > $i > $i )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(k2_relat_1_type,type,(
    k2_relat_1: $i > $i )).

thf(k1_partfun1_type,type,(
    k1_partfun1: $i > $i > $i > $i > $i > $i > $i )).

thf(k1_relset_1_type,type,(
    k1_relset_1: $i > $i > $i > $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(v1_funct_2_type,type,(
    v1_funct_2: $i > $i > $i > $o )).

thf(k1_relat_1_type,type,(
    k1_relat_1: $i > $i )).

thf(d1_funct_2,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( ( B = k1_xboole_0 )
         => ( ( ( v1_funct_2 @ C @ A @ B )
            <=> ( C = k1_xboole_0 ) )
            | ( A = k1_xboole_0 ) ) )
        & ( ( ( B = k1_xboole_0 )
           => ( A = k1_xboole_0 ) )
         => ( ( v1_funct_2 @ C @ A @ B )
          <=> ( A
              = ( k1_relset_1 @ A @ B @ C ) ) ) ) ) ) )).

thf(zf_stmt_0,axiom,(
    ! [B: $i,A: $i] :
      ( ( ( B = k1_xboole_0 )
       => ( A = k1_xboole_0 ) )
     => ( zip_tseitin_0 @ B @ A ) ) )).

thf('0',plain,(
    ! [X12: $i,X13: $i] :
      ( ( zip_tseitin_0 @ X12 @ X13 )
      | ( X12 = k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t30_funct_2,conjecture,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( ( v1_funct_1 @ D )
        & ( v1_funct_2 @ D @ A @ B )
        & ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) )
     => ! [E: $i] :
          ( ( ( v1_funct_1 @ E )
            & ( v1_funct_2 @ E @ B @ C )
            & ( m1_subset_1 @ E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ C ) ) ) )
         => ( ( ( v2_funct_1 @ ( k1_partfun1 @ A @ B @ B @ C @ D @ E ) )
              & ( ( k2_relset_1 @ A @ B @ D )
                = B ) )
           => ( ( ( C = k1_xboole_0 )
                & ( B != k1_xboole_0 ) )
              | ( ( v2_funct_1 @ D )
                & ( v2_funct_1 @ E ) ) ) ) ) ) )).

thf(zf_stmt_1,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i,D: $i] :
        ( ( ( v1_funct_1 @ D )
          & ( v1_funct_2 @ D @ A @ B )
          & ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) )
       => ! [E: $i] :
            ( ( ( v1_funct_1 @ E )
              & ( v1_funct_2 @ E @ B @ C )
              & ( m1_subset_1 @ E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ C ) ) ) )
           => ( ( ( v2_funct_1 @ ( k1_partfun1 @ A @ B @ B @ C @ D @ E ) )
                & ( ( k2_relset_1 @ A @ B @ D )
                  = B ) )
             => ( ( ( C = k1_xboole_0 )
                  & ( B != k1_xboole_0 ) )
                | ( ( v2_funct_1 @ D )
                  & ( v2_funct_1 @ E ) ) ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t30_funct_2])).

thf('1',plain,(
    m1_subset_1 @ sk_E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B @ sk_C ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_1])).

thf(zf_stmt_2,type,(
    zip_tseitin_1: $i > $i > $i > $o )).

thf(zf_stmt_3,axiom,(
    ! [C: $i,B: $i,A: $i] :
      ( ( zip_tseitin_1 @ C @ B @ A )
     => ( ( v1_funct_2 @ C @ A @ B )
      <=> ( A
          = ( k1_relset_1 @ A @ B @ C ) ) ) ) )).

thf(zf_stmt_4,type,(
    zip_tseitin_0: $i > $i > $o )).

thf(zf_stmt_5,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( ( zip_tseitin_0 @ B @ A )
         => ( zip_tseitin_1 @ C @ B @ A ) )
        & ( ( B = k1_xboole_0 )
         => ( ( A = k1_xboole_0 )
            | ( ( v1_funct_2 @ C @ A @ B )
            <=> ( C = k1_xboole_0 ) ) ) ) ) ) )).

thf('2',plain,(
    ! [X17: $i,X18: $i,X19: $i] :
      ( ~ ( zip_tseitin_0 @ X17 @ X18 )
      | ( zip_tseitin_1 @ X19 @ X17 @ X18 )
      | ~ ( m1_subset_1 @ X19 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X18 @ X17 ) ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_5])).

thf('3',plain,
    ( ( zip_tseitin_1 @ sk_E @ sk_C @ sk_B )
    | ~ ( zip_tseitin_0 @ sk_C @ sk_B ) ),
    inference('sup-',[status(thm)],['1','2'])).

thf('4',plain,
    ( ( sk_C = k1_xboole_0 )
    | ( zip_tseitin_1 @ sk_E @ sk_C @ sk_B ) ),
    inference('sup-',[status(thm)],['0','3'])).

thf('5',plain,(
    v1_funct_2 @ sk_E @ sk_B @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_1])).

thf('6',plain,(
    ! [X14: $i,X15: $i,X16: $i] :
      ( ~ ( v1_funct_2 @ X16 @ X14 @ X15 )
      | ( X14
        = ( k1_relset_1 @ X14 @ X15 @ X16 ) )
      | ~ ( zip_tseitin_1 @ X16 @ X15 @ X14 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_3])).

thf('7',plain,
    ( ~ ( zip_tseitin_1 @ sk_E @ sk_C @ sk_B )
    | ( sk_B
      = ( k1_relset_1 @ sk_B @ sk_C @ sk_E ) ) ),
    inference('sup-',[status(thm)],['5','6'])).

thf('8',plain,(
    m1_subset_1 @ sk_E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B @ sk_C ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_1])).

thf(redefinition_k1_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( k1_relset_1 @ A @ B @ C )
        = ( k1_relat_1 @ C ) ) ) )).

thf('9',plain,(
    ! [X6: $i,X7: $i,X8: $i] :
      ( ( ( k1_relset_1 @ X7 @ X8 @ X6 )
        = ( k1_relat_1 @ X6 ) )
      | ~ ( m1_subset_1 @ X6 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X7 @ X8 ) ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k1_relset_1])).

thf('10',plain,
    ( ( k1_relset_1 @ sk_B @ sk_C @ sk_E )
    = ( k1_relat_1 @ sk_E ) ),
    inference('sup-',[status(thm)],['8','9'])).

thf('11',plain,
    ( ~ ( zip_tseitin_1 @ sk_E @ sk_C @ sk_B )
    | ( sk_B
      = ( k1_relat_1 @ sk_E ) ) ),
    inference(demod,[status(thm)],['7','10'])).

thf('12',plain,
    ( ( sk_C = k1_xboole_0 )
    | ( sk_B
      = ( k1_relat_1 @ sk_E ) ) ),
    inference('sup-',[status(thm)],['4','11'])).

thf('13',plain,(
    v2_funct_1 @ ( k1_partfun1 @ sk_A @ sk_B @ sk_B @ sk_C @ sk_D @ sk_E ) ),
    inference(cnf,[status(esa)],[zf_stmt_1])).

thf('14',plain,(
    m1_subset_1 @ sk_E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B @ sk_C ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_1])).

thf('15',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_1])).

thf(redefinition_k1_partfun1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i,E: $i,F: $i] :
      ( ( ( v1_funct_1 @ E )
        & ( m1_subset_1 @ E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
        & ( v1_funct_1 @ F )
        & ( m1_subset_1 @ F @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ D ) ) ) )
     => ( ( k1_partfun1 @ A @ B @ C @ D @ E @ F )
        = ( k5_relat_1 @ E @ F ) ) ) )).

thf('16',plain,(
    ! [X20: $i,X21: $i,X22: $i,X23: $i,X24: $i,X25: $i] :
      ( ~ ( m1_subset_1 @ X20 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X21 @ X22 ) ) )
      | ~ ( v1_funct_1 @ X20 )
      | ~ ( v1_funct_1 @ X23 )
      | ~ ( m1_subset_1 @ X23 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X24 @ X25 ) ) )
      | ( ( k1_partfun1 @ X21 @ X22 @ X24 @ X25 @ X20 @ X23 )
        = ( k5_relat_1 @ X20 @ X23 ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k1_partfun1])).

thf('17',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( ( k1_partfun1 @ sk_A @ sk_B @ X2 @ X1 @ sk_D @ X0 )
        = ( k5_relat_1 @ sk_D @ X0 ) )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X2 @ X1 ) ) )
      | ~ ( v1_funct_1 @ X0 )
      | ~ ( v1_funct_1 @ sk_D ) ) ),
    inference('sup-',[status(thm)],['15','16'])).

thf('18',plain,(
    v1_funct_1 @ sk_D ),
    inference(cnf,[status(esa)],[zf_stmt_1])).

thf('19',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( ( k1_partfun1 @ sk_A @ sk_B @ X2 @ X1 @ sk_D @ X0 )
        = ( k5_relat_1 @ sk_D @ X0 ) )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X2 @ X1 ) ) )
      | ~ ( v1_funct_1 @ X0 ) ) ),
    inference(demod,[status(thm)],['17','18'])).

thf('20',plain,
    ( ~ ( v1_funct_1 @ sk_E )
    | ( ( k1_partfun1 @ sk_A @ sk_B @ sk_B @ sk_C @ sk_D @ sk_E )
      = ( k5_relat_1 @ sk_D @ sk_E ) ) ),
    inference('sup-',[status(thm)],['14','19'])).

thf('21',plain,(
    v1_funct_1 @ sk_E ),
    inference(cnf,[status(esa)],[zf_stmt_1])).

thf('22',plain,
    ( ( k1_partfun1 @ sk_A @ sk_B @ sk_B @ sk_C @ sk_D @ sk_E )
    = ( k5_relat_1 @ sk_D @ sk_E ) ),
    inference(demod,[status(thm)],['20','21'])).

thf('23',plain,(
    v2_funct_1 @ ( k5_relat_1 @ sk_D @ sk_E ) ),
    inference(demod,[status(thm)],['13','22'])).

thf(t48_funct_1,axiom,(
    ! [A: $i] :
      ( ( ( v1_relat_1 @ A )
        & ( v1_funct_1 @ A ) )
     => ! [B: $i] :
          ( ( ( v1_relat_1 @ B )
            & ( v1_funct_1 @ B ) )
         => ( ( ( v2_funct_1 @ ( k5_relat_1 @ B @ A ) )
              & ( ( k2_relat_1 @ B )
                = ( k1_relat_1 @ A ) ) )
           => ( ( v2_funct_1 @ B )
              & ( v2_funct_1 @ A ) ) ) ) ) )).

thf('24',plain,(
    ! [X4: $i,X5: $i] :
      ( ~ ( v1_relat_1 @ X4 )
      | ~ ( v1_funct_1 @ X4 )
      | ( v2_funct_1 @ X5 )
      | ( ( k2_relat_1 @ X4 )
       != ( k1_relat_1 @ X5 ) )
      | ~ ( v2_funct_1 @ ( k5_relat_1 @ X4 @ X5 ) )
      | ~ ( v1_funct_1 @ X5 )
      | ~ ( v1_relat_1 @ X5 ) ) ),
    inference(cnf,[status(esa)],[t48_funct_1])).

thf('25',plain,
    ( ~ ( v1_relat_1 @ sk_E )
    | ~ ( v1_funct_1 @ sk_E )
    | ( ( k2_relat_1 @ sk_D )
     != ( k1_relat_1 @ sk_E ) )
    | ( v2_funct_1 @ sk_E )
    | ~ ( v1_funct_1 @ sk_D )
    | ~ ( v1_relat_1 @ sk_D ) ),
    inference('sup-',[status(thm)],['23','24'])).

thf('26',plain,(
    m1_subset_1 @ sk_E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B @ sk_C ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_1])).

thf(cc2_relat_1,axiom,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ! [B: $i] :
          ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) )
         => ( v1_relat_1 @ B ) ) ) )).

thf('27',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ X1 ) )
      | ( v1_relat_1 @ X0 )
      | ~ ( v1_relat_1 @ X1 ) ) ),
    inference(cnf,[status(esa)],[cc2_relat_1])).

thf('28',plain,
    ( ~ ( v1_relat_1 @ ( k2_zfmisc_1 @ sk_B @ sk_C ) )
    | ( v1_relat_1 @ sk_E ) ),
    inference('sup-',[status(thm)],['26','27'])).

thf(fc6_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( v1_relat_1 @ ( k2_zfmisc_1 @ A @ B ) ) )).

thf('29',plain,(
    ! [X2: $i,X3: $i] :
      ( v1_relat_1 @ ( k2_zfmisc_1 @ X2 @ X3 ) ) ),
    inference(cnf,[status(esa)],[fc6_relat_1])).

thf('30',plain,(
    v1_relat_1 @ sk_E ),
    inference(demod,[status(thm)],['28','29'])).

thf('31',plain,(
    v1_funct_1 @ sk_E ),
    inference(cnf,[status(esa)],[zf_stmt_1])).

thf('32',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_1])).

thf(redefinition_k2_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( k2_relset_1 @ A @ B @ C )
        = ( k2_relat_1 @ C ) ) ) )).

thf('33',plain,(
    ! [X9: $i,X10: $i,X11: $i] :
      ( ( ( k2_relset_1 @ X10 @ X11 @ X9 )
        = ( k2_relat_1 @ X9 ) )
      | ~ ( m1_subset_1 @ X9 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X10 @ X11 ) ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k2_relset_1])).

thf('34',plain,
    ( ( k2_relset_1 @ sk_A @ sk_B @ sk_D )
    = ( k2_relat_1 @ sk_D ) ),
    inference('sup-',[status(thm)],['32','33'])).

thf('35',plain,
    ( ( k2_relset_1 @ sk_A @ sk_B @ sk_D )
    = sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_1])).

thf('36',plain,
    ( ( k2_relat_1 @ sk_D )
    = sk_B ),
    inference('sup+',[status(thm)],['34','35'])).

thf('37',plain,(
    v1_funct_1 @ sk_D ),
    inference(cnf,[status(esa)],[zf_stmt_1])).

thf('38',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_1])).

thf('39',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ X1 ) )
      | ( v1_relat_1 @ X0 )
      | ~ ( v1_relat_1 @ X1 ) ) ),
    inference(cnf,[status(esa)],[cc2_relat_1])).

thf('40',plain,
    ( ~ ( v1_relat_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) )
    | ( v1_relat_1 @ sk_D ) ),
    inference('sup-',[status(thm)],['38','39'])).

thf('41',plain,(
    ! [X2: $i,X3: $i] :
      ( v1_relat_1 @ ( k2_zfmisc_1 @ X2 @ X3 ) ) ),
    inference(cnf,[status(esa)],[fc6_relat_1])).

thf('42',plain,(
    v1_relat_1 @ sk_D ),
    inference(demod,[status(thm)],['40','41'])).

thf('43',plain,
    ( ( sk_B
     != ( k1_relat_1 @ sk_E ) )
    | ( v2_funct_1 @ sk_E ) ),
    inference(demod,[status(thm)],['25','30','31','36','37','42'])).

thf('44',plain,
    ( ~ ( v2_funct_1 @ sk_D )
    | ~ ( v2_funct_1 @ sk_E ) ),
    inference(cnf,[status(esa)],[zf_stmt_1])).

thf('45',plain,
    ( ~ ( v2_funct_1 @ sk_E )
   <= ~ ( v2_funct_1 @ sk_E ) ),
    inference(split,[status(esa)],['44'])).

thf('46',plain,(
    ! [X12: $i,X13: $i] :
      ( ( zip_tseitin_0 @ X12 @ X13 )
      | ( X12 = k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('47',plain,(
    ! [X12: $i,X13: $i] :
      ( ( zip_tseitin_0 @ X12 @ X13 )
      | ( X12 = k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('48',plain,(
    ! [X12: $i,X13: $i] :
      ( ( zip_tseitin_0 @ X12 @ X13 )
      | ( X12 = k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('49',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i] :
      ( ( X1 = X0 )
      | ( zip_tseitin_0 @ X0 @ X3 )
      | ( zip_tseitin_0 @ X1 @ X2 ) ) ),
    inference('sup+',[status(thm)],['47','48'])).

thf('50',plain,
    ( ( zip_tseitin_1 @ sk_E @ sk_C @ sk_B )
    | ~ ( zip_tseitin_0 @ sk_C @ sk_B ) ),
    inference('sup-',[status(thm)],['1','2'])).

thf('51',plain,(
    ! [X0: $i,X1: $i] :
      ( ( zip_tseitin_0 @ X1 @ X0 )
      | ( sk_C = X1 )
      | ( zip_tseitin_1 @ sk_E @ sk_C @ sk_B ) ) ),
    inference('sup-',[status(thm)],['49','50'])).

thf('52',plain,
    ( ( sk_C != k1_xboole_0 )
    | ( sk_B = k1_xboole_0 ) ),
    inference(cnf,[status(esa)],[zf_stmt_1])).

thf('53',plain,
    ( ( sk_C != k1_xboole_0 )
   <= ( sk_C != k1_xboole_0 ) ),
    inference(split,[status(esa)],['52'])).

thf('54',plain,
    ( ! [X0: $i,X1: $i] :
        ( ( X0 != k1_xboole_0 )
        | ( zip_tseitin_1 @ sk_E @ sk_C @ sk_B )
        | ( zip_tseitin_0 @ X0 @ X1 ) )
   <= ( sk_C != k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['51','53'])).

thf('55',plain,
    ( ! [X1: $i] :
        ( ( zip_tseitin_0 @ k1_xboole_0 @ X1 )
        | ( zip_tseitin_1 @ sk_E @ sk_C @ sk_B ) )
   <= ( sk_C != k1_xboole_0 ) ),
    inference(simplify,[status(thm)],['54'])).

thf('56',plain,
    ( ~ ( zip_tseitin_1 @ sk_E @ sk_C @ sk_B )
    | ( sk_B
      = ( k1_relat_1 @ sk_E ) ) ),
    inference(demod,[status(thm)],['7','10'])).

thf('57',plain,
    ( ! [X0: $i] :
        ( ( zip_tseitin_0 @ k1_xboole_0 @ X0 )
        | ( sk_B
          = ( k1_relat_1 @ sk_E ) ) )
   <= ( sk_C != k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['55','56'])).

thf('58',plain,
    ( ! [X0: $i,X1: $i,X2: $i] :
        ( ( zip_tseitin_0 @ X0 @ X1 )
        | ( zip_tseitin_0 @ X0 @ X2 )
        | ( sk_B
          = ( k1_relat_1 @ sk_E ) ) )
   <= ( sk_C != k1_xboole_0 ) ),
    inference('sup+',[status(thm)],['46','57'])).

thf('59',plain,
    ( ! [X0: $i,X1: $i] :
        ( ( sk_B
          = ( k1_relat_1 @ sk_E ) )
        | ( zip_tseitin_0 @ X1 @ X0 ) )
   <= ( sk_C != k1_xboole_0 ) ),
    inference(condensation,[status(thm)],['58'])).

thf('60',plain,
    ( ( zip_tseitin_1 @ sk_E @ sk_C @ sk_B )
    | ~ ( zip_tseitin_0 @ sk_C @ sk_B ) ),
    inference('sup-',[status(thm)],['1','2'])).

thf('61',plain,
    ( ( ( sk_B
        = ( k1_relat_1 @ sk_E ) )
      | ( zip_tseitin_1 @ sk_E @ sk_C @ sk_B ) )
   <= ( sk_C != k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['59','60'])).

thf('62',plain,
    ( ~ ( zip_tseitin_1 @ sk_E @ sk_C @ sk_B )
    | ( sk_B
      = ( k1_relat_1 @ sk_E ) ) ),
    inference(demod,[status(thm)],['7','10'])).

thf('63',plain,
    ( ( sk_B
      = ( k1_relat_1 @ sk_E ) )
   <= ( sk_C != k1_xboole_0 ) ),
    inference(clc,[status(thm)],['61','62'])).

thf('64',plain,(
    v2_funct_1 @ ( k5_relat_1 @ sk_D @ sk_E ) ),
    inference(demod,[status(thm)],['13','22'])).

thf('65',plain,(
    ! [X4: $i,X5: $i] :
      ( ~ ( v1_relat_1 @ X4 )
      | ~ ( v1_funct_1 @ X4 )
      | ( v2_funct_1 @ X4 )
      | ( ( k2_relat_1 @ X4 )
       != ( k1_relat_1 @ X5 ) )
      | ~ ( v2_funct_1 @ ( k5_relat_1 @ X4 @ X5 ) )
      | ~ ( v1_funct_1 @ X5 )
      | ~ ( v1_relat_1 @ X5 ) ) ),
    inference(cnf,[status(esa)],[t48_funct_1])).

thf('66',plain,
    ( ~ ( v1_relat_1 @ sk_E )
    | ~ ( v1_funct_1 @ sk_E )
    | ( ( k2_relat_1 @ sk_D )
     != ( k1_relat_1 @ sk_E ) )
    | ( v2_funct_1 @ sk_D )
    | ~ ( v1_funct_1 @ sk_D )
    | ~ ( v1_relat_1 @ sk_D ) ),
    inference('sup-',[status(thm)],['64','65'])).

thf('67',plain,(
    v1_relat_1 @ sk_E ),
    inference(demod,[status(thm)],['28','29'])).

thf('68',plain,(
    v1_funct_1 @ sk_E ),
    inference(cnf,[status(esa)],[zf_stmt_1])).

thf('69',plain,
    ( ( k2_relat_1 @ sk_D )
    = sk_B ),
    inference('sup+',[status(thm)],['34','35'])).

thf('70',plain,(
    v1_funct_1 @ sk_D ),
    inference(cnf,[status(esa)],[zf_stmt_1])).

thf('71',plain,(
    v1_relat_1 @ sk_D ),
    inference(demod,[status(thm)],['40','41'])).

thf('72',plain,
    ( ( sk_B
     != ( k1_relat_1 @ sk_E ) )
    | ( v2_funct_1 @ sk_D ) ),
    inference(demod,[status(thm)],['66','67','68','69','70','71'])).

thf('73',plain,
    ( ( ( sk_B != sk_B )
      | ( v2_funct_1 @ sk_D ) )
   <= ( sk_C != k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['63','72'])).

thf('74',plain,
    ( ( v2_funct_1 @ sk_D )
   <= ( sk_C != k1_xboole_0 ) ),
    inference(simplify,[status(thm)],['73'])).

thf('75',plain,
    ( ~ ( v2_funct_1 @ sk_D )
   <= ~ ( v2_funct_1 @ sk_D ) ),
    inference(split,[status(esa)],['44'])).

thf('76',plain,
    ( ( v2_funct_1 @ sk_D )
    | ( sk_C = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['74','75'])).

thf('77',plain,
    ( ( sk_B = k1_xboole_0 )
   <= ( sk_B = k1_xboole_0 ) ),
    inference(split,[status(esa)],['52'])).

thf('78',plain,(
    v2_funct_1 @ ( k1_partfun1 @ sk_A @ sk_B @ sk_B @ sk_C @ sk_D @ sk_E ) ),
    inference(cnf,[status(esa)],[zf_stmt_1])).

thf('79',plain,
    ( ( v2_funct_1 @ ( k1_partfun1 @ sk_A @ k1_xboole_0 @ sk_B @ sk_C @ sk_D @ sk_E ) )
   <= ( sk_B = k1_xboole_0 ) ),
    inference('sup+',[status(thm)],['77','78'])).

thf('80',plain,
    ( ( sk_B = k1_xboole_0 )
   <= ( sk_B = k1_xboole_0 ) ),
    inference(split,[status(esa)],['52'])).

thf('81',plain,
    ( ( v2_funct_1 @ ( k1_partfun1 @ sk_A @ k1_xboole_0 @ k1_xboole_0 @ sk_C @ sk_D @ sk_E ) )
   <= ( sk_B = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['79','80'])).

thf('82',plain,(
    m1_subset_1 @ sk_E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B @ sk_C ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_1])).

thf('83',plain,
    ( ( sk_B = k1_xboole_0 )
   <= ( sk_B = k1_xboole_0 ) ),
    inference(split,[status(esa)],['52'])).

thf('84',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_1])).

thf('85',plain,
    ( ( m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ k1_xboole_0 ) ) )
   <= ( sk_B = k1_xboole_0 ) ),
    inference('sup+',[status(thm)],['83','84'])).

thf('86',plain,(
    ! [X20: $i,X21: $i,X22: $i,X23: $i,X24: $i,X25: $i] :
      ( ~ ( m1_subset_1 @ X20 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X21 @ X22 ) ) )
      | ~ ( v1_funct_1 @ X20 )
      | ~ ( v1_funct_1 @ X23 )
      | ~ ( m1_subset_1 @ X23 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X24 @ X25 ) ) )
      | ( ( k1_partfun1 @ X21 @ X22 @ X24 @ X25 @ X20 @ X23 )
        = ( k5_relat_1 @ X20 @ X23 ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k1_partfun1])).

thf('87',plain,
    ( ! [X0: $i,X1: $i,X2: $i] :
        ( ( ( k1_partfun1 @ sk_A @ k1_xboole_0 @ X2 @ X1 @ sk_D @ X0 )
          = ( k5_relat_1 @ sk_D @ X0 ) )
        | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X2 @ X1 ) ) )
        | ~ ( v1_funct_1 @ X0 )
        | ~ ( v1_funct_1 @ sk_D ) )
   <= ( sk_B = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['85','86'])).

thf('88',plain,(
    v1_funct_1 @ sk_D ),
    inference(cnf,[status(esa)],[zf_stmt_1])).

thf('89',plain,
    ( ! [X0: $i,X1: $i,X2: $i] :
        ( ( ( k1_partfun1 @ sk_A @ k1_xboole_0 @ X2 @ X1 @ sk_D @ X0 )
          = ( k5_relat_1 @ sk_D @ X0 ) )
        | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X2 @ X1 ) ) )
        | ~ ( v1_funct_1 @ X0 ) )
   <= ( sk_B = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['87','88'])).

thf('90',plain,
    ( ( ~ ( v1_funct_1 @ sk_E )
      | ( ( k1_partfun1 @ sk_A @ k1_xboole_0 @ sk_B @ sk_C @ sk_D @ sk_E )
        = ( k5_relat_1 @ sk_D @ sk_E ) ) )
   <= ( sk_B = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['82','89'])).

thf('91',plain,(
    v1_funct_1 @ sk_E ),
    inference(cnf,[status(esa)],[zf_stmt_1])).

thf('92',plain,
    ( ( sk_B = k1_xboole_0 )
   <= ( sk_B = k1_xboole_0 ) ),
    inference(split,[status(esa)],['52'])).

thf('93',plain,
    ( ( ( k1_partfun1 @ sk_A @ k1_xboole_0 @ k1_xboole_0 @ sk_C @ sk_D @ sk_E )
      = ( k5_relat_1 @ sk_D @ sk_E ) )
   <= ( sk_B = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['90','91','92'])).

thf('94',plain,
    ( ( v2_funct_1 @ ( k5_relat_1 @ sk_D @ sk_E ) )
   <= ( sk_B = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['81','93'])).

thf('95',plain,(
    ! [X4: $i,X5: $i] :
      ( ~ ( v1_relat_1 @ X4 )
      | ~ ( v1_funct_1 @ X4 )
      | ( v2_funct_1 @ X4 )
      | ( ( k2_relat_1 @ X4 )
       != ( k1_relat_1 @ X5 ) )
      | ~ ( v2_funct_1 @ ( k5_relat_1 @ X4 @ X5 ) )
      | ~ ( v1_funct_1 @ X5 )
      | ~ ( v1_relat_1 @ X5 ) ) ),
    inference(cnf,[status(esa)],[t48_funct_1])).

thf('96',plain,
    ( ( ~ ( v1_relat_1 @ sk_E )
      | ~ ( v1_funct_1 @ sk_E )
      | ( ( k2_relat_1 @ sk_D )
       != ( k1_relat_1 @ sk_E ) )
      | ( v2_funct_1 @ sk_D )
      | ~ ( v1_funct_1 @ sk_D )
      | ~ ( v1_relat_1 @ sk_D ) )
   <= ( sk_B = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['94','95'])).

thf('97',plain,(
    v1_relat_1 @ sk_E ),
    inference(demod,[status(thm)],['28','29'])).

thf('98',plain,(
    v1_funct_1 @ sk_E ),
    inference(cnf,[status(esa)],[zf_stmt_1])).

thf('99',plain,
    ( ( k2_relat_1 @ sk_D )
    = sk_B ),
    inference('sup+',[status(thm)],['34','35'])).

thf('100',plain,
    ( ( sk_B = k1_xboole_0 )
   <= ( sk_B = k1_xboole_0 ) ),
    inference(split,[status(esa)],['52'])).

thf('101',plain,
    ( ( sk_B = k1_xboole_0 )
   <= ( sk_B = k1_xboole_0 ) ),
    inference(split,[status(esa)],['52'])).

thf('102',plain,(
    v1_funct_2 @ sk_E @ sk_B @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_1])).

thf('103',plain,
    ( ( v1_funct_2 @ sk_E @ k1_xboole_0 @ sk_C )
   <= ( sk_B = k1_xboole_0 ) ),
    inference('sup+',[status(thm)],['101','102'])).

thf('104',plain,(
    ! [X14: $i,X15: $i,X16: $i] :
      ( ~ ( v1_funct_2 @ X16 @ X14 @ X15 )
      | ( X14
        = ( k1_relset_1 @ X14 @ X15 @ X16 ) )
      | ~ ( zip_tseitin_1 @ X16 @ X15 @ X14 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_3])).

thf('105',plain,
    ( ( ~ ( zip_tseitin_1 @ sk_E @ sk_C @ k1_xboole_0 )
      | ( k1_xboole_0
        = ( k1_relset_1 @ k1_xboole_0 @ sk_C @ sk_E ) ) )
   <= ( sk_B = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['103','104'])).

thf('106',plain,
    ( ( sk_B = k1_xboole_0 )
   <= ( sk_B = k1_xboole_0 ) ),
    inference(split,[status(esa)],['52'])).

thf('107',plain,(
    m1_subset_1 @ sk_E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B @ sk_C ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_1])).

thf('108',plain,
    ( ( m1_subset_1 @ sk_E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ k1_xboole_0 @ sk_C ) ) )
   <= ( sk_B = k1_xboole_0 ) ),
    inference('sup+',[status(thm)],['106','107'])).

thf('109',plain,(
    ! [X17: $i,X18: $i,X19: $i] :
      ( ~ ( zip_tseitin_0 @ X17 @ X18 )
      | ( zip_tseitin_1 @ X19 @ X17 @ X18 )
      | ~ ( m1_subset_1 @ X19 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X18 @ X17 ) ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_5])).

thf('110',plain,
    ( ( ( zip_tseitin_1 @ sk_E @ sk_C @ k1_xboole_0 )
      | ~ ( zip_tseitin_0 @ sk_C @ k1_xboole_0 ) )
   <= ( sk_B = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['108','109'])).

thf('111',plain,(
    ! [X12: $i,X13: $i] :
      ( ( zip_tseitin_0 @ X12 @ X13 )
      | ( X13 != k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('112',plain,(
    ! [X12: $i] :
      ( zip_tseitin_0 @ X12 @ k1_xboole_0 ) ),
    inference(simplify,[status(thm)],['111'])).

thf('113',plain,
    ( ( zip_tseitin_1 @ sk_E @ sk_C @ k1_xboole_0 )
   <= ( sk_B = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['110','112'])).

thf('114',plain,
    ( ( m1_subset_1 @ sk_E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ k1_xboole_0 @ sk_C ) ) )
   <= ( sk_B = k1_xboole_0 ) ),
    inference('sup+',[status(thm)],['106','107'])).

thf('115',plain,(
    ! [X6: $i,X7: $i,X8: $i] :
      ( ( ( k1_relset_1 @ X7 @ X8 @ X6 )
        = ( k1_relat_1 @ X6 ) )
      | ~ ( m1_subset_1 @ X6 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X7 @ X8 ) ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k1_relset_1])).

thf('116',plain,
    ( ( ( k1_relset_1 @ k1_xboole_0 @ sk_C @ sk_E )
      = ( k1_relat_1 @ sk_E ) )
   <= ( sk_B = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['114','115'])).

thf('117',plain,
    ( ( k1_xboole_0
      = ( k1_relat_1 @ sk_E ) )
   <= ( sk_B = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['105','113','116'])).

thf('118',plain,(
    v1_funct_1 @ sk_D ),
    inference(cnf,[status(esa)],[zf_stmt_1])).

thf('119',plain,(
    v1_relat_1 @ sk_D ),
    inference(demod,[status(thm)],['40','41'])).

thf('120',plain,
    ( ( ( k1_xboole_0 != k1_xboole_0 )
      | ( v2_funct_1 @ sk_D ) )
   <= ( sk_B = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['96','97','98','99','100','117','118','119'])).

thf('121',plain,
    ( ( v2_funct_1 @ sk_D )
   <= ( sk_B = k1_xboole_0 ) ),
    inference(simplify,[status(thm)],['120'])).

thf('122',plain,
    ( ~ ( v2_funct_1 @ sk_D )
   <= ~ ( v2_funct_1 @ sk_D ) ),
    inference(split,[status(esa)],['44'])).

thf('123',plain,
    ( ( sk_B != k1_xboole_0 )
    | ( v2_funct_1 @ sk_D ) ),
    inference('sup-',[status(thm)],['121','122'])).

thf('124',plain,
    ( ( sk_C != k1_xboole_0 )
    | ( sk_B = k1_xboole_0 ) ),
    inference(split,[status(esa)],['52'])).

thf('125',plain,
    ( ~ ( v2_funct_1 @ sk_E )
    | ~ ( v2_funct_1 @ sk_D ) ),
    inference(split,[status(esa)],['44'])).

thf('126',plain,(
    ~ ( v2_funct_1 @ sk_E ) ),
    inference('sat_resolution*',[status(thm)],['76','123','124','125'])).

thf('127',plain,(
    ~ ( v2_funct_1 @ sk_E ) ),
    inference(simpl_trail,[status(thm)],['45','126'])).

thf('128',plain,(
    sk_B
 != ( k1_relat_1 @ sk_E ) ),
    inference(clc,[status(thm)],['43','127'])).

thf('129',plain,
    ( ( sk_B != sk_B )
    | ( sk_C = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['12','128'])).

thf('130',plain,(
    sk_C = k1_xboole_0 ),
    inference(simplify,[status(thm)],['129'])).

thf('131',plain,
    ( ( sk_C != k1_xboole_0 )
   <= ( sk_C != k1_xboole_0 ) ),
    inference(split,[status(esa)],['52'])).

thf('132',plain,
    ( ( v2_funct_1 @ ( k5_relat_1 @ sk_D @ sk_E ) )
   <= ( sk_B = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['81','93'])).

thf('133',plain,(
    ! [X4: $i,X5: $i] :
      ( ~ ( v1_relat_1 @ X4 )
      | ~ ( v1_funct_1 @ X4 )
      | ( v2_funct_1 @ X5 )
      | ( ( k2_relat_1 @ X4 )
       != ( k1_relat_1 @ X5 ) )
      | ~ ( v2_funct_1 @ ( k5_relat_1 @ X4 @ X5 ) )
      | ~ ( v1_funct_1 @ X5 )
      | ~ ( v1_relat_1 @ X5 ) ) ),
    inference(cnf,[status(esa)],[t48_funct_1])).

thf('134',plain,
    ( ( ~ ( v1_relat_1 @ sk_E )
      | ~ ( v1_funct_1 @ sk_E )
      | ( ( k2_relat_1 @ sk_D )
       != ( k1_relat_1 @ sk_E ) )
      | ( v2_funct_1 @ sk_E )
      | ~ ( v1_funct_1 @ sk_D )
      | ~ ( v1_relat_1 @ sk_D ) )
   <= ( sk_B = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['132','133'])).

thf('135',plain,(
    v1_relat_1 @ sk_E ),
    inference(demod,[status(thm)],['28','29'])).

thf('136',plain,(
    v1_funct_1 @ sk_E ),
    inference(cnf,[status(esa)],[zf_stmt_1])).

thf('137',plain,
    ( ( k2_relat_1 @ sk_D )
    = sk_B ),
    inference('sup+',[status(thm)],['34','35'])).

thf('138',plain,
    ( ( sk_B = k1_xboole_0 )
   <= ( sk_B = k1_xboole_0 ) ),
    inference(split,[status(esa)],['52'])).

thf('139',plain,
    ( ( k1_xboole_0
      = ( k1_relat_1 @ sk_E ) )
   <= ( sk_B = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['105','113','116'])).

thf('140',plain,(
    v1_funct_1 @ sk_D ),
    inference(cnf,[status(esa)],[zf_stmt_1])).

thf('141',plain,(
    v1_relat_1 @ sk_D ),
    inference(demod,[status(thm)],['40','41'])).

thf('142',plain,
    ( ( ( k1_xboole_0 != k1_xboole_0 )
      | ( v2_funct_1 @ sk_E ) )
   <= ( sk_B = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['134','135','136','137','138','139','140','141'])).

thf('143',plain,
    ( ( v2_funct_1 @ sk_E )
   <= ( sk_B = k1_xboole_0 ) ),
    inference(simplify,[status(thm)],['142'])).

thf('144',plain,
    ( ~ ( v2_funct_1 @ sk_E )
   <= ~ ( v2_funct_1 @ sk_E ) ),
    inference(split,[status(esa)],['44'])).

thf('145',plain,
    ( ( sk_B != k1_xboole_0 )
    | ( v2_funct_1 @ sk_E ) ),
    inference('sup-',[status(thm)],['143','144'])).

thf('146',plain,(
    sk_C != k1_xboole_0 ),
    inference('sat_resolution*',[status(thm)],['76','123','125','145','124'])).

thf('147',plain,(
    sk_C != k1_xboole_0 ),
    inference(simpl_trail,[status(thm)],['131','146'])).

thf('148',plain,(
    $false ),
    inference('simplify_reflect-',[status(thm)],['130','147'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.vJADaw89sX
% 0.13/0.34  % Computer   : n016.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 10:12:04 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running portfolio for 600 s
% 0.13/0.34  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.13/0.34  % Number of cores: 8
% 0.13/0.34  % Python version: Python 3.6.8
% 0.13/0.35  % Running in FO mode
% 3.61/3.81  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 3.61/3.81  % Solved by: fo/fo7.sh
% 3.61/3.81  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 3.61/3.81  % done 3292 iterations in 3.354s
% 3.61/3.81  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 3.61/3.81  % SZS output start Refutation
% 3.61/3.81  thf(v2_funct_1_type, type, v2_funct_1: $i > $o).
% 3.61/3.81  thf(sk_E_type, type, sk_E: $i).
% 3.61/3.81  thf(k2_relset_1_type, type, k2_relset_1: $i > $i > $i > $i).
% 3.61/3.81  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 3.61/3.81  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 3.61/3.81  thf(sk_D_type, type, sk_D: $i).
% 3.61/3.81  thf(v1_funct_1_type, type, v1_funct_1: $i > $o).
% 3.61/3.81  thf(k5_relat_1_type, type, k5_relat_1: $i > $i > $i).
% 3.61/3.81  thf(zip_tseitin_0_type, type, zip_tseitin_0: $i > $i > $o).
% 3.61/3.81  thf(sk_A_type, type, sk_A: $i).
% 3.61/3.81  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 3.61/3.81  thf(zip_tseitin_1_type, type, zip_tseitin_1: $i > $i > $i > $o).
% 3.61/3.81  thf(k2_zfmisc_1_type, type, k2_zfmisc_1: $i > $i > $i).
% 3.61/3.81  thf(sk_C_type, type, sk_C: $i).
% 3.61/3.81  thf(k2_relat_1_type, type, k2_relat_1: $i > $i).
% 3.61/3.81  thf(k1_partfun1_type, type, k1_partfun1: $i > $i > $i > $i > $i > $i > $i).
% 3.61/3.81  thf(k1_relset_1_type, type, k1_relset_1: $i > $i > $i > $i).
% 3.61/3.81  thf(sk_B_type, type, sk_B: $i).
% 3.61/3.81  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 3.61/3.81  thf(v1_funct_2_type, type, v1_funct_2: $i > $i > $i > $o).
% 3.61/3.81  thf(k1_relat_1_type, type, k1_relat_1: $i > $i).
% 3.61/3.81  thf(d1_funct_2, axiom,
% 3.61/3.81    (![A:$i,B:$i,C:$i]:
% 3.61/3.81     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 3.61/3.81       ( ( ( ( B ) = ( k1_xboole_0 ) ) =>
% 3.61/3.81           ( ( ( v1_funct_2 @ C @ A @ B ) <=> ( ( C ) = ( k1_xboole_0 ) ) ) | 
% 3.61/3.81             ( ( A ) = ( k1_xboole_0 ) ) ) ) & 
% 3.61/3.81         ( ( ( ( B ) = ( k1_xboole_0 ) ) => ( ( A ) = ( k1_xboole_0 ) ) ) =>
% 3.61/3.81           ( ( v1_funct_2 @ C @ A @ B ) <=>
% 3.61/3.81             ( ( A ) = ( k1_relset_1 @ A @ B @ C ) ) ) ) ) ))).
% 3.61/3.81  thf(zf_stmt_0, axiom,
% 3.61/3.81    (![B:$i,A:$i]:
% 3.61/3.81     ( ( ( ( B ) = ( k1_xboole_0 ) ) => ( ( A ) = ( k1_xboole_0 ) ) ) =>
% 3.61/3.81       ( zip_tseitin_0 @ B @ A ) ))).
% 3.61/3.81  thf('0', plain,
% 3.61/3.81      (![X12 : $i, X13 : $i]:
% 3.61/3.81         ((zip_tseitin_0 @ X12 @ X13) | ((X12) = (k1_xboole_0)))),
% 3.61/3.81      inference('cnf', [status(esa)], [zf_stmt_0])).
% 3.61/3.81  thf(t30_funct_2, conjecture,
% 3.61/3.81    (![A:$i,B:$i,C:$i,D:$i]:
% 3.61/3.81     ( ( ( v1_funct_1 @ D ) & ( v1_funct_2 @ D @ A @ B ) & 
% 3.61/3.81         ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) =>
% 3.61/3.81       ( ![E:$i]:
% 3.61/3.81         ( ( ( v1_funct_1 @ E ) & ( v1_funct_2 @ E @ B @ C ) & 
% 3.61/3.81             ( m1_subset_1 @ E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ C ) ) ) ) =>
% 3.61/3.81           ( ( ( v2_funct_1 @ ( k1_partfun1 @ A @ B @ B @ C @ D @ E ) ) & 
% 3.61/3.81               ( ( k2_relset_1 @ A @ B @ D ) = ( B ) ) ) =>
% 3.61/3.81             ( ( ( ( C ) = ( k1_xboole_0 ) ) & ( ( B ) != ( k1_xboole_0 ) ) ) | 
% 3.61/3.81               ( ( v2_funct_1 @ D ) & ( v2_funct_1 @ E ) ) ) ) ) ) ))).
% 3.61/3.81  thf(zf_stmt_1, negated_conjecture,
% 3.61/3.81    (~( ![A:$i,B:$i,C:$i,D:$i]:
% 3.61/3.81        ( ( ( v1_funct_1 @ D ) & ( v1_funct_2 @ D @ A @ B ) & 
% 3.61/3.81            ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) =>
% 3.61/3.81          ( ![E:$i]:
% 3.61/3.81            ( ( ( v1_funct_1 @ E ) & ( v1_funct_2 @ E @ B @ C ) & 
% 3.61/3.81                ( m1_subset_1 @ E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ C ) ) ) ) =>
% 3.61/3.81              ( ( ( v2_funct_1 @ ( k1_partfun1 @ A @ B @ B @ C @ D @ E ) ) & 
% 3.61/3.81                  ( ( k2_relset_1 @ A @ B @ D ) = ( B ) ) ) =>
% 3.61/3.81                ( ( ( ( C ) = ( k1_xboole_0 ) ) & ( ( B ) != ( k1_xboole_0 ) ) ) | 
% 3.61/3.81                  ( ( v2_funct_1 @ D ) & ( v2_funct_1 @ E ) ) ) ) ) ) ) )),
% 3.61/3.81    inference('cnf.neg', [status(esa)], [t30_funct_2])).
% 3.61/3.81  thf('1', plain,
% 3.61/3.81      ((m1_subset_1 @ sk_E @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B @ sk_C)))),
% 3.61/3.81      inference('cnf', [status(esa)], [zf_stmt_1])).
% 3.61/3.81  thf(zf_stmt_2, type, zip_tseitin_1 : $i > $i > $i > $o).
% 3.61/3.81  thf(zf_stmt_3, axiom,
% 3.61/3.81    (![C:$i,B:$i,A:$i]:
% 3.61/3.81     ( ( zip_tseitin_1 @ C @ B @ A ) =>
% 3.61/3.81       ( ( v1_funct_2 @ C @ A @ B ) <=> ( ( A ) = ( k1_relset_1 @ A @ B @ C ) ) ) ))).
% 3.61/3.81  thf(zf_stmt_4, type, zip_tseitin_0 : $i > $i > $o).
% 3.61/3.81  thf(zf_stmt_5, axiom,
% 3.61/3.81    (![A:$i,B:$i,C:$i]:
% 3.61/3.81     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 3.61/3.81       ( ( ( zip_tseitin_0 @ B @ A ) => ( zip_tseitin_1 @ C @ B @ A ) ) & 
% 3.61/3.81         ( ( ( B ) = ( k1_xboole_0 ) ) =>
% 3.61/3.81           ( ( ( A ) = ( k1_xboole_0 ) ) | 
% 3.61/3.81             ( ( v1_funct_2 @ C @ A @ B ) <=> ( ( C ) = ( k1_xboole_0 ) ) ) ) ) ) ))).
% 3.61/3.81  thf('2', plain,
% 3.61/3.81      (![X17 : $i, X18 : $i, X19 : $i]:
% 3.61/3.81         (~ (zip_tseitin_0 @ X17 @ X18)
% 3.61/3.81          | (zip_tseitin_1 @ X19 @ X17 @ X18)
% 3.61/3.81          | ~ (m1_subset_1 @ X19 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X18 @ X17))))),
% 3.61/3.81      inference('cnf', [status(esa)], [zf_stmt_5])).
% 3.61/3.81  thf('3', plain,
% 3.61/3.81      (((zip_tseitin_1 @ sk_E @ sk_C @ sk_B) | ~ (zip_tseitin_0 @ sk_C @ sk_B))),
% 3.61/3.81      inference('sup-', [status(thm)], ['1', '2'])).
% 3.61/3.81  thf('4', plain,
% 3.61/3.81      ((((sk_C) = (k1_xboole_0)) | (zip_tseitin_1 @ sk_E @ sk_C @ sk_B))),
% 3.61/3.81      inference('sup-', [status(thm)], ['0', '3'])).
% 3.61/3.81  thf('5', plain, ((v1_funct_2 @ sk_E @ sk_B @ sk_C)),
% 3.61/3.81      inference('cnf', [status(esa)], [zf_stmt_1])).
% 3.61/3.81  thf('6', plain,
% 3.61/3.81      (![X14 : $i, X15 : $i, X16 : $i]:
% 3.61/3.81         (~ (v1_funct_2 @ X16 @ X14 @ X15)
% 3.61/3.81          | ((X14) = (k1_relset_1 @ X14 @ X15 @ X16))
% 3.61/3.81          | ~ (zip_tseitin_1 @ X16 @ X15 @ X14))),
% 3.61/3.81      inference('cnf', [status(esa)], [zf_stmt_3])).
% 3.61/3.81  thf('7', plain,
% 3.61/3.81      ((~ (zip_tseitin_1 @ sk_E @ sk_C @ sk_B)
% 3.61/3.81        | ((sk_B) = (k1_relset_1 @ sk_B @ sk_C @ sk_E)))),
% 3.61/3.81      inference('sup-', [status(thm)], ['5', '6'])).
% 3.61/3.81  thf('8', plain,
% 3.61/3.81      ((m1_subset_1 @ sk_E @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B @ sk_C)))),
% 3.61/3.81      inference('cnf', [status(esa)], [zf_stmt_1])).
% 3.61/3.81  thf(redefinition_k1_relset_1, axiom,
% 3.61/3.81    (![A:$i,B:$i,C:$i]:
% 3.61/3.81     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 3.61/3.81       ( ( k1_relset_1 @ A @ B @ C ) = ( k1_relat_1 @ C ) ) ))).
% 3.61/3.81  thf('9', plain,
% 3.61/3.81      (![X6 : $i, X7 : $i, X8 : $i]:
% 3.61/3.81         (((k1_relset_1 @ X7 @ X8 @ X6) = (k1_relat_1 @ X6))
% 3.61/3.81          | ~ (m1_subset_1 @ X6 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X7 @ X8))))),
% 3.61/3.81      inference('cnf', [status(esa)], [redefinition_k1_relset_1])).
% 3.61/3.81  thf('10', plain,
% 3.61/3.81      (((k1_relset_1 @ sk_B @ sk_C @ sk_E) = (k1_relat_1 @ sk_E))),
% 3.61/3.81      inference('sup-', [status(thm)], ['8', '9'])).
% 3.61/3.81  thf('11', plain,
% 3.61/3.81      ((~ (zip_tseitin_1 @ sk_E @ sk_C @ sk_B) | ((sk_B) = (k1_relat_1 @ sk_E)))),
% 3.61/3.81      inference('demod', [status(thm)], ['7', '10'])).
% 3.61/3.81  thf('12', plain,
% 3.61/3.81      ((((sk_C) = (k1_xboole_0)) | ((sk_B) = (k1_relat_1 @ sk_E)))),
% 3.61/3.81      inference('sup-', [status(thm)], ['4', '11'])).
% 3.61/3.81  thf('13', plain,
% 3.61/3.81      ((v2_funct_1 @ (k1_partfun1 @ sk_A @ sk_B @ sk_B @ sk_C @ sk_D @ sk_E))),
% 3.61/3.81      inference('cnf', [status(esa)], [zf_stmt_1])).
% 3.61/3.81  thf('14', plain,
% 3.61/3.81      ((m1_subset_1 @ sk_E @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B @ sk_C)))),
% 3.61/3.81      inference('cnf', [status(esa)], [zf_stmt_1])).
% 3.61/3.81  thf('15', plain,
% 3.61/3.81      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 3.61/3.81      inference('cnf', [status(esa)], [zf_stmt_1])).
% 3.61/3.81  thf(redefinition_k1_partfun1, axiom,
% 3.61/3.81    (![A:$i,B:$i,C:$i,D:$i,E:$i,F:$i]:
% 3.61/3.81     ( ( ( v1_funct_1 @ E ) & 
% 3.61/3.81         ( m1_subset_1 @ E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) & 
% 3.61/3.81         ( v1_funct_1 @ F ) & 
% 3.61/3.81         ( m1_subset_1 @ F @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ D ) ) ) ) =>
% 3.61/3.81       ( ( k1_partfun1 @ A @ B @ C @ D @ E @ F ) = ( k5_relat_1 @ E @ F ) ) ))).
% 3.61/3.81  thf('16', plain,
% 3.61/3.81      (![X20 : $i, X21 : $i, X22 : $i, X23 : $i, X24 : $i, X25 : $i]:
% 3.61/3.81         (~ (m1_subset_1 @ X20 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X21 @ X22)))
% 3.61/3.81          | ~ (v1_funct_1 @ X20)
% 3.61/3.81          | ~ (v1_funct_1 @ X23)
% 3.61/3.81          | ~ (m1_subset_1 @ X23 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X24 @ X25)))
% 3.61/3.81          | ((k1_partfun1 @ X21 @ X22 @ X24 @ X25 @ X20 @ X23)
% 3.61/3.81              = (k5_relat_1 @ X20 @ X23)))),
% 3.61/3.81      inference('cnf', [status(esa)], [redefinition_k1_partfun1])).
% 3.61/3.81  thf('17', plain,
% 3.61/3.81      (![X0 : $i, X1 : $i, X2 : $i]:
% 3.61/3.81         (((k1_partfun1 @ sk_A @ sk_B @ X2 @ X1 @ sk_D @ X0)
% 3.61/3.81            = (k5_relat_1 @ sk_D @ X0))
% 3.61/3.81          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X2 @ X1)))
% 3.61/3.81          | ~ (v1_funct_1 @ X0)
% 3.61/3.81          | ~ (v1_funct_1 @ sk_D))),
% 3.61/3.81      inference('sup-', [status(thm)], ['15', '16'])).
% 3.61/3.81  thf('18', plain, ((v1_funct_1 @ sk_D)),
% 3.61/3.81      inference('cnf', [status(esa)], [zf_stmt_1])).
% 3.61/3.81  thf('19', plain,
% 3.61/3.81      (![X0 : $i, X1 : $i, X2 : $i]:
% 3.61/3.81         (((k1_partfun1 @ sk_A @ sk_B @ X2 @ X1 @ sk_D @ X0)
% 3.61/3.81            = (k5_relat_1 @ sk_D @ X0))
% 3.61/3.81          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X2 @ X1)))
% 3.61/3.81          | ~ (v1_funct_1 @ X0))),
% 3.61/3.81      inference('demod', [status(thm)], ['17', '18'])).
% 3.61/3.81  thf('20', plain,
% 3.61/3.81      ((~ (v1_funct_1 @ sk_E)
% 3.61/3.81        | ((k1_partfun1 @ sk_A @ sk_B @ sk_B @ sk_C @ sk_D @ sk_E)
% 3.61/3.81            = (k5_relat_1 @ sk_D @ sk_E)))),
% 3.61/3.81      inference('sup-', [status(thm)], ['14', '19'])).
% 3.61/3.81  thf('21', plain, ((v1_funct_1 @ sk_E)),
% 3.61/3.81      inference('cnf', [status(esa)], [zf_stmt_1])).
% 3.61/3.81  thf('22', plain,
% 3.61/3.81      (((k1_partfun1 @ sk_A @ sk_B @ sk_B @ sk_C @ sk_D @ sk_E)
% 3.61/3.81         = (k5_relat_1 @ sk_D @ sk_E))),
% 3.61/3.81      inference('demod', [status(thm)], ['20', '21'])).
% 3.61/3.81  thf('23', plain, ((v2_funct_1 @ (k5_relat_1 @ sk_D @ sk_E))),
% 3.61/3.81      inference('demod', [status(thm)], ['13', '22'])).
% 3.61/3.81  thf(t48_funct_1, axiom,
% 3.61/3.81    (![A:$i]:
% 3.61/3.81     ( ( ( v1_relat_1 @ A ) & ( v1_funct_1 @ A ) ) =>
% 3.61/3.81       ( ![B:$i]:
% 3.61/3.81         ( ( ( v1_relat_1 @ B ) & ( v1_funct_1 @ B ) ) =>
% 3.61/3.81           ( ( ( v2_funct_1 @ ( k5_relat_1 @ B @ A ) ) & 
% 3.61/3.81               ( ( k2_relat_1 @ B ) = ( k1_relat_1 @ A ) ) ) =>
% 3.61/3.81             ( ( v2_funct_1 @ B ) & ( v2_funct_1 @ A ) ) ) ) ) ))).
% 3.61/3.81  thf('24', plain,
% 3.61/3.81      (![X4 : $i, X5 : $i]:
% 3.61/3.81         (~ (v1_relat_1 @ X4)
% 3.61/3.81          | ~ (v1_funct_1 @ X4)
% 3.61/3.81          | (v2_funct_1 @ X5)
% 3.61/3.81          | ((k2_relat_1 @ X4) != (k1_relat_1 @ X5))
% 3.61/3.81          | ~ (v2_funct_1 @ (k5_relat_1 @ X4 @ X5))
% 3.61/3.81          | ~ (v1_funct_1 @ X5)
% 3.61/3.81          | ~ (v1_relat_1 @ X5))),
% 3.61/3.81      inference('cnf', [status(esa)], [t48_funct_1])).
% 3.61/3.81  thf('25', plain,
% 3.61/3.81      ((~ (v1_relat_1 @ sk_E)
% 3.61/3.81        | ~ (v1_funct_1 @ sk_E)
% 3.61/3.81        | ((k2_relat_1 @ sk_D) != (k1_relat_1 @ sk_E))
% 3.61/3.81        | (v2_funct_1 @ sk_E)
% 3.61/3.81        | ~ (v1_funct_1 @ sk_D)
% 3.61/3.81        | ~ (v1_relat_1 @ sk_D))),
% 3.61/3.81      inference('sup-', [status(thm)], ['23', '24'])).
% 3.61/3.81  thf('26', plain,
% 3.61/3.81      ((m1_subset_1 @ sk_E @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B @ sk_C)))),
% 3.61/3.81      inference('cnf', [status(esa)], [zf_stmt_1])).
% 3.61/3.81  thf(cc2_relat_1, axiom,
% 3.61/3.81    (![A:$i]:
% 3.61/3.81     ( ( v1_relat_1 @ A ) =>
% 3.61/3.81       ( ![B:$i]:
% 3.61/3.81         ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) ) => ( v1_relat_1 @ B ) ) ) ))).
% 3.61/3.81  thf('27', plain,
% 3.61/3.81      (![X0 : $i, X1 : $i]:
% 3.61/3.81         (~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ X1))
% 3.61/3.81          | (v1_relat_1 @ X0)
% 3.61/3.81          | ~ (v1_relat_1 @ X1))),
% 3.61/3.81      inference('cnf', [status(esa)], [cc2_relat_1])).
% 3.61/3.81  thf('28', plain,
% 3.61/3.81      ((~ (v1_relat_1 @ (k2_zfmisc_1 @ sk_B @ sk_C)) | (v1_relat_1 @ sk_E))),
% 3.61/3.81      inference('sup-', [status(thm)], ['26', '27'])).
% 3.61/3.81  thf(fc6_relat_1, axiom,
% 3.61/3.81    (![A:$i,B:$i]: ( v1_relat_1 @ ( k2_zfmisc_1 @ A @ B ) ))).
% 3.61/3.81  thf('29', plain,
% 3.61/3.81      (![X2 : $i, X3 : $i]: (v1_relat_1 @ (k2_zfmisc_1 @ X2 @ X3))),
% 3.61/3.81      inference('cnf', [status(esa)], [fc6_relat_1])).
% 3.61/3.81  thf('30', plain, ((v1_relat_1 @ sk_E)),
% 3.61/3.81      inference('demod', [status(thm)], ['28', '29'])).
% 3.61/3.81  thf('31', plain, ((v1_funct_1 @ sk_E)),
% 3.61/3.81      inference('cnf', [status(esa)], [zf_stmt_1])).
% 3.61/3.81  thf('32', plain,
% 3.61/3.81      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 3.61/3.81      inference('cnf', [status(esa)], [zf_stmt_1])).
% 3.61/3.81  thf(redefinition_k2_relset_1, axiom,
% 3.61/3.81    (![A:$i,B:$i,C:$i]:
% 3.61/3.81     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 3.61/3.81       ( ( k2_relset_1 @ A @ B @ C ) = ( k2_relat_1 @ C ) ) ))).
% 3.61/3.81  thf('33', plain,
% 3.61/3.81      (![X9 : $i, X10 : $i, X11 : $i]:
% 3.61/3.81         (((k2_relset_1 @ X10 @ X11 @ X9) = (k2_relat_1 @ X9))
% 3.61/3.81          | ~ (m1_subset_1 @ X9 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X10 @ X11))))),
% 3.61/3.81      inference('cnf', [status(esa)], [redefinition_k2_relset_1])).
% 3.61/3.81  thf('34', plain,
% 3.61/3.81      (((k2_relset_1 @ sk_A @ sk_B @ sk_D) = (k2_relat_1 @ sk_D))),
% 3.61/3.81      inference('sup-', [status(thm)], ['32', '33'])).
% 3.61/3.81  thf('35', plain, (((k2_relset_1 @ sk_A @ sk_B @ sk_D) = (sk_B))),
% 3.61/3.81      inference('cnf', [status(esa)], [zf_stmt_1])).
% 3.61/3.81  thf('36', plain, (((k2_relat_1 @ sk_D) = (sk_B))),
% 3.61/3.81      inference('sup+', [status(thm)], ['34', '35'])).
% 3.61/3.81  thf('37', plain, ((v1_funct_1 @ sk_D)),
% 3.61/3.81      inference('cnf', [status(esa)], [zf_stmt_1])).
% 3.61/3.81  thf('38', plain,
% 3.61/3.81      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 3.61/3.81      inference('cnf', [status(esa)], [zf_stmt_1])).
% 3.61/3.81  thf('39', plain,
% 3.61/3.81      (![X0 : $i, X1 : $i]:
% 3.61/3.81         (~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ X1))
% 3.61/3.81          | (v1_relat_1 @ X0)
% 3.61/3.81          | ~ (v1_relat_1 @ X1))),
% 3.61/3.81      inference('cnf', [status(esa)], [cc2_relat_1])).
% 3.61/3.81  thf('40', plain,
% 3.61/3.81      ((~ (v1_relat_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)) | (v1_relat_1 @ sk_D))),
% 3.61/3.81      inference('sup-', [status(thm)], ['38', '39'])).
% 3.61/3.81  thf('41', plain,
% 3.61/3.81      (![X2 : $i, X3 : $i]: (v1_relat_1 @ (k2_zfmisc_1 @ X2 @ X3))),
% 3.61/3.81      inference('cnf', [status(esa)], [fc6_relat_1])).
% 3.61/3.81  thf('42', plain, ((v1_relat_1 @ sk_D)),
% 3.61/3.81      inference('demod', [status(thm)], ['40', '41'])).
% 3.61/3.81  thf('43', plain, ((((sk_B) != (k1_relat_1 @ sk_E)) | (v2_funct_1 @ sk_E))),
% 3.61/3.81      inference('demod', [status(thm)], ['25', '30', '31', '36', '37', '42'])).
% 3.61/3.81  thf('44', plain, ((~ (v2_funct_1 @ sk_D) | ~ (v2_funct_1 @ sk_E))),
% 3.61/3.81      inference('cnf', [status(esa)], [zf_stmt_1])).
% 3.61/3.81  thf('45', plain, ((~ (v2_funct_1 @ sk_E)) <= (~ ((v2_funct_1 @ sk_E)))),
% 3.61/3.81      inference('split', [status(esa)], ['44'])).
% 3.61/3.81  thf('46', plain,
% 3.61/3.81      (![X12 : $i, X13 : $i]:
% 3.61/3.81         ((zip_tseitin_0 @ X12 @ X13) | ((X12) = (k1_xboole_0)))),
% 3.61/3.81      inference('cnf', [status(esa)], [zf_stmt_0])).
% 3.61/3.81  thf('47', plain,
% 3.61/3.81      (![X12 : $i, X13 : $i]:
% 3.61/3.81         ((zip_tseitin_0 @ X12 @ X13) | ((X12) = (k1_xboole_0)))),
% 3.61/3.81      inference('cnf', [status(esa)], [zf_stmt_0])).
% 3.61/3.81  thf('48', plain,
% 3.61/3.81      (![X12 : $i, X13 : $i]:
% 3.61/3.81         ((zip_tseitin_0 @ X12 @ X13) | ((X12) = (k1_xboole_0)))),
% 3.61/3.81      inference('cnf', [status(esa)], [zf_stmt_0])).
% 3.61/3.81  thf('49', plain,
% 3.61/3.81      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 3.61/3.81         (((X1) = (X0)) | (zip_tseitin_0 @ X0 @ X3) | (zip_tseitin_0 @ X1 @ X2))),
% 3.61/3.81      inference('sup+', [status(thm)], ['47', '48'])).
% 3.61/3.81  thf('50', plain,
% 3.61/3.81      (((zip_tseitin_1 @ sk_E @ sk_C @ sk_B) | ~ (zip_tseitin_0 @ sk_C @ sk_B))),
% 3.61/3.81      inference('sup-', [status(thm)], ['1', '2'])).
% 3.61/3.81  thf('51', plain,
% 3.61/3.81      (![X0 : $i, X1 : $i]:
% 3.61/3.81         ((zip_tseitin_0 @ X1 @ X0)
% 3.61/3.81          | ((sk_C) = (X1))
% 3.61/3.81          | (zip_tseitin_1 @ sk_E @ sk_C @ sk_B))),
% 3.61/3.81      inference('sup-', [status(thm)], ['49', '50'])).
% 3.61/3.81  thf('52', plain, ((((sk_C) != (k1_xboole_0)) | ((sk_B) = (k1_xboole_0)))),
% 3.61/3.81      inference('cnf', [status(esa)], [zf_stmt_1])).
% 3.61/3.81  thf('53', plain,
% 3.61/3.81      ((((sk_C) != (k1_xboole_0))) <= (~ (((sk_C) = (k1_xboole_0))))),
% 3.61/3.81      inference('split', [status(esa)], ['52'])).
% 3.61/3.81  thf('54', plain,
% 3.61/3.81      ((![X0 : $i, X1 : $i]:
% 3.61/3.81          (((X0) != (k1_xboole_0))
% 3.61/3.81           | (zip_tseitin_1 @ sk_E @ sk_C @ sk_B)
% 3.61/3.81           | (zip_tseitin_0 @ X0 @ X1)))
% 3.61/3.81         <= (~ (((sk_C) = (k1_xboole_0))))),
% 3.61/3.81      inference('sup-', [status(thm)], ['51', '53'])).
% 3.61/3.81  thf('55', plain,
% 3.61/3.81      ((![X1 : $i]:
% 3.61/3.81          ((zip_tseitin_0 @ k1_xboole_0 @ X1)
% 3.61/3.81           | (zip_tseitin_1 @ sk_E @ sk_C @ sk_B)))
% 3.61/3.81         <= (~ (((sk_C) = (k1_xboole_0))))),
% 3.61/3.81      inference('simplify', [status(thm)], ['54'])).
% 3.61/3.81  thf('56', plain,
% 3.61/3.81      ((~ (zip_tseitin_1 @ sk_E @ sk_C @ sk_B) | ((sk_B) = (k1_relat_1 @ sk_E)))),
% 3.61/3.81      inference('demod', [status(thm)], ['7', '10'])).
% 3.61/3.81  thf('57', plain,
% 3.61/3.81      ((![X0 : $i]:
% 3.61/3.81          ((zip_tseitin_0 @ k1_xboole_0 @ X0) | ((sk_B) = (k1_relat_1 @ sk_E))))
% 3.61/3.81         <= (~ (((sk_C) = (k1_xboole_0))))),
% 3.61/3.81      inference('sup-', [status(thm)], ['55', '56'])).
% 3.61/3.81  thf('58', plain,
% 3.61/3.81      ((![X0 : $i, X1 : $i, X2 : $i]:
% 3.61/3.81          ((zip_tseitin_0 @ X0 @ X1)
% 3.61/3.81           | (zip_tseitin_0 @ X0 @ X2)
% 3.61/3.81           | ((sk_B) = (k1_relat_1 @ sk_E))))
% 3.61/3.81         <= (~ (((sk_C) = (k1_xboole_0))))),
% 3.61/3.81      inference('sup+', [status(thm)], ['46', '57'])).
% 3.61/3.81  thf('59', plain,
% 3.61/3.81      ((![X0 : $i, X1 : $i]:
% 3.61/3.81          (((sk_B) = (k1_relat_1 @ sk_E)) | (zip_tseitin_0 @ X1 @ X0)))
% 3.61/3.81         <= (~ (((sk_C) = (k1_xboole_0))))),
% 3.61/3.81      inference('condensation', [status(thm)], ['58'])).
% 3.61/3.81  thf('60', plain,
% 3.61/3.81      (((zip_tseitin_1 @ sk_E @ sk_C @ sk_B) | ~ (zip_tseitin_0 @ sk_C @ sk_B))),
% 3.61/3.81      inference('sup-', [status(thm)], ['1', '2'])).
% 3.61/3.81  thf('61', plain,
% 3.61/3.81      (((((sk_B) = (k1_relat_1 @ sk_E)) | (zip_tseitin_1 @ sk_E @ sk_C @ sk_B)))
% 3.61/3.81         <= (~ (((sk_C) = (k1_xboole_0))))),
% 3.61/3.81      inference('sup-', [status(thm)], ['59', '60'])).
% 3.61/3.81  thf('62', plain,
% 3.61/3.81      ((~ (zip_tseitin_1 @ sk_E @ sk_C @ sk_B) | ((sk_B) = (k1_relat_1 @ sk_E)))),
% 3.61/3.81      inference('demod', [status(thm)], ['7', '10'])).
% 3.61/3.81  thf('63', plain,
% 3.61/3.81      ((((sk_B) = (k1_relat_1 @ sk_E))) <= (~ (((sk_C) = (k1_xboole_0))))),
% 3.61/3.81      inference('clc', [status(thm)], ['61', '62'])).
% 3.61/3.81  thf('64', plain, ((v2_funct_1 @ (k5_relat_1 @ sk_D @ sk_E))),
% 3.61/3.81      inference('demod', [status(thm)], ['13', '22'])).
% 3.61/3.81  thf('65', plain,
% 3.61/3.81      (![X4 : $i, X5 : $i]:
% 3.61/3.81         (~ (v1_relat_1 @ X4)
% 3.61/3.81          | ~ (v1_funct_1 @ X4)
% 3.61/3.81          | (v2_funct_1 @ X4)
% 3.61/3.81          | ((k2_relat_1 @ X4) != (k1_relat_1 @ X5))
% 3.61/3.81          | ~ (v2_funct_1 @ (k5_relat_1 @ X4 @ X5))
% 3.61/3.81          | ~ (v1_funct_1 @ X5)
% 3.61/3.81          | ~ (v1_relat_1 @ X5))),
% 3.61/3.81      inference('cnf', [status(esa)], [t48_funct_1])).
% 3.61/3.81  thf('66', plain,
% 3.61/3.81      ((~ (v1_relat_1 @ sk_E)
% 3.61/3.81        | ~ (v1_funct_1 @ sk_E)
% 3.61/3.81        | ((k2_relat_1 @ sk_D) != (k1_relat_1 @ sk_E))
% 3.61/3.81        | (v2_funct_1 @ sk_D)
% 3.61/3.81        | ~ (v1_funct_1 @ sk_D)
% 3.61/3.81        | ~ (v1_relat_1 @ sk_D))),
% 3.61/3.81      inference('sup-', [status(thm)], ['64', '65'])).
% 3.61/3.81  thf('67', plain, ((v1_relat_1 @ sk_E)),
% 3.61/3.81      inference('demod', [status(thm)], ['28', '29'])).
% 3.61/3.81  thf('68', plain, ((v1_funct_1 @ sk_E)),
% 3.61/3.81      inference('cnf', [status(esa)], [zf_stmt_1])).
% 3.61/3.81  thf('69', plain, (((k2_relat_1 @ sk_D) = (sk_B))),
% 3.61/3.81      inference('sup+', [status(thm)], ['34', '35'])).
% 3.61/3.81  thf('70', plain, ((v1_funct_1 @ sk_D)),
% 3.61/3.81      inference('cnf', [status(esa)], [zf_stmt_1])).
% 3.61/3.81  thf('71', plain, ((v1_relat_1 @ sk_D)),
% 3.61/3.81      inference('demod', [status(thm)], ['40', '41'])).
% 3.61/3.81  thf('72', plain, ((((sk_B) != (k1_relat_1 @ sk_E)) | (v2_funct_1 @ sk_D))),
% 3.61/3.81      inference('demod', [status(thm)], ['66', '67', '68', '69', '70', '71'])).
% 3.61/3.81  thf('73', plain,
% 3.61/3.81      (((((sk_B) != (sk_B)) | (v2_funct_1 @ sk_D)))
% 3.61/3.81         <= (~ (((sk_C) = (k1_xboole_0))))),
% 3.61/3.81      inference('sup-', [status(thm)], ['63', '72'])).
% 3.61/3.81  thf('74', plain, (((v2_funct_1 @ sk_D)) <= (~ (((sk_C) = (k1_xboole_0))))),
% 3.61/3.81      inference('simplify', [status(thm)], ['73'])).
% 3.61/3.81  thf('75', plain, ((~ (v2_funct_1 @ sk_D)) <= (~ ((v2_funct_1 @ sk_D)))),
% 3.61/3.81      inference('split', [status(esa)], ['44'])).
% 3.61/3.81  thf('76', plain, (((v2_funct_1 @ sk_D)) | (((sk_C) = (k1_xboole_0)))),
% 3.61/3.81      inference('sup-', [status(thm)], ['74', '75'])).
% 3.61/3.81  thf('77', plain,
% 3.61/3.81      ((((sk_B) = (k1_xboole_0))) <= ((((sk_B) = (k1_xboole_0))))),
% 3.61/3.81      inference('split', [status(esa)], ['52'])).
% 3.61/3.81  thf('78', plain,
% 3.61/3.81      ((v2_funct_1 @ (k1_partfun1 @ sk_A @ sk_B @ sk_B @ sk_C @ sk_D @ sk_E))),
% 3.61/3.81      inference('cnf', [status(esa)], [zf_stmt_1])).
% 3.61/3.81  thf('79', plain,
% 3.61/3.81      (((v2_funct_1 @ 
% 3.61/3.81         (k1_partfun1 @ sk_A @ k1_xboole_0 @ sk_B @ sk_C @ sk_D @ sk_E)))
% 3.61/3.81         <= ((((sk_B) = (k1_xboole_0))))),
% 3.61/3.81      inference('sup+', [status(thm)], ['77', '78'])).
% 3.61/3.81  thf('80', plain,
% 3.61/3.81      ((((sk_B) = (k1_xboole_0))) <= ((((sk_B) = (k1_xboole_0))))),
% 3.61/3.81      inference('split', [status(esa)], ['52'])).
% 3.61/3.81  thf('81', plain,
% 3.61/3.81      (((v2_funct_1 @ 
% 3.61/3.81         (k1_partfun1 @ sk_A @ k1_xboole_0 @ k1_xboole_0 @ sk_C @ sk_D @ sk_E)))
% 3.61/3.81         <= ((((sk_B) = (k1_xboole_0))))),
% 3.61/3.81      inference('demod', [status(thm)], ['79', '80'])).
% 3.61/3.81  thf('82', plain,
% 3.61/3.81      ((m1_subset_1 @ sk_E @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B @ sk_C)))),
% 3.61/3.81      inference('cnf', [status(esa)], [zf_stmt_1])).
% 3.61/3.81  thf('83', plain,
% 3.61/3.81      ((((sk_B) = (k1_xboole_0))) <= ((((sk_B) = (k1_xboole_0))))),
% 3.61/3.81      inference('split', [status(esa)], ['52'])).
% 3.61/3.81  thf('84', plain,
% 3.61/3.81      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 3.61/3.81      inference('cnf', [status(esa)], [zf_stmt_1])).
% 3.61/3.81  thf('85', plain,
% 3.61/3.81      (((m1_subset_1 @ sk_D @ 
% 3.61/3.81         (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ k1_xboole_0))))
% 3.61/3.81         <= ((((sk_B) = (k1_xboole_0))))),
% 3.61/3.81      inference('sup+', [status(thm)], ['83', '84'])).
% 3.61/3.81  thf('86', plain,
% 3.61/3.81      (![X20 : $i, X21 : $i, X22 : $i, X23 : $i, X24 : $i, X25 : $i]:
% 3.61/3.81         (~ (m1_subset_1 @ X20 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X21 @ X22)))
% 3.61/3.81          | ~ (v1_funct_1 @ X20)
% 3.61/3.81          | ~ (v1_funct_1 @ X23)
% 3.61/3.81          | ~ (m1_subset_1 @ X23 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X24 @ X25)))
% 3.61/3.81          | ((k1_partfun1 @ X21 @ X22 @ X24 @ X25 @ X20 @ X23)
% 3.61/3.81              = (k5_relat_1 @ X20 @ X23)))),
% 3.61/3.81      inference('cnf', [status(esa)], [redefinition_k1_partfun1])).
% 3.61/3.81  thf('87', plain,
% 3.61/3.81      ((![X0 : $i, X1 : $i, X2 : $i]:
% 3.61/3.81          (((k1_partfun1 @ sk_A @ k1_xboole_0 @ X2 @ X1 @ sk_D @ X0)
% 3.61/3.81             = (k5_relat_1 @ sk_D @ X0))
% 3.61/3.81           | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X2 @ X1)))
% 3.61/3.81           | ~ (v1_funct_1 @ X0)
% 3.61/3.81           | ~ (v1_funct_1 @ sk_D)))
% 3.61/3.81         <= ((((sk_B) = (k1_xboole_0))))),
% 3.61/3.81      inference('sup-', [status(thm)], ['85', '86'])).
% 3.61/3.81  thf('88', plain, ((v1_funct_1 @ sk_D)),
% 3.61/3.81      inference('cnf', [status(esa)], [zf_stmt_1])).
% 3.61/3.81  thf('89', plain,
% 3.61/3.81      ((![X0 : $i, X1 : $i, X2 : $i]:
% 3.61/3.81          (((k1_partfun1 @ sk_A @ k1_xboole_0 @ X2 @ X1 @ sk_D @ X0)
% 3.61/3.81             = (k5_relat_1 @ sk_D @ X0))
% 3.61/3.81           | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X2 @ X1)))
% 3.61/3.81           | ~ (v1_funct_1 @ X0)))
% 3.61/3.81         <= ((((sk_B) = (k1_xboole_0))))),
% 3.61/3.81      inference('demod', [status(thm)], ['87', '88'])).
% 3.61/3.81  thf('90', plain,
% 3.61/3.81      (((~ (v1_funct_1 @ sk_E)
% 3.61/3.81         | ((k1_partfun1 @ sk_A @ k1_xboole_0 @ sk_B @ sk_C @ sk_D @ sk_E)
% 3.61/3.81             = (k5_relat_1 @ sk_D @ sk_E))))
% 3.61/3.81         <= ((((sk_B) = (k1_xboole_0))))),
% 3.61/3.81      inference('sup-', [status(thm)], ['82', '89'])).
% 3.61/3.81  thf('91', plain, ((v1_funct_1 @ sk_E)),
% 3.61/3.81      inference('cnf', [status(esa)], [zf_stmt_1])).
% 3.61/3.81  thf('92', plain,
% 3.61/3.81      ((((sk_B) = (k1_xboole_0))) <= ((((sk_B) = (k1_xboole_0))))),
% 3.61/3.81      inference('split', [status(esa)], ['52'])).
% 3.61/3.81  thf('93', plain,
% 3.61/3.81      ((((k1_partfun1 @ sk_A @ k1_xboole_0 @ k1_xboole_0 @ sk_C @ sk_D @ sk_E)
% 3.61/3.81          = (k5_relat_1 @ sk_D @ sk_E)))
% 3.61/3.81         <= ((((sk_B) = (k1_xboole_0))))),
% 3.61/3.81      inference('demod', [status(thm)], ['90', '91', '92'])).
% 3.61/3.81  thf('94', plain,
% 3.61/3.81      (((v2_funct_1 @ (k5_relat_1 @ sk_D @ sk_E)))
% 3.61/3.81         <= ((((sk_B) = (k1_xboole_0))))),
% 3.61/3.81      inference('demod', [status(thm)], ['81', '93'])).
% 3.61/3.81  thf('95', plain,
% 3.61/3.81      (![X4 : $i, X5 : $i]:
% 3.61/3.81         (~ (v1_relat_1 @ X4)
% 3.61/3.81          | ~ (v1_funct_1 @ X4)
% 3.61/3.81          | (v2_funct_1 @ X4)
% 3.61/3.81          | ((k2_relat_1 @ X4) != (k1_relat_1 @ X5))
% 3.61/3.81          | ~ (v2_funct_1 @ (k5_relat_1 @ X4 @ X5))
% 3.61/3.81          | ~ (v1_funct_1 @ X5)
% 3.61/3.81          | ~ (v1_relat_1 @ X5))),
% 3.61/3.81      inference('cnf', [status(esa)], [t48_funct_1])).
% 3.61/3.81  thf('96', plain,
% 3.61/3.81      (((~ (v1_relat_1 @ sk_E)
% 3.61/3.81         | ~ (v1_funct_1 @ sk_E)
% 3.61/3.81         | ((k2_relat_1 @ sk_D) != (k1_relat_1 @ sk_E))
% 3.61/3.81         | (v2_funct_1 @ sk_D)
% 3.61/3.81         | ~ (v1_funct_1 @ sk_D)
% 3.61/3.81         | ~ (v1_relat_1 @ sk_D))) <= ((((sk_B) = (k1_xboole_0))))),
% 3.61/3.81      inference('sup-', [status(thm)], ['94', '95'])).
% 3.61/3.81  thf('97', plain, ((v1_relat_1 @ sk_E)),
% 3.61/3.81      inference('demod', [status(thm)], ['28', '29'])).
% 3.61/3.81  thf('98', plain, ((v1_funct_1 @ sk_E)),
% 3.61/3.81      inference('cnf', [status(esa)], [zf_stmt_1])).
% 3.61/3.81  thf('99', plain, (((k2_relat_1 @ sk_D) = (sk_B))),
% 3.61/3.81      inference('sup+', [status(thm)], ['34', '35'])).
% 3.61/3.81  thf('100', plain,
% 3.61/3.81      ((((sk_B) = (k1_xboole_0))) <= ((((sk_B) = (k1_xboole_0))))),
% 3.61/3.81      inference('split', [status(esa)], ['52'])).
% 3.61/3.81  thf('101', plain,
% 3.61/3.81      ((((sk_B) = (k1_xboole_0))) <= ((((sk_B) = (k1_xboole_0))))),
% 3.61/3.81      inference('split', [status(esa)], ['52'])).
% 3.61/3.81  thf('102', plain, ((v1_funct_2 @ sk_E @ sk_B @ sk_C)),
% 3.61/3.81      inference('cnf', [status(esa)], [zf_stmt_1])).
% 3.61/3.81  thf('103', plain,
% 3.61/3.81      (((v1_funct_2 @ sk_E @ k1_xboole_0 @ sk_C))
% 3.61/3.81         <= ((((sk_B) = (k1_xboole_0))))),
% 3.61/3.81      inference('sup+', [status(thm)], ['101', '102'])).
% 3.61/3.81  thf('104', plain,
% 3.61/3.81      (![X14 : $i, X15 : $i, X16 : $i]:
% 3.61/3.81         (~ (v1_funct_2 @ X16 @ X14 @ X15)
% 3.61/3.81          | ((X14) = (k1_relset_1 @ X14 @ X15 @ X16))
% 3.61/3.81          | ~ (zip_tseitin_1 @ X16 @ X15 @ X14))),
% 3.61/3.81      inference('cnf', [status(esa)], [zf_stmt_3])).
% 3.61/3.81  thf('105', plain,
% 3.61/3.81      (((~ (zip_tseitin_1 @ sk_E @ sk_C @ k1_xboole_0)
% 3.61/3.81         | ((k1_xboole_0) = (k1_relset_1 @ k1_xboole_0 @ sk_C @ sk_E))))
% 3.61/3.81         <= ((((sk_B) = (k1_xboole_0))))),
% 3.61/3.81      inference('sup-', [status(thm)], ['103', '104'])).
% 3.61/3.81  thf('106', plain,
% 3.61/3.81      ((((sk_B) = (k1_xboole_0))) <= ((((sk_B) = (k1_xboole_0))))),
% 3.61/3.81      inference('split', [status(esa)], ['52'])).
% 3.61/3.81  thf('107', plain,
% 3.61/3.81      ((m1_subset_1 @ sk_E @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B @ sk_C)))),
% 3.61/3.81      inference('cnf', [status(esa)], [zf_stmt_1])).
% 3.61/3.81  thf('108', plain,
% 3.61/3.81      (((m1_subset_1 @ sk_E @ 
% 3.61/3.81         (k1_zfmisc_1 @ (k2_zfmisc_1 @ k1_xboole_0 @ sk_C))))
% 3.61/3.81         <= ((((sk_B) = (k1_xboole_0))))),
% 3.61/3.81      inference('sup+', [status(thm)], ['106', '107'])).
% 3.61/3.81  thf('109', plain,
% 3.61/3.81      (![X17 : $i, X18 : $i, X19 : $i]:
% 3.61/3.81         (~ (zip_tseitin_0 @ X17 @ X18)
% 3.61/3.81          | (zip_tseitin_1 @ X19 @ X17 @ X18)
% 3.61/3.81          | ~ (m1_subset_1 @ X19 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X18 @ X17))))),
% 3.61/3.81      inference('cnf', [status(esa)], [zf_stmt_5])).
% 3.61/3.81  thf('110', plain,
% 3.61/3.81      ((((zip_tseitin_1 @ sk_E @ sk_C @ k1_xboole_0)
% 3.61/3.81         | ~ (zip_tseitin_0 @ sk_C @ k1_xboole_0)))
% 3.61/3.81         <= ((((sk_B) = (k1_xboole_0))))),
% 3.61/3.81      inference('sup-', [status(thm)], ['108', '109'])).
% 3.61/3.81  thf('111', plain,
% 3.61/3.81      (![X12 : $i, X13 : $i]:
% 3.61/3.81         ((zip_tseitin_0 @ X12 @ X13) | ((X13) != (k1_xboole_0)))),
% 3.61/3.81      inference('cnf', [status(esa)], [zf_stmt_0])).
% 3.61/3.81  thf('112', plain, (![X12 : $i]: (zip_tseitin_0 @ X12 @ k1_xboole_0)),
% 3.61/3.81      inference('simplify', [status(thm)], ['111'])).
% 3.61/3.81  thf('113', plain,
% 3.61/3.81      (((zip_tseitin_1 @ sk_E @ sk_C @ k1_xboole_0))
% 3.61/3.81         <= ((((sk_B) = (k1_xboole_0))))),
% 3.61/3.81      inference('demod', [status(thm)], ['110', '112'])).
% 3.61/3.81  thf('114', plain,
% 3.61/3.81      (((m1_subset_1 @ sk_E @ 
% 3.61/3.81         (k1_zfmisc_1 @ (k2_zfmisc_1 @ k1_xboole_0 @ sk_C))))
% 3.61/3.81         <= ((((sk_B) = (k1_xboole_0))))),
% 3.61/3.81      inference('sup+', [status(thm)], ['106', '107'])).
% 3.61/3.81  thf('115', plain,
% 3.61/3.81      (![X6 : $i, X7 : $i, X8 : $i]:
% 3.61/3.81         (((k1_relset_1 @ X7 @ X8 @ X6) = (k1_relat_1 @ X6))
% 3.61/3.81          | ~ (m1_subset_1 @ X6 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X7 @ X8))))),
% 3.61/3.81      inference('cnf', [status(esa)], [redefinition_k1_relset_1])).
% 3.61/3.81  thf('116', plain,
% 3.61/3.81      ((((k1_relset_1 @ k1_xboole_0 @ sk_C @ sk_E) = (k1_relat_1 @ sk_E)))
% 3.61/3.81         <= ((((sk_B) = (k1_xboole_0))))),
% 3.61/3.81      inference('sup-', [status(thm)], ['114', '115'])).
% 3.61/3.81  thf('117', plain,
% 3.61/3.81      ((((k1_xboole_0) = (k1_relat_1 @ sk_E))) <= ((((sk_B) = (k1_xboole_0))))),
% 3.61/3.81      inference('demod', [status(thm)], ['105', '113', '116'])).
% 3.61/3.81  thf('118', plain, ((v1_funct_1 @ sk_D)),
% 3.61/3.81      inference('cnf', [status(esa)], [zf_stmt_1])).
% 3.61/3.81  thf('119', plain, ((v1_relat_1 @ sk_D)),
% 3.61/3.81      inference('demod', [status(thm)], ['40', '41'])).
% 3.61/3.81  thf('120', plain,
% 3.61/3.81      (((((k1_xboole_0) != (k1_xboole_0)) | (v2_funct_1 @ sk_D)))
% 3.61/3.81         <= ((((sk_B) = (k1_xboole_0))))),
% 3.61/3.81      inference('demod', [status(thm)],
% 3.61/3.81                ['96', '97', '98', '99', '100', '117', '118', '119'])).
% 3.61/3.81  thf('121', plain, (((v2_funct_1 @ sk_D)) <= ((((sk_B) = (k1_xboole_0))))),
% 3.61/3.81      inference('simplify', [status(thm)], ['120'])).
% 3.61/3.81  thf('122', plain, ((~ (v2_funct_1 @ sk_D)) <= (~ ((v2_funct_1 @ sk_D)))),
% 3.61/3.81      inference('split', [status(esa)], ['44'])).
% 3.61/3.81  thf('123', plain, (~ (((sk_B) = (k1_xboole_0))) | ((v2_funct_1 @ sk_D))),
% 3.61/3.81      inference('sup-', [status(thm)], ['121', '122'])).
% 3.61/3.81  thf('124', plain,
% 3.61/3.81      (~ (((sk_C) = (k1_xboole_0))) | (((sk_B) = (k1_xboole_0)))),
% 3.61/3.81      inference('split', [status(esa)], ['52'])).
% 3.61/3.81  thf('125', plain, (~ ((v2_funct_1 @ sk_E)) | ~ ((v2_funct_1 @ sk_D))),
% 3.61/3.81      inference('split', [status(esa)], ['44'])).
% 3.61/3.81  thf('126', plain, (~ ((v2_funct_1 @ sk_E))),
% 3.61/3.81      inference('sat_resolution*', [status(thm)], ['76', '123', '124', '125'])).
% 3.61/3.81  thf('127', plain, (~ (v2_funct_1 @ sk_E)),
% 3.61/3.81      inference('simpl_trail', [status(thm)], ['45', '126'])).
% 3.61/3.81  thf('128', plain, (((sk_B) != (k1_relat_1 @ sk_E))),
% 3.61/3.81      inference('clc', [status(thm)], ['43', '127'])).
% 3.61/3.81  thf('129', plain, ((((sk_B) != (sk_B)) | ((sk_C) = (k1_xboole_0)))),
% 3.61/3.81      inference('sup-', [status(thm)], ['12', '128'])).
% 3.61/3.81  thf('130', plain, (((sk_C) = (k1_xboole_0))),
% 3.61/3.81      inference('simplify', [status(thm)], ['129'])).
% 3.61/3.81  thf('131', plain,
% 3.61/3.81      ((((sk_C) != (k1_xboole_0))) <= (~ (((sk_C) = (k1_xboole_0))))),
% 3.61/3.81      inference('split', [status(esa)], ['52'])).
% 3.61/3.81  thf('132', plain,
% 3.61/3.81      (((v2_funct_1 @ (k5_relat_1 @ sk_D @ sk_E)))
% 3.61/3.81         <= ((((sk_B) = (k1_xboole_0))))),
% 3.61/3.81      inference('demod', [status(thm)], ['81', '93'])).
% 3.61/3.81  thf('133', plain,
% 3.61/3.81      (![X4 : $i, X5 : $i]:
% 3.61/3.81         (~ (v1_relat_1 @ X4)
% 3.61/3.81          | ~ (v1_funct_1 @ X4)
% 3.61/3.81          | (v2_funct_1 @ X5)
% 3.61/3.81          | ((k2_relat_1 @ X4) != (k1_relat_1 @ X5))
% 3.61/3.81          | ~ (v2_funct_1 @ (k5_relat_1 @ X4 @ X5))
% 3.61/3.81          | ~ (v1_funct_1 @ X5)
% 3.61/3.81          | ~ (v1_relat_1 @ X5))),
% 3.61/3.81      inference('cnf', [status(esa)], [t48_funct_1])).
% 3.61/3.81  thf('134', plain,
% 3.61/3.81      (((~ (v1_relat_1 @ sk_E)
% 3.61/3.81         | ~ (v1_funct_1 @ sk_E)
% 3.61/3.81         | ((k2_relat_1 @ sk_D) != (k1_relat_1 @ sk_E))
% 3.61/3.81         | (v2_funct_1 @ sk_E)
% 3.61/3.81         | ~ (v1_funct_1 @ sk_D)
% 3.61/3.81         | ~ (v1_relat_1 @ sk_D))) <= ((((sk_B) = (k1_xboole_0))))),
% 3.61/3.81      inference('sup-', [status(thm)], ['132', '133'])).
% 3.61/3.81  thf('135', plain, ((v1_relat_1 @ sk_E)),
% 3.61/3.81      inference('demod', [status(thm)], ['28', '29'])).
% 3.61/3.81  thf('136', plain, ((v1_funct_1 @ sk_E)),
% 3.61/3.81      inference('cnf', [status(esa)], [zf_stmt_1])).
% 3.61/3.81  thf('137', plain, (((k2_relat_1 @ sk_D) = (sk_B))),
% 3.61/3.81      inference('sup+', [status(thm)], ['34', '35'])).
% 3.61/3.81  thf('138', plain,
% 3.61/3.81      ((((sk_B) = (k1_xboole_0))) <= ((((sk_B) = (k1_xboole_0))))),
% 3.61/3.81      inference('split', [status(esa)], ['52'])).
% 3.61/3.81  thf('139', plain,
% 3.61/3.81      ((((k1_xboole_0) = (k1_relat_1 @ sk_E))) <= ((((sk_B) = (k1_xboole_0))))),
% 3.61/3.81      inference('demod', [status(thm)], ['105', '113', '116'])).
% 3.61/3.81  thf('140', plain, ((v1_funct_1 @ sk_D)),
% 3.61/3.81      inference('cnf', [status(esa)], [zf_stmt_1])).
% 3.61/3.81  thf('141', plain, ((v1_relat_1 @ sk_D)),
% 3.61/3.81      inference('demod', [status(thm)], ['40', '41'])).
% 3.61/3.81  thf('142', plain,
% 3.61/3.81      (((((k1_xboole_0) != (k1_xboole_0)) | (v2_funct_1 @ sk_E)))
% 3.61/3.81         <= ((((sk_B) = (k1_xboole_0))))),
% 3.61/3.81      inference('demod', [status(thm)],
% 3.61/3.81                ['134', '135', '136', '137', '138', '139', '140', '141'])).
% 3.61/3.81  thf('143', plain, (((v2_funct_1 @ sk_E)) <= ((((sk_B) = (k1_xboole_0))))),
% 3.61/3.81      inference('simplify', [status(thm)], ['142'])).
% 3.61/3.81  thf('144', plain, ((~ (v2_funct_1 @ sk_E)) <= (~ ((v2_funct_1 @ sk_E)))),
% 3.61/3.81      inference('split', [status(esa)], ['44'])).
% 3.61/3.81  thf('145', plain, (~ (((sk_B) = (k1_xboole_0))) | ((v2_funct_1 @ sk_E))),
% 3.61/3.81      inference('sup-', [status(thm)], ['143', '144'])).
% 3.61/3.81  thf('146', plain, (~ (((sk_C) = (k1_xboole_0)))),
% 3.61/3.81      inference('sat_resolution*', [status(thm)],
% 3.61/3.81                ['76', '123', '125', '145', '124'])).
% 3.61/3.81  thf('147', plain, (((sk_C) != (k1_xboole_0))),
% 3.61/3.81      inference('simpl_trail', [status(thm)], ['131', '146'])).
% 3.61/3.81  thf('148', plain, ($false),
% 3.61/3.81      inference('simplify_reflect-', [status(thm)], ['130', '147'])).
% 3.61/3.81  
% 3.61/3.81  % SZS output end Refutation
% 3.61/3.81  
% 3.63/3.82  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
