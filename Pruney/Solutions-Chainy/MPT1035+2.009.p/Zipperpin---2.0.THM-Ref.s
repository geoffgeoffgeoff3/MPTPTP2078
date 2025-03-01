%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.MlHVnwmgjh

% Computer   : n001.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:59:13 EST 2020

% Result     : Theorem 1.96s
% Output     : Refutation 1.96s
% Verified   : 
% Statistics : Number of formulae       :  216 (3120 expanded)
%              Number of leaves         :   34 ( 877 expanded)
%              Depth                    :   31
%              Number of atoms          : 2130 (59739 expanded)
%              Number of equality atoms :  179 (4577 expanded)
%              Maximal formula depth    :   16 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(k1_funct_1_type,type,(
    k1_funct_1: $i > $i > $i )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(k1_relat_1_type,type,(
    k1_relat_1: $i > $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(zip_tseitin_1_type,type,(
    zip_tseitin_1: $i > $i > $i > $o )).

thf(sk_D_type,type,(
    sk_D: $i )).

thf(v1_funct_2_type,type,(
    v1_funct_2: $i > $i > $i > $o )).

thf(sk_E_type,type,(
    sk_E: $i )).

thf(v1_funct_1_type,type,(
    v1_funct_1: $i > $o )).

thf(sk_C_1_type,type,(
    sk_C_1: $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(sk_C_type,type,(
    sk_C: $i > $i > $i )).

thf(zip_tseitin_0_type,type,(
    zip_tseitin_0: $i > $i > $o )).

thf(k1_relset_1_type,type,(
    k1_relset_1: $i > $i > $i > $i )).

thf(r1_partfun1_type,type,(
    r1_partfun1: $i > $i > $o )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k2_zfmisc_1_type,type,(
    k2_zfmisc_1: $i > $i > $i )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(t145_funct_2,conjecture,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( v1_funct_1 @ C )
        & ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) )
     => ! [D: $i] :
          ( ( ( v1_funct_1 @ D )
            & ( v1_funct_2 @ D @ A @ B )
            & ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) )
         => ( ( ( B = k1_xboole_0 )
             => ( A = k1_xboole_0 ) )
           => ( ( r1_partfun1 @ C @ D )
            <=> ! [E: $i] :
                  ( ( r2_hidden @ E @ ( k1_relset_1 @ A @ B @ C ) )
                 => ( ( k1_funct_1 @ C @ E )
                    = ( k1_funct_1 @ D @ E ) ) ) ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i] :
        ( ( ( v1_funct_1 @ C )
          & ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) )
       => ! [D: $i] :
            ( ( ( v1_funct_1 @ D )
              & ( v1_funct_2 @ D @ A @ B )
              & ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) )
           => ( ( ( B = k1_xboole_0 )
               => ( A = k1_xboole_0 ) )
             => ( ( r1_partfun1 @ C @ D )
              <=> ! [E: $i] :
                    ( ( r2_hidden @ E @ ( k1_relset_1 @ A @ B @ C ) )
                   => ( ( k1_funct_1 @ C @ E )
                      = ( k1_funct_1 @ D @ E ) ) ) ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t145_funct_2])).

thf('0',plain,
    ( ( r2_hidden @ sk_E @ ( k1_relset_1 @ sk_A @ sk_B @ sk_C_1 ) )
    | ~ ( r1_partfun1 @ sk_C_1 @ sk_D ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,
    ( ( r2_hidden @ sk_E @ ( k1_relset_1 @ sk_A @ sk_B @ sk_C_1 ) )
   <= ( r2_hidden @ sk_E @ ( k1_relset_1 @ sk_A @ sk_B @ sk_C_1 ) ) ),
    inference(split,[status(esa)],['0'])).

thf('2',plain,(
    m1_subset_1 @ sk_C_1 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(redefinition_k1_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( k1_relset_1 @ A @ B @ C )
        = ( k1_relat_1 @ C ) ) ) )).

thf('3',plain,(
    ! [X10: $i,X11: $i,X12: $i] :
      ( ( ( k1_relset_1 @ X11 @ X12 @ X10 )
        = ( k1_relat_1 @ X10 ) )
      | ~ ( m1_subset_1 @ X10 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X11 @ X12 ) ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k1_relset_1])).

thf('4',plain,
    ( ( k1_relset_1 @ sk_A @ sk_B @ sk_C_1 )
    = ( k1_relat_1 @ sk_C_1 ) ),
    inference('sup-',[status(thm)],['2','3'])).

thf('5',plain,
    ( ( r2_hidden @ sk_E @ ( k1_relat_1 @ sk_C_1 ) )
   <= ( r2_hidden @ sk_E @ ( k1_relset_1 @ sk_A @ sk_B @ sk_C_1 ) ) ),
    inference(demod,[status(thm)],['1','4'])).

thf('6',plain,
    ( ( sk_A = k1_xboole_0 )
    | ( sk_B != k1_xboole_0 ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('7',plain,
    ( ( sk_A = k1_xboole_0 )
   <= ( sk_A = k1_xboole_0 ) ),
    inference(split,[status(esa)],['6'])).

thf('8',plain,(
    m1_subset_1 @ sk_C_1 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('9',plain,
    ( ( m1_subset_1 @ sk_C_1 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ k1_xboole_0 @ sk_B ) ) )
   <= ( sk_A = k1_xboole_0 ) ),
    inference('sup+',[status(thm)],['7','8'])).

thf(dt_k1_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( m1_subset_1 @ ( k1_relset_1 @ A @ B @ C ) @ ( k1_zfmisc_1 @ A ) ) ) )).

thf('10',plain,(
    ! [X7: $i,X8: $i,X9: $i] :
      ( ( m1_subset_1 @ ( k1_relset_1 @ X7 @ X8 @ X9 ) @ ( k1_zfmisc_1 @ X7 ) )
      | ~ ( m1_subset_1 @ X9 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X7 @ X8 ) ) ) ) ),
    inference(cnf,[status(esa)],[dt_k1_relset_1])).

thf('11',plain,
    ( ( m1_subset_1 @ ( k1_relset_1 @ k1_xboole_0 @ sk_B @ sk_C_1 ) @ ( k1_zfmisc_1 @ k1_xboole_0 ) )
   <= ( sk_A = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['9','10'])).

thf(t3_subset,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ A @ ( k1_zfmisc_1 @ B ) )
    <=> ( r1_tarski @ A @ B ) ) )).

thf('12',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r1_tarski @ X0 @ X1 )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ X1 ) ) ) ),
    inference(cnf,[status(esa)],[t3_subset])).

thf('13',plain,
    ( ( r1_tarski @ ( k1_relset_1 @ k1_xboole_0 @ sk_B @ sk_C_1 ) @ k1_xboole_0 )
   <= ( sk_A = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['11','12'])).

thf('14',plain,
    ( ( m1_subset_1 @ sk_C_1 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ k1_xboole_0 @ sk_B ) ) )
   <= ( sk_A = k1_xboole_0 ) ),
    inference('sup+',[status(thm)],['7','8'])).

thf('15',plain,(
    ! [X10: $i,X11: $i,X12: $i] :
      ( ( ( k1_relset_1 @ X11 @ X12 @ X10 )
        = ( k1_relat_1 @ X10 ) )
      | ~ ( m1_subset_1 @ X10 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X11 @ X12 ) ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k1_relset_1])).

thf('16',plain,
    ( ( ( k1_relset_1 @ k1_xboole_0 @ sk_B @ sk_C_1 )
      = ( k1_relat_1 @ sk_C_1 ) )
   <= ( sk_A = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['14','15'])).

thf('17',plain,
    ( ( r1_tarski @ ( k1_relat_1 @ sk_C_1 ) @ k1_xboole_0 )
   <= ( sk_A = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['13','16'])).

thf('18',plain,
    ( ( sk_A = k1_xboole_0 )
   <= ( sk_A = k1_xboole_0 ) ),
    inference(split,[status(esa)],['6'])).

thf('19',plain,(
    v1_funct_2 @ sk_D @ sk_A @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('20',plain,
    ( ( v1_funct_2 @ sk_D @ k1_xboole_0 @ sk_B )
   <= ( sk_A = k1_xboole_0 ) ),
    inference('sup+',[status(thm)],['18','19'])).

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

thf(zf_stmt_1,axiom,(
    ! [C: $i,B: $i,A: $i] :
      ( ( zip_tseitin_1 @ C @ B @ A )
     => ( ( v1_funct_2 @ C @ A @ B )
      <=> ( A
          = ( k1_relset_1 @ A @ B @ C ) ) ) ) )).

thf('21',plain,(
    ! [X15: $i,X16: $i,X17: $i] :
      ( ~ ( v1_funct_2 @ X17 @ X15 @ X16 )
      | ( X15
        = ( k1_relset_1 @ X15 @ X16 @ X17 ) )
      | ~ ( zip_tseitin_1 @ X17 @ X16 @ X15 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_1])).

thf('22',plain,
    ( ( ~ ( zip_tseitin_1 @ sk_D @ sk_B @ k1_xboole_0 )
      | ( k1_xboole_0
        = ( k1_relset_1 @ k1_xboole_0 @ sk_B @ sk_D ) ) )
   <= ( sk_A = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['20','21'])).

thf('23',plain,
    ( ( sk_A = k1_xboole_0 )
   <= ( sk_A = k1_xboole_0 ) ),
    inference(split,[status(esa)],['6'])).

thf('24',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('25',plain,
    ( ( m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ k1_xboole_0 @ sk_B ) ) )
   <= ( sk_A = k1_xboole_0 ) ),
    inference('sup+',[status(thm)],['23','24'])).

thf('26',plain,(
    ! [X10: $i,X11: $i,X12: $i] :
      ( ( ( k1_relset_1 @ X11 @ X12 @ X10 )
        = ( k1_relat_1 @ X10 ) )
      | ~ ( m1_subset_1 @ X10 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X11 @ X12 ) ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k1_relset_1])).

thf('27',plain,
    ( ( ( k1_relset_1 @ k1_xboole_0 @ sk_B @ sk_D )
      = ( k1_relat_1 @ sk_D ) )
   <= ( sk_A = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['25','26'])).

thf('28',plain,
    ( ( ~ ( zip_tseitin_1 @ sk_D @ sk_B @ k1_xboole_0 )
      | ( k1_xboole_0
        = ( k1_relat_1 @ sk_D ) ) )
   <= ( sk_A = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['22','27'])).

thf('29',plain,
    ( ( m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ k1_xboole_0 @ sk_B ) ) )
   <= ( sk_A = k1_xboole_0 ) ),
    inference('sup+',[status(thm)],['23','24'])).

thf(zf_stmt_2,type,(
    zip_tseitin_1: $i > $i > $i > $o )).

thf(zf_stmt_3,type,(
    zip_tseitin_0: $i > $i > $o )).

thf(zf_stmt_4,axiom,(
    ! [B: $i,A: $i] :
      ( ( ( B = k1_xboole_0 )
       => ( A = k1_xboole_0 ) )
     => ( zip_tseitin_0 @ B @ A ) ) )).

thf(zf_stmt_5,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( ( zip_tseitin_0 @ B @ A )
         => ( zip_tseitin_1 @ C @ B @ A ) )
        & ( ( B = k1_xboole_0 )
         => ( ( A = k1_xboole_0 )
            | ( ( v1_funct_2 @ C @ A @ B )
            <=> ( C = k1_xboole_0 ) ) ) ) ) ) )).

thf('30',plain,(
    ! [X18: $i,X19: $i,X20: $i] :
      ( ~ ( zip_tseitin_0 @ X18 @ X19 )
      | ( zip_tseitin_1 @ X20 @ X18 @ X19 )
      | ~ ( m1_subset_1 @ X20 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X19 @ X18 ) ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_5])).

thf('31',plain,
    ( ( ( zip_tseitin_1 @ sk_D @ sk_B @ k1_xboole_0 )
      | ~ ( zip_tseitin_0 @ sk_B @ k1_xboole_0 ) )
   <= ( sk_A = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['29','30'])).

thf('32',plain,(
    ! [X13: $i,X14: $i] :
      ( ( zip_tseitin_0 @ X13 @ X14 )
      | ( X14 != k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_4])).

thf('33',plain,(
    ! [X13: $i] :
      ( zip_tseitin_0 @ X13 @ k1_xboole_0 ) ),
    inference(simplify,[status(thm)],['32'])).

thf('34',plain,
    ( ( zip_tseitin_1 @ sk_D @ sk_B @ k1_xboole_0 )
   <= ( sk_A = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['31','33'])).

thf('35',plain,
    ( ( k1_xboole_0
      = ( k1_relat_1 @ sk_D ) )
   <= ( sk_A = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['28','34'])).

thf(t132_partfun1,axiom,(
    ! [A: $i] :
      ( ( ( v1_relat_1 @ A )
        & ( v1_funct_1 @ A ) )
     => ! [B: $i] :
          ( ( ( v1_relat_1 @ B )
            & ( v1_funct_1 @ B ) )
         => ( ( r1_tarski @ ( k1_relat_1 @ A ) @ ( k1_relat_1 @ B ) )
           => ( ( r1_partfun1 @ A @ B )
            <=> ! [C: $i] :
                  ( ( r2_hidden @ C @ ( k1_relat_1 @ A ) )
                 => ( ( k1_funct_1 @ A @ C )
                    = ( k1_funct_1 @ B @ C ) ) ) ) ) ) ) )).

thf('36',plain,(
    ! [X21: $i,X22: $i] :
      ( ~ ( v1_relat_1 @ X21 )
      | ~ ( v1_funct_1 @ X21 )
      | ( r2_hidden @ ( sk_C @ X21 @ X22 ) @ ( k1_relat_1 @ X22 ) )
      | ( r1_partfun1 @ X22 @ X21 )
      | ~ ( r1_tarski @ ( k1_relat_1 @ X22 ) @ ( k1_relat_1 @ X21 ) )
      | ~ ( v1_funct_1 @ X22 )
      | ~ ( v1_relat_1 @ X22 ) ) ),
    inference(cnf,[status(esa)],[t132_partfun1])).

thf('37',plain,
    ( ! [X0: $i] :
        ( ~ ( r1_tarski @ ( k1_relat_1 @ X0 ) @ k1_xboole_0 )
        | ~ ( v1_relat_1 @ X0 )
        | ~ ( v1_funct_1 @ X0 )
        | ( r1_partfun1 @ X0 @ sk_D )
        | ( r2_hidden @ ( sk_C @ sk_D @ X0 ) @ ( k1_relat_1 @ X0 ) )
        | ~ ( v1_funct_1 @ sk_D )
        | ~ ( v1_relat_1 @ sk_D ) )
   <= ( sk_A = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['35','36'])).

thf('38',plain,(
    v1_funct_1 @ sk_D ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('39',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(cc2_relat_1,axiom,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ! [B: $i] :
          ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) )
         => ( v1_relat_1 @ B ) ) ) )).

thf('40',plain,(
    ! [X3: $i,X4: $i] :
      ( ~ ( m1_subset_1 @ X3 @ ( k1_zfmisc_1 @ X4 ) )
      | ( v1_relat_1 @ X3 )
      | ~ ( v1_relat_1 @ X4 ) ) ),
    inference(cnf,[status(esa)],[cc2_relat_1])).

thf('41',plain,
    ( ~ ( v1_relat_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) )
    | ( v1_relat_1 @ sk_D ) ),
    inference('sup-',[status(thm)],['39','40'])).

thf(fc6_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( v1_relat_1 @ ( k2_zfmisc_1 @ A @ B ) ) )).

thf('42',plain,(
    ! [X5: $i,X6: $i] :
      ( v1_relat_1 @ ( k2_zfmisc_1 @ X5 @ X6 ) ) ),
    inference(cnf,[status(esa)],[fc6_relat_1])).

thf('43',plain,(
    v1_relat_1 @ sk_D ),
    inference(demod,[status(thm)],['41','42'])).

thf('44',plain,
    ( ! [X0: $i] :
        ( ~ ( r1_tarski @ ( k1_relat_1 @ X0 ) @ k1_xboole_0 )
        | ~ ( v1_relat_1 @ X0 )
        | ~ ( v1_funct_1 @ X0 )
        | ( r1_partfun1 @ X0 @ sk_D )
        | ( r2_hidden @ ( sk_C @ sk_D @ X0 ) @ ( k1_relat_1 @ X0 ) ) )
   <= ( sk_A = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['37','38','43'])).

thf('45',plain,
    ( ( ( r2_hidden @ ( sk_C @ sk_D @ sk_C_1 ) @ ( k1_relat_1 @ sk_C_1 ) )
      | ( r1_partfun1 @ sk_C_1 @ sk_D )
      | ~ ( v1_funct_1 @ sk_C_1 )
      | ~ ( v1_relat_1 @ sk_C_1 ) )
   <= ( sk_A = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['17','44'])).

thf('46',plain,(
    v1_funct_1 @ sk_C_1 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('47',plain,(
    m1_subset_1 @ sk_C_1 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('48',plain,(
    ! [X3: $i,X4: $i] :
      ( ~ ( m1_subset_1 @ X3 @ ( k1_zfmisc_1 @ X4 ) )
      | ( v1_relat_1 @ X3 )
      | ~ ( v1_relat_1 @ X4 ) ) ),
    inference(cnf,[status(esa)],[cc2_relat_1])).

thf('49',plain,
    ( ~ ( v1_relat_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) )
    | ( v1_relat_1 @ sk_C_1 ) ),
    inference('sup-',[status(thm)],['47','48'])).

thf('50',plain,(
    ! [X5: $i,X6: $i] :
      ( v1_relat_1 @ ( k2_zfmisc_1 @ X5 @ X6 ) ) ),
    inference(cnf,[status(esa)],[fc6_relat_1])).

thf('51',plain,(
    v1_relat_1 @ sk_C_1 ),
    inference(demod,[status(thm)],['49','50'])).

thf('52',plain,
    ( ( ( r2_hidden @ ( sk_C @ sk_D @ sk_C_1 ) @ ( k1_relat_1 @ sk_C_1 ) )
      | ( r1_partfun1 @ sk_C_1 @ sk_D ) )
   <= ( sk_A = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['45','46','51'])).

thf('53',plain,(
    ! [X24: $i] :
      ( ~ ( r2_hidden @ X24 @ ( k1_relset_1 @ sk_A @ sk_B @ sk_C_1 ) )
      | ( ( k1_funct_1 @ sk_C_1 @ X24 )
        = ( k1_funct_1 @ sk_D @ X24 ) )
      | ( r1_partfun1 @ sk_C_1 @ sk_D ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('54',plain,
    ( ( k1_relset_1 @ sk_A @ sk_B @ sk_C_1 )
    = ( k1_relat_1 @ sk_C_1 ) ),
    inference('sup-',[status(thm)],['2','3'])).

thf('55',plain,(
    ! [X24: $i] :
      ( ~ ( r2_hidden @ X24 @ ( k1_relat_1 @ sk_C_1 ) )
      | ( ( k1_funct_1 @ sk_C_1 @ X24 )
        = ( k1_funct_1 @ sk_D @ X24 ) )
      | ( r1_partfun1 @ sk_C_1 @ sk_D ) ) ),
    inference(demod,[status(thm)],['53','54'])).

thf('56',plain,
    ( ( ( r1_partfun1 @ sk_C_1 @ sk_D )
      | ( r1_partfun1 @ sk_C_1 @ sk_D )
      | ( ( k1_funct_1 @ sk_C_1 @ ( sk_C @ sk_D @ sk_C_1 ) )
        = ( k1_funct_1 @ sk_D @ ( sk_C @ sk_D @ sk_C_1 ) ) ) )
   <= ( sk_A = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['52','55'])).

thf('57',plain,
    ( ( ( ( k1_funct_1 @ sk_C_1 @ ( sk_C @ sk_D @ sk_C_1 ) )
        = ( k1_funct_1 @ sk_D @ ( sk_C @ sk_D @ sk_C_1 ) ) )
      | ( r1_partfun1 @ sk_C_1 @ sk_D ) )
   <= ( sk_A = k1_xboole_0 ) ),
    inference(simplify,[status(thm)],['56'])).

thf('58',plain,(
    ! [X21: $i,X22: $i] :
      ( ~ ( v1_relat_1 @ X21 )
      | ~ ( v1_funct_1 @ X21 )
      | ( ( k1_funct_1 @ X22 @ ( sk_C @ X21 @ X22 ) )
       != ( k1_funct_1 @ X21 @ ( sk_C @ X21 @ X22 ) ) )
      | ( r1_partfun1 @ X22 @ X21 )
      | ~ ( r1_tarski @ ( k1_relat_1 @ X22 ) @ ( k1_relat_1 @ X21 ) )
      | ~ ( v1_funct_1 @ X22 )
      | ~ ( v1_relat_1 @ X22 ) ) ),
    inference(cnf,[status(esa)],[t132_partfun1])).

thf('59',plain,
    ( ( ( ( k1_funct_1 @ sk_D @ ( sk_C @ sk_D @ sk_C_1 ) )
       != ( k1_funct_1 @ sk_D @ ( sk_C @ sk_D @ sk_C_1 ) ) )
      | ( r1_partfun1 @ sk_C_1 @ sk_D )
      | ~ ( v1_relat_1 @ sk_C_1 )
      | ~ ( v1_funct_1 @ sk_C_1 )
      | ~ ( r1_tarski @ ( k1_relat_1 @ sk_C_1 ) @ ( k1_relat_1 @ sk_D ) )
      | ( r1_partfun1 @ sk_C_1 @ sk_D )
      | ~ ( v1_funct_1 @ sk_D )
      | ~ ( v1_relat_1 @ sk_D ) )
   <= ( sk_A = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['57','58'])).

thf('60',plain,(
    v1_relat_1 @ sk_C_1 ),
    inference(demod,[status(thm)],['49','50'])).

thf('61',plain,(
    v1_funct_1 @ sk_C_1 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('62',plain,
    ( ( k1_xboole_0
      = ( k1_relat_1 @ sk_D ) )
   <= ( sk_A = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['28','34'])).

thf('63',plain,
    ( ( r1_tarski @ ( k1_relat_1 @ sk_C_1 ) @ k1_xboole_0 )
   <= ( sk_A = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['13','16'])).

thf('64',plain,(
    v1_funct_1 @ sk_D ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('65',plain,(
    v1_relat_1 @ sk_D ),
    inference(demod,[status(thm)],['41','42'])).

thf('66',plain,
    ( ( ( ( k1_funct_1 @ sk_D @ ( sk_C @ sk_D @ sk_C_1 ) )
       != ( k1_funct_1 @ sk_D @ ( sk_C @ sk_D @ sk_C_1 ) ) )
      | ( r1_partfun1 @ sk_C_1 @ sk_D )
      | ( r1_partfun1 @ sk_C_1 @ sk_D ) )
   <= ( sk_A = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['59','60','61','62','63','64','65'])).

thf('67',plain,
    ( ( r1_partfun1 @ sk_C_1 @ sk_D )
   <= ( sk_A = k1_xboole_0 ) ),
    inference(simplify,[status(thm)],['66'])).

thf('68',plain,
    ( ( ( k1_funct_1 @ sk_C_1 @ sk_E )
     != ( k1_funct_1 @ sk_D @ sk_E ) )
    | ~ ( r1_partfun1 @ sk_C_1 @ sk_D ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('69',plain,
    ( ~ ( r1_partfun1 @ sk_C_1 @ sk_D )
   <= ~ ( r1_partfun1 @ sk_C_1 @ sk_D ) ),
    inference(split,[status(esa)],['68'])).

thf('70',plain,
    ( ( r1_partfun1 @ sk_C_1 @ sk_D )
    | ( sk_A != k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['67','69'])).

thf('71',plain,(
    m1_subset_1 @ sk_C_1 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('72',plain,(
    ! [X7: $i,X8: $i,X9: $i] :
      ( ( m1_subset_1 @ ( k1_relset_1 @ X7 @ X8 @ X9 ) @ ( k1_zfmisc_1 @ X7 ) )
      | ~ ( m1_subset_1 @ X9 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X7 @ X8 ) ) ) ) ),
    inference(cnf,[status(esa)],[dt_k1_relset_1])).

thf('73',plain,(
    m1_subset_1 @ ( k1_relset_1 @ sk_A @ sk_B @ sk_C_1 ) @ ( k1_zfmisc_1 @ sk_A ) ),
    inference('sup-',[status(thm)],['71','72'])).

thf('74',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r1_tarski @ X0 @ X1 )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ X1 ) ) ) ),
    inference(cnf,[status(esa)],[t3_subset])).

thf('75',plain,(
    r1_tarski @ ( k1_relset_1 @ sk_A @ sk_B @ sk_C_1 ) @ sk_A ),
    inference('sup-',[status(thm)],['73','74'])).

thf('76',plain,
    ( ( k1_relset_1 @ sk_A @ sk_B @ sk_C_1 )
    = ( k1_relat_1 @ sk_C_1 ) ),
    inference('sup-',[status(thm)],['2','3'])).

thf('77',plain,(
    r1_tarski @ ( k1_relat_1 @ sk_C_1 ) @ sk_A ),
    inference(demod,[status(thm)],['75','76'])).

thf('78',plain,(
    ! [X13: $i,X14: $i] :
      ( ( zip_tseitin_0 @ X13 @ X14 )
      | ( X13 = k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_4])).

thf('79',plain,(
    ! [X13: $i,X14: $i] :
      ( ( zip_tseitin_0 @ X13 @ X14 )
      | ( X13 = k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_4])).

thf('80',plain,(
    ! [X13: $i,X14: $i] :
      ( ( zip_tseitin_0 @ X13 @ X14 )
      | ( X13 = k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_4])).

thf('81',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i] :
      ( ( X1 = X0 )
      | ( zip_tseitin_0 @ X0 @ X3 )
      | ( zip_tseitin_0 @ X1 @ X2 ) ) ),
    inference('sup+',[status(thm)],['79','80'])).

thf('82',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('83',plain,(
    ! [X18: $i,X19: $i,X20: $i] :
      ( ~ ( zip_tseitin_0 @ X18 @ X19 )
      | ( zip_tseitin_1 @ X20 @ X18 @ X19 )
      | ~ ( m1_subset_1 @ X20 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X19 @ X18 ) ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_5])).

thf('84',plain,
    ( ( zip_tseitin_1 @ sk_D @ sk_B @ sk_A )
    | ~ ( zip_tseitin_0 @ sk_B @ sk_A ) ),
    inference('sup-',[status(thm)],['82','83'])).

thf('85',plain,(
    ! [X0: $i,X1: $i] :
      ( ( zip_tseitin_0 @ X1 @ X0 )
      | ( sk_B = X1 )
      | ( zip_tseitin_1 @ sk_D @ sk_B @ sk_A ) ) ),
    inference('sup-',[status(thm)],['81','84'])).

thf('86',plain,
    ( ( sk_B != k1_xboole_0 )
   <= ( sk_B != k1_xboole_0 ) ),
    inference(split,[status(esa)],['6'])).

thf('87',plain,
    ( ! [X0: $i,X1: $i] :
        ( ( X0 != k1_xboole_0 )
        | ( zip_tseitin_1 @ sk_D @ sk_B @ sk_A )
        | ( zip_tseitin_0 @ X0 @ X1 ) )
   <= ( sk_B != k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['85','86'])).

thf('88',plain,
    ( ! [X1: $i] :
        ( ( zip_tseitin_0 @ k1_xboole_0 @ X1 )
        | ( zip_tseitin_1 @ sk_D @ sk_B @ sk_A ) )
   <= ( sk_B != k1_xboole_0 ) ),
    inference(simplify,[status(thm)],['87'])).

thf('89',plain,(
    v1_funct_2 @ sk_D @ sk_A @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('90',plain,(
    ! [X15: $i,X16: $i,X17: $i] :
      ( ~ ( v1_funct_2 @ X17 @ X15 @ X16 )
      | ( X15
        = ( k1_relset_1 @ X15 @ X16 @ X17 ) )
      | ~ ( zip_tseitin_1 @ X17 @ X16 @ X15 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_1])).

thf('91',plain,
    ( ~ ( zip_tseitin_1 @ sk_D @ sk_B @ sk_A )
    | ( sk_A
      = ( k1_relset_1 @ sk_A @ sk_B @ sk_D ) ) ),
    inference('sup-',[status(thm)],['89','90'])).

thf('92',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('93',plain,(
    ! [X10: $i,X11: $i,X12: $i] :
      ( ( ( k1_relset_1 @ X11 @ X12 @ X10 )
        = ( k1_relat_1 @ X10 ) )
      | ~ ( m1_subset_1 @ X10 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X11 @ X12 ) ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k1_relset_1])).

thf('94',plain,
    ( ( k1_relset_1 @ sk_A @ sk_B @ sk_D )
    = ( k1_relat_1 @ sk_D ) ),
    inference('sup-',[status(thm)],['92','93'])).

thf('95',plain,
    ( ~ ( zip_tseitin_1 @ sk_D @ sk_B @ sk_A )
    | ( sk_A
      = ( k1_relat_1 @ sk_D ) ) ),
    inference(demod,[status(thm)],['91','94'])).

thf('96',plain,
    ( ! [X0: $i] :
        ( ( zip_tseitin_0 @ k1_xboole_0 @ X0 )
        | ( sk_A
          = ( k1_relat_1 @ sk_D ) ) )
   <= ( sk_B != k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['88','95'])).

thf('97',plain,
    ( ! [X0: $i,X1: $i,X2: $i] :
        ( ( zip_tseitin_0 @ X0 @ X1 )
        | ( zip_tseitin_0 @ X0 @ X2 )
        | ( sk_A
          = ( k1_relat_1 @ sk_D ) ) )
   <= ( sk_B != k1_xboole_0 ) ),
    inference('sup+',[status(thm)],['78','96'])).

thf('98',plain,
    ( ! [X0: $i,X1: $i] :
        ( ( sk_A
          = ( k1_relat_1 @ sk_D ) )
        | ( zip_tseitin_0 @ X1 @ X0 ) )
   <= ( sk_B != k1_xboole_0 ) ),
    inference(condensation,[status(thm)],['97'])).

thf('99',plain,
    ( ( zip_tseitin_1 @ sk_D @ sk_B @ sk_A )
    | ~ ( zip_tseitin_0 @ sk_B @ sk_A ) ),
    inference('sup-',[status(thm)],['82','83'])).

thf('100',plain,
    ( ( ( sk_A
        = ( k1_relat_1 @ sk_D ) )
      | ( zip_tseitin_1 @ sk_D @ sk_B @ sk_A ) )
   <= ( sk_B != k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['98','99'])).

thf('101',plain,
    ( ~ ( zip_tseitin_1 @ sk_D @ sk_B @ sk_A )
    | ( sk_A
      = ( k1_relat_1 @ sk_D ) ) ),
    inference(demod,[status(thm)],['91','94'])).

thf('102',plain,
    ( ( sk_A
      = ( k1_relat_1 @ sk_D ) )
   <= ( sk_B != k1_xboole_0 ) ),
    inference(clc,[status(thm)],['100','101'])).

thf('103',plain,(
    ! [X21: $i,X22: $i] :
      ( ~ ( v1_relat_1 @ X21 )
      | ~ ( v1_funct_1 @ X21 )
      | ( r2_hidden @ ( sk_C @ X21 @ X22 ) @ ( k1_relat_1 @ X22 ) )
      | ( r1_partfun1 @ X22 @ X21 )
      | ~ ( r1_tarski @ ( k1_relat_1 @ X22 ) @ ( k1_relat_1 @ X21 ) )
      | ~ ( v1_funct_1 @ X22 )
      | ~ ( v1_relat_1 @ X22 ) ) ),
    inference(cnf,[status(esa)],[t132_partfun1])).

thf('104',plain,
    ( ! [X0: $i] :
        ( ~ ( r1_tarski @ ( k1_relat_1 @ X0 ) @ sk_A )
        | ~ ( v1_relat_1 @ X0 )
        | ~ ( v1_funct_1 @ X0 )
        | ( r1_partfun1 @ X0 @ sk_D )
        | ( r2_hidden @ ( sk_C @ sk_D @ X0 ) @ ( k1_relat_1 @ X0 ) )
        | ~ ( v1_funct_1 @ sk_D )
        | ~ ( v1_relat_1 @ sk_D ) )
   <= ( sk_B != k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['102','103'])).

thf('105',plain,(
    v1_funct_1 @ sk_D ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('106',plain,(
    v1_relat_1 @ sk_D ),
    inference(demod,[status(thm)],['41','42'])).

thf('107',plain,
    ( ! [X0: $i] :
        ( ~ ( r1_tarski @ ( k1_relat_1 @ X0 ) @ sk_A )
        | ~ ( v1_relat_1 @ X0 )
        | ~ ( v1_funct_1 @ X0 )
        | ( r1_partfun1 @ X0 @ sk_D )
        | ( r2_hidden @ ( sk_C @ sk_D @ X0 ) @ ( k1_relat_1 @ X0 ) ) )
   <= ( sk_B != k1_xboole_0 ) ),
    inference(demod,[status(thm)],['104','105','106'])).

thf('108',plain,
    ( ( ( r2_hidden @ ( sk_C @ sk_D @ sk_C_1 ) @ ( k1_relat_1 @ sk_C_1 ) )
      | ( r1_partfun1 @ sk_C_1 @ sk_D )
      | ~ ( v1_funct_1 @ sk_C_1 )
      | ~ ( v1_relat_1 @ sk_C_1 ) )
   <= ( sk_B != k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['77','107'])).

thf('109',plain,(
    v1_funct_1 @ sk_C_1 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('110',plain,(
    v1_relat_1 @ sk_C_1 ),
    inference(demod,[status(thm)],['49','50'])).

thf('111',plain,
    ( ( ( r2_hidden @ ( sk_C @ sk_D @ sk_C_1 ) @ ( k1_relat_1 @ sk_C_1 ) )
      | ( r1_partfun1 @ sk_C_1 @ sk_D ) )
   <= ( sk_B != k1_xboole_0 ) ),
    inference(demod,[status(thm)],['108','109','110'])).

thf('112',plain,(
    ! [X24: $i] :
      ( ~ ( r2_hidden @ X24 @ ( k1_relset_1 @ sk_A @ sk_B @ sk_C_1 ) )
      | ( ( k1_funct_1 @ sk_C_1 @ X24 )
        = ( k1_funct_1 @ sk_D @ X24 ) )
      | ( r1_partfun1 @ sk_C_1 @ sk_D ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('113',plain,
    ( ! [X24: $i] :
        ( ~ ( r2_hidden @ X24 @ ( k1_relset_1 @ sk_A @ sk_B @ sk_C_1 ) )
        | ( ( k1_funct_1 @ sk_C_1 @ X24 )
          = ( k1_funct_1 @ sk_D @ X24 ) ) )
   <= ! [X24: $i] :
        ( ~ ( r2_hidden @ X24 @ ( k1_relset_1 @ sk_A @ sk_B @ sk_C_1 ) )
        | ( ( k1_funct_1 @ sk_C_1 @ X24 )
          = ( k1_funct_1 @ sk_D @ X24 ) ) ) ),
    inference(split,[status(esa)],['112'])).

thf('114',plain,
    ( ( k1_relset_1 @ sk_A @ sk_B @ sk_C_1 )
    = ( k1_relat_1 @ sk_C_1 ) ),
    inference('sup-',[status(thm)],['2','3'])).

thf('115',plain,
    ( ! [X24: $i] :
        ( ~ ( r2_hidden @ X24 @ ( k1_relat_1 @ sk_C_1 ) )
        | ( ( k1_funct_1 @ sk_C_1 @ X24 )
          = ( k1_funct_1 @ sk_D @ X24 ) ) )
   <= ! [X24: $i] :
        ( ~ ( r2_hidden @ X24 @ ( k1_relset_1 @ sk_A @ sk_B @ sk_C_1 ) )
        | ( ( k1_funct_1 @ sk_C_1 @ X24 )
          = ( k1_funct_1 @ sk_D @ X24 ) ) ) ),
    inference(demod,[status(thm)],['113','114'])).

thf('116',plain,
    ( ( ( r1_partfun1 @ sk_C_1 @ sk_D )
      | ( ( k1_funct_1 @ sk_C_1 @ ( sk_C @ sk_D @ sk_C_1 ) )
        = ( k1_funct_1 @ sk_D @ ( sk_C @ sk_D @ sk_C_1 ) ) ) )
   <= ( ( sk_B != k1_xboole_0 )
      & ! [X24: $i] :
          ( ~ ( r2_hidden @ X24 @ ( k1_relset_1 @ sk_A @ sk_B @ sk_C_1 ) )
          | ( ( k1_funct_1 @ sk_C_1 @ X24 )
            = ( k1_funct_1 @ sk_D @ X24 ) ) ) ) ),
    inference('sup-',[status(thm)],['111','115'])).

thf('117',plain,(
    ! [X21: $i,X22: $i] :
      ( ~ ( v1_relat_1 @ X21 )
      | ~ ( v1_funct_1 @ X21 )
      | ( ( k1_funct_1 @ X22 @ ( sk_C @ X21 @ X22 ) )
       != ( k1_funct_1 @ X21 @ ( sk_C @ X21 @ X22 ) ) )
      | ( r1_partfun1 @ X22 @ X21 )
      | ~ ( r1_tarski @ ( k1_relat_1 @ X22 ) @ ( k1_relat_1 @ X21 ) )
      | ~ ( v1_funct_1 @ X22 )
      | ~ ( v1_relat_1 @ X22 ) ) ),
    inference(cnf,[status(esa)],[t132_partfun1])).

thf('118',plain,
    ( ( ( ( k1_funct_1 @ sk_D @ ( sk_C @ sk_D @ sk_C_1 ) )
       != ( k1_funct_1 @ sk_D @ ( sk_C @ sk_D @ sk_C_1 ) ) )
      | ( r1_partfun1 @ sk_C_1 @ sk_D )
      | ~ ( v1_relat_1 @ sk_C_1 )
      | ~ ( v1_funct_1 @ sk_C_1 )
      | ~ ( r1_tarski @ ( k1_relat_1 @ sk_C_1 ) @ ( k1_relat_1 @ sk_D ) )
      | ( r1_partfun1 @ sk_C_1 @ sk_D )
      | ~ ( v1_funct_1 @ sk_D )
      | ~ ( v1_relat_1 @ sk_D ) )
   <= ( ( sk_B != k1_xboole_0 )
      & ! [X24: $i] :
          ( ~ ( r2_hidden @ X24 @ ( k1_relset_1 @ sk_A @ sk_B @ sk_C_1 ) )
          | ( ( k1_funct_1 @ sk_C_1 @ X24 )
            = ( k1_funct_1 @ sk_D @ X24 ) ) ) ) ),
    inference('sup-',[status(thm)],['116','117'])).

thf('119',plain,(
    v1_relat_1 @ sk_C_1 ),
    inference(demod,[status(thm)],['49','50'])).

thf('120',plain,(
    v1_funct_1 @ sk_C_1 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('121',plain,
    ( ( sk_A
      = ( k1_relat_1 @ sk_D ) )
   <= ( sk_B != k1_xboole_0 ) ),
    inference(clc,[status(thm)],['100','101'])).

thf('122',plain,(
    r1_tarski @ ( k1_relat_1 @ sk_C_1 ) @ sk_A ),
    inference(demod,[status(thm)],['75','76'])).

thf('123',plain,(
    v1_funct_1 @ sk_D ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('124',plain,(
    v1_relat_1 @ sk_D ),
    inference(demod,[status(thm)],['41','42'])).

thf('125',plain,
    ( ( ( ( k1_funct_1 @ sk_D @ ( sk_C @ sk_D @ sk_C_1 ) )
       != ( k1_funct_1 @ sk_D @ ( sk_C @ sk_D @ sk_C_1 ) ) )
      | ( r1_partfun1 @ sk_C_1 @ sk_D )
      | ( r1_partfun1 @ sk_C_1 @ sk_D ) )
   <= ( ( sk_B != k1_xboole_0 )
      & ! [X24: $i] :
          ( ~ ( r2_hidden @ X24 @ ( k1_relset_1 @ sk_A @ sk_B @ sk_C_1 ) )
          | ( ( k1_funct_1 @ sk_C_1 @ X24 )
            = ( k1_funct_1 @ sk_D @ X24 ) ) ) ) ),
    inference(demod,[status(thm)],['118','119','120','121','122','123','124'])).

thf('126',plain,
    ( ( r1_partfun1 @ sk_C_1 @ sk_D )
   <= ( ( sk_B != k1_xboole_0 )
      & ! [X24: $i] :
          ( ~ ( r2_hidden @ X24 @ ( k1_relset_1 @ sk_A @ sk_B @ sk_C_1 ) )
          | ( ( k1_funct_1 @ sk_C_1 @ X24 )
            = ( k1_funct_1 @ sk_D @ X24 ) ) ) ) ),
    inference(simplify,[status(thm)],['125'])).

thf('127',plain,
    ( ~ ( r1_partfun1 @ sk_C_1 @ sk_D )
   <= ~ ( r1_partfun1 @ sk_C_1 @ sk_D ) ),
    inference(split,[status(esa)],['68'])).

thf('128',plain,
    ( ( sk_B = k1_xboole_0 )
    | ( r1_partfun1 @ sk_C_1 @ sk_D )
    | ~ ! [X24: $i] :
          ( ~ ( r2_hidden @ X24 @ ( k1_relset_1 @ sk_A @ sk_B @ sk_C_1 ) )
          | ( ( k1_funct_1 @ sk_C_1 @ X24 )
            = ( k1_funct_1 @ sk_D @ X24 ) ) ) ),
    inference('sup-',[status(thm)],['126','127'])).

thf('129',plain,
    ( ( ( k1_funct_1 @ sk_C_1 @ sk_E )
     != ( k1_funct_1 @ sk_D @ sk_E ) )
    | ~ ( r1_partfun1 @ sk_C_1 @ sk_D ) ),
    inference(split,[status(esa)],['68'])).

thf('130',plain,
    ( ( k1_relset_1 @ sk_A @ sk_B @ sk_C_1 )
    = ( k1_relat_1 @ sk_C_1 ) ),
    inference('sup-',[status(thm)],['2','3'])).

thf('131',plain,
    ( ( r2_hidden @ sk_E @ ( k1_relset_1 @ sk_A @ sk_B @ sk_C_1 ) )
   <= ( r2_hidden @ sk_E @ ( k1_relset_1 @ sk_A @ sk_B @ sk_C_1 ) ) ),
    inference(split,[status(esa)],['0'])).

thf('132',plain,
    ( ( r2_hidden @ sk_E @ ( k1_relat_1 @ sk_C_1 ) )
   <= ( r2_hidden @ sk_E @ ( k1_relset_1 @ sk_A @ sk_B @ sk_C_1 ) ) ),
    inference('sup+',[status(thm)],['130','131'])).

thf('133',plain,
    ( ! [X24: $i] :
        ( ~ ( r2_hidden @ X24 @ ( k1_relat_1 @ sk_C_1 ) )
        | ( ( k1_funct_1 @ sk_C_1 @ X24 )
          = ( k1_funct_1 @ sk_D @ X24 ) ) )
   <= ! [X24: $i] :
        ( ~ ( r2_hidden @ X24 @ ( k1_relset_1 @ sk_A @ sk_B @ sk_C_1 ) )
        | ( ( k1_funct_1 @ sk_C_1 @ X24 )
          = ( k1_funct_1 @ sk_D @ X24 ) ) ) ),
    inference(demod,[status(thm)],['113','114'])).

thf('134',plain,
    ( ( ( k1_funct_1 @ sk_C_1 @ sk_E )
      = ( k1_funct_1 @ sk_D @ sk_E ) )
   <= ( ( r2_hidden @ sk_E @ ( k1_relset_1 @ sk_A @ sk_B @ sk_C_1 ) )
      & ! [X24: $i] :
          ( ~ ( r2_hidden @ X24 @ ( k1_relset_1 @ sk_A @ sk_B @ sk_C_1 ) )
          | ( ( k1_funct_1 @ sk_C_1 @ X24 )
            = ( k1_funct_1 @ sk_D @ X24 ) ) ) ) ),
    inference('sup-',[status(thm)],['132','133'])).

thf('135',plain,
    ( ( ( k1_funct_1 @ sk_C_1 @ sk_E )
     != ( k1_funct_1 @ sk_D @ sk_E ) )
   <= ( ( k1_funct_1 @ sk_C_1 @ sk_E )
     != ( k1_funct_1 @ sk_D @ sk_E ) ) ),
    inference(split,[status(esa)],['68'])).

thf('136',plain,
    ( ( ( k1_funct_1 @ sk_D @ sk_E )
     != ( k1_funct_1 @ sk_D @ sk_E ) )
   <= ( ( ( k1_funct_1 @ sk_C_1 @ sk_E )
       != ( k1_funct_1 @ sk_D @ sk_E ) )
      & ( r2_hidden @ sk_E @ ( k1_relset_1 @ sk_A @ sk_B @ sk_C_1 ) )
      & ! [X24: $i] :
          ( ~ ( r2_hidden @ X24 @ ( k1_relset_1 @ sk_A @ sk_B @ sk_C_1 ) )
          | ( ( k1_funct_1 @ sk_C_1 @ X24 )
            = ( k1_funct_1 @ sk_D @ X24 ) ) ) ) ),
    inference('sup-',[status(thm)],['134','135'])).

thf('137',plain,
    ( ~ ! [X24: $i] :
          ( ~ ( r2_hidden @ X24 @ ( k1_relset_1 @ sk_A @ sk_B @ sk_C_1 ) )
          | ( ( k1_funct_1 @ sk_C_1 @ X24 )
            = ( k1_funct_1 @ sk_D @ X24 ) ) )
    | ( ( k1_funct_1 @ sk_C_1 @ sk_E )
      = ( k1_funct_1 @ sk_D @ sk_E ) )
    | ~ ( r2_hidden @ sk_E @ ( k1_relset_1 @ sk_A @ sk_B @ sk_C_1 ) ) ),
    inference(simplify,[status(thm)],['136'])).

thf('138',plain,
    ( ( sk_A = k1_xboole_0 )
    | ( sk_B != k1_xboole_0 ) ),
    inference(split,[status(esa)],['6'])).

thf('139',plain,
    ( ( r1_partfun1 @ sk_C_1 @ sk_D )
    | ! [X24: $i] :
        ( ~ ( r2_hidden @ X24 @ ( k1_relset_1 @ sk_A @ sk_B @ sk_C_1 ) )
        | ( ( k1_funct_1 @ sk_C_1 @ X24 )
          = ( k1_funct_1 @ sk_D @ X24 ) ) ) ),
    inference(split,[status(esa)],['112'])).

thf('140',plain,
    ( ( r2_hidden @ sk_E @ ( k1_relset_1 @ sk_A @ sk_B @ sk_C_1 ) )
    | ~ ( r1_partfun1 @ sk_C_1 @ sk_D ) ),
    inference(split,[status(esa)],['0'])).

thf('141',plain,(
    r2_hidden @ sk_E @ ( k1_relset_1 @ sk_A @ sk_B @ sk_C_1 ) ),
    inference('sat_resolution*',[status(thm)],['70','128','129','137','138','139','140'])).

thf('142',plain,(
    r2_hidden @ sk_E @ ( k1_relat_1 @ sk_C_1 ) ),
    inference(simpl_trail,[status(thm)],['5','141'])).

thf('143',plain,(
    r1_tarski @ ( k1_relat_1 @ sk_C_1 ) @ sk_A ),
    inference(demod,[status(thm)],['75','76'])).

thf('144',plain,
    ( ( sk_A
      = ( k1_relat_1 @ sk_D ) )
   <= ( sk_B != k1_xboole_0 ) ),
    inference(clc,[status(thm)],['100','101'])).

thf('145',plain,(
    ! [X21: $i,X22: $i,X23: $i] :
      ( ~ ( v1_relat_1 @ X21 )
      | ~ ( v1_funct_1 @ X21 )
      | ~ ( r1_partfun1 @ X22 @ X21 )
      | ( ( k1_funct_1 @ X22 @ X23 )
        = ( k1_funct_1 @ X21 @ X23 ) )
      | ~ ( r2_hidden @ X23 @ ( k1_relat_1 @ X22 ) )
      | ~ ( r1_tarski @ ( k1_relat_1 @ X22 ) @ ( k1_relat_1 @ X21 ) )
      | ~ ( v1_funct_1 @ X22 )
      | ~ ( v1_relat_1 @ X22 ) ) ),
    inference(cnf,[status(esa)],[t132_partfun1])).

thf('146',plain,
    ( ! [X0: $i,X1: $i] :
        ( ~ ( r1_tarski @ ( k1_relat_1 @ X0 ) @ sk_A )
        | ~ ( v1_relat_1 @ X0 )
        | ~ ( v1_funct_1 @ X0 )
        | ~ ( r2_hidden @ X1 @ ( k1_relat_1 @ X0 ) )
        | ( ( k1_funct_1 @ X0 @ X1 )
          = ( k1_funct_1 @ sk_D @ X1 ) )
        | ~ ( r1_partfun1 @ X0 @ sk_D )
        | ~ ( v1_funct_1 @ sk_D )
        | ~ ( v1_relat_1 @ sk_D ) )
   <= ( sk_B != k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['144','145'])).

thf('147',plain,(
    v1_funct_1 @ sk_D ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('148',plain,(
    v1_relat_1 @ sk_D ),
    inference(demod,[status(thm)],['41','42'])).

thf('149',plain,
    ( ! [X0: $i,X1: $i] :
        ( ~ ( r1_tarski @ ( k1_relat_1 @ X0 ) @ sk_A )
        | ~ ( v1_relat_1 @ X0 )
        | ~ ( v1_funct_1 @ X0 )
        | ~ ( r2_hidden @ X1 @ ( k1_relat_1 @ X0 ) )
        | ( ( k1_funct_1 @ X0 @ X1 )
          = ( k1_funct_1 @ sk_D @ X1 ) )
        | ~ ( r1_partfun1 @ X0 @ sk_D ) )
   <= ( sk_B != k1_xboole_0 ) ),
    inference(demod,[status(thm)],['146','147','148'])).

thf('150',plain,(
    r2_hidden @ sk_E @ ( k1_relat_1 @ sk_C_1 ) ),
    inference(simpl_trail,[status(thm)],['5','141'])).

thf('151',plain,
    ( ( r1_tarski @ ( k1_relat_1 @ sk_C_1 ) @ k1_xboole_0 )
   <= ( sk_A = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['13','16'])).

thf('152',plain,
    ( ( k1_xboole_0
      = ( k1_relat_1 @ sk_D ) )
   <= ( sk_A = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['28','34'])).

thf('153',plain,(
    ! [X21: $i,X22: $i,X23: $i] :
      ( ~ ( v1_relat_1 @ X21 )
      | ~ ( v1_funct_1 @ X21 )
      | ~ ( r1_partfun1 @ X22 @ X21 )
      | ( ( k1_funct_1 @ X22 @ X23 )
        = ( k1_funct_1 @ X21 @ X23 ) )
      | ~ ( r2_hidden @ X23 @ ( k1_relat_1 @ X22 ) )
      | ~ ( r1_tarski @ ( k1_relat_1 @ X22 ) @ ( k1_relat_1 @ X21 ) )
      | ~ ( v1_funct_1 @ X22 )
      | ~ ( v1_relat_1 @ X22 ) ) ),
    inference(cnf,[status(esa)],[t132_partfun1])).

thf('154',plain,
    ( ! [X0: $i,X1: $i] :
        ( ~ ( r1_tarski @ ( k1_relat_1 @ X0 ) @ k1_xboole_0 )
        | ~ ( v1_relat_1 @ X0 )
        | ~ ( v1_funct_1 @ X0 )
        | ~ ( r2_hidden @ X1 @ ( k1_relat_1 @ X0 ) )
        | ( ( k1_funct_1 @ X0 @ X1 )
          = ( k1_funct_1 @ sk_D @ X1 ) )
        | ~ ( r1_partfun1 @ X0 @ sk_D )
        | ~ ( v1_funct_1 @ sk_D )
        | ~ ( v1_relat_1 @ sk_D ) )
   <= ( sk_A = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['152','153'])).

thf('155',plain,(
    v1_funct_1 @ sk_D ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('156',plain,(
    v1_relat_1 @ sk_D ),
    inference(demod,[status(thm)],['41','42'])).

thf('157',plain,
    ( ! [X0: $i,X1: $i] :
        ( ~ ( r1_tarski @ ( k1_relat_1 @ X0 ) @ k1_xboole_0 )
        | ~ ( v1_relat_1 @ X0 )
        | ~ ( v1_funct_1 @ X0 )
        | ~ ( r2_hidden @ X1 @ ( k1_relat_1 @ X0 ) )
        | ( ( k1_funct_1 @ X0 @ X1 )
          = ( k1_funct_1 @ sk_D @ X1 ) )
        | ~ ( r1_partfun1 @ X0 @ sk_D ) )
   <= ( sk_A = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['154','155','156'])).

thf('158',plain,
    ( ! [X0: $i] :
        ( ~ ( r1_partfun1 @ sk_C_1 @ sk_D )
        | ( ( k1_funct_1 @ sk_C_1 @ X0 )
          = ( k1_funct_1 @ sk_D @ X0 ) )
        | ~ ( r2_hidden @ X0 @ ( k1_relat_1 @ sk_C_1 ) )
        | ~ ( v1_funct_1 @ sk_C_1 )
        | ~ ( v1_relat_1 @ sk_C_1 ) )
   <= ( sk_A = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['151','157'])).

thf('159',plain,
    ( ( r1_partfun1 @ sk_C_1 @ sk_D )
   <= ( r1_partfun1 @ sk_C_1 @ sk_D ) ),
    inference(split,[status(esa)],['112'])).

thf('160',plain,(
    r1_partfun1 @ sk_C_1 @ sk_D ),
    inference('sat_resolution*',[status(thm)],['70','128','129','140','137','138','139'])).

thf('161',plain,(
    r1_partfun1 @ sk_C_1 @ sk_D ),
    inference(simpl_trail,[status(thm)],['159','160'])).

thf('162',plain,(
    v1_funct_1 @ sk_C_1 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('163',plain,(
    v1_relat_1 @ sk_C_1 ),
    inference(demod,[status(thm)],['49','50'])).

thf('164',plain,
    ( ! [X0: $i] :
        ( ( ( k1_funct_1 @ sk_C_1 @ X0 )
          = ( k1_funct_1 @ sk_D @ X0 ) )
        | ~ ( r2_hidden @ X0 @ ( k1_relat_1 @ sk_C_1 ) ) )
   <= ( sk_A = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['158','161','162','163'])).

thf('165',plain,
    ( ( ( k1_funct_1 @ sk_C_1 @ sk_E )
      = ( k1_funct_1 @ sk_D @ sk_E ) )
   <= ( sk_A = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['150','164'])).

thf('166',plain,
    ( ( ( k1_funct_1 @ sk_C_1 @ sk_E )
     != ( k1_funct_1 @ sk_D @ sk_E ) )
   <= ( ( k1_funct_1 @ sk_C_1 @ sk_E )
     != ( k1_funct_1 @ sk_D @ sk_E ) ) ),
    inference(split,[status(esa)],['68'])).

thf('167',plain,(
    ( k1_funct_1 @ sk_C_1 @ sk_E )
 != ( k1_funct_1 @ sk_D @ sk_E ) ),
    inference('sat_resolution*',[status(thm)],['70','128','140','137','138','139','129'])).

thf('168',plain,(
    ( k1_funct_1 @ sk_C_1 @ sk_E )
 != ( k1_funct_1 @ sk_D @ sk_E ) ),
    inference(simpl_trail,[status(thm)],['166','167'])).

thf('169',plain,(
    sk_A != k1_xboole_0 ),
    inference('simplify_reflect-',[status(thm)],['165','168'])).

thf('170',plain,
    ( ( sk_B != k1_xboole_0 )
    | ( sk_A = k1_xboole_0 ) ),
    inference(split,[status(esa)],['6'])).

thf('171',plain,(
    sk_B != k1_xboole_0 ),
    inference('sat_resolution*',[status(thm)],['169','170'])).

thf('172',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( r1_tarski @ ( k1_relat_1 @ X0 ) @ sk_A )
      | ~ ( v1_relat_1 @ X0 )
      | ~ ( v1_funct_1 @ X0 )
      | ~ ( r2_hidden @ X1 @ ( k1_relat_1 @ X0 ) )
      | ( ( k1_funct_1 @ X0 @ X1 )
        = ( k1_funct_1 @ sk_D @ X1 ) )
      | ~ ( r1_partfun1 @ X0 @ sk_D ) ) ),
    inference(simpl_trail,[status(thm)],['149','171'])).

thf('173',plain,(
    ! [X0: $i] :
      ( ~ ( r1_partfun1 @ sk_C_1 @ sk_D )
      | ( ( k1_funct_1 @ sk_C_1 @ X0 )
        = ( k1_funct_1 @ sk_D @ X0 ) )
      | ~ ( r2_hidden @ X0 @ ( k1_relat_1 @ sk_C_1 ) )
      | ~ ( v1_funct_1 @ sk_C_1 )
      | ~ ( v1_relat_1 @ sk_C_1 ) ) ),
    inference('sup-',[status(thm)],['143','172'])).

thf('174',plain,(
    r1_partfun1 @ sk_C_1 @ sk_D ),
    inference(simpl_trail,[status(thm)],['159','160'])).

thf('175',plain,(
    v1_funct_1 @ sk_C_1 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('176',plain,(
    v1_relat_1 @ sk_C_1 ),
    inference(demod,[status(thm)],['49','50'])).

thf('177',plain,(
    ! [X0: $i] :
      ( ( ( k1_funct_1 @ sk_C_1 @ X0 )
        = ( k1_funct_1 @ sk_D @ X0 ) )
      | ~ ( r2_hidden @ X0 @ ( k1_relat_1 @ sk_C_1 ) ) ) ),
    inference(demod,[status(thm)],['173','174','175','176'])).

thf('178',plain,
    ( ( k1_funct_1 @ sk_C_1 @ sk_E )
    = ( k1_funct_1 @ sk_D @ sk_E ) ),
    inference('sup-',[status(thm)],['142','177'])).

thf('179',plain,(
    ( k1_funct_1 @ sk_C_1 @ sk_E )
 != ( k1_funct_1 @ sk_D @ sk_E ) ),
    inference(simpl_trail,[status(thm)],['166','167'])).

thf('180',plain,(
    $false ),
    inference('simplify_reflect-',[status(thm)],['178','179'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.MlHVnwmgjh
% 0.13/0.33  % Computer   : n001.cluster.edu
% 0.13/0.33  % Model      : x86_64 x86_64
% 0.13/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.33  % Memory     : 8042.1875MB
% 0.13/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.33  % CPULimit   : 60
% 0.13/0.33  % DateTime   : Tue Dec  1 20:20:00 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running portfolio for 600 s
% 0.13/0.34  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.13/0.34  % Number of cores: 8
% 0.13/0.34  % Python version: Python 3.6.8
% 0.13/0.34  % Running in FO mode
% 1.96/2.21  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 1.96/2.21  % Solved by: fo/fo7.sh
% 1.96/2.21  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 1.96/2.21  % done 1343 iterations in 1.755s
% 1.96/2.21  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 1.96/2.21  % SZS output start Refutation
% 1.96/2.21  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 1.96/2.21  thf(k1_funct_1_type, type, k1_funct_1: $i > $i > $i).
% 1.96/2.21  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 1.96/2.21  thf(k1_relat_1_type, type, k1_relat_1: $i > $i).
% 1.96/2.21  thf(sk_B_type, type, sk_B: $i).
% 1.96/2.21  thf(zip_tseitin_1_type, type, zip_tseitin_1: $i > $i > $i > $o).
% 1.96/2.21  thf(sk_D_type, type, sk_D: $i).
% 1.96/2.21  thf(v1_funct_2_type, type, v1_funct_2: $i > $i > $i > $o).
% 1.96/2.21  thf(sk_E_type, type, sk_E: $i).
% 1.96/2.21  thf(v1_funct_1_type, type, v1_funct_1: $i > $o).
% 1.96/2.21  thf(sk_C_1_type, type, sk_C_1: $i).
% 1.96/2.21  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 1.96/2.21  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 1.96/2.21  thf(sk_C_type, type, sk_C: $i > $i > $i).
% 1.96/2.21  thf(zip_tseitin_0_type, type, zip_tseitin_0: $i > $i > $o).
% 1.96/2.21  thf(k1_relset_1_type, type, k1_relset_1: $i > $i > $i > $i).
% 1.96/2.21  thf(r1_partfun1_type, type, r1_partfun1: $i > $i > $o).
% 1.96/2.21  thf(sk_A_type, type, sk_A: $i).
% 1.96/2.21  thf(k2_zfmisc_1_type, type, k2_zfmisc_1: $i > $i > $i).
% 1.96/2.21  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 1.96/2.21  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 1.96/2.21  thf(t145_funct_2, conjecture,
% 1.96/2.21    (![A:$i,B:$i,C:$i]:
% 1.96/2.21     ( ( ( v1_funct_1 @ C ) & 
% 1.96/2.21         ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) =>
% 1.96/2.21       ( ![D:$i]:
% 1.96/2.21         ( ( ( v1_funct_1 @ D ) & ( v1_funct_2 @ D @ A @ B ) & 
% 1.96/2.21             ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) =>
% 1.96/2.21           ( ( ( ( B ) = ( k1_xboole_0 ) ) => ( ( A ) = ( k1_xboole_0 ) ) ) =>
% 1.96/2.21             ( ( r1_partfun1 @ C @ D ) <=>
% 1.96/2.21               ( ![E:$i]:
% 1.96/2.21                 ( ( r2_hidden @ E @ ( k1_relset_1 @ A @ B @ C ) ) =>
% 1.96/2.21                   ( ( k1_funct_1 @ C @ E ) = ( k1_funct_1 @ D @ E ) ) ) ) ) ) ) ) ))).
% 1.96/2.21  thf(zf_stmt_0, negated_conjecture,
% 1.96/2.21    (~( ![A:$i,B:$i,C:$i]:
% 1.96/2.21        ( ( ( v1_funct_1 @ C ) & 
% 1.96/2.21            ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) =>
% 1.96/2.21          ( ![D:$i]:
% 1.96/2.21            ( ( ( v1_funct_1 @ D ) & ( v1_funct_2 @ D @ A @ B ) & 
% 1.96/2.21                ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) =>
% 1.96/2.21              ( ( ( ( B ) = ( k1_xboole_0 ) ) => ( ( A ) = ( k1_xboole_0 ) ) ) =>
% 1.96/2.21                ( ( r1_partfun1 @ C @ D ) <=>
% 1.96/2.21                  ( ![E:$i]:
% 1.96/2.21                    ( ( r2_hidden @ E @ ( k1_relset_1 @ A @ B @ C ) ) =>
% 1.96/2.21                      ( ( k1_funct_1 @ C @ E ) = ( k1_funct_1 @ D @ E ) ) ) ) ) ) ) ) ) )),
% 1.96/2.21    inference('cnf.neg', [status(esa)], [t145_funct_2])).
% 1.96/2.21  thf('0', plain,
% 1.96/2.21      (((r2_hidden @ sk_E @ (k1_relset_1 @ sk_A @ sk_B @ sk_C_1))
% 1.96/2.21        | ~ (r1_partfun1 @ sk_C_1 @ sk_D))),
% 1.96/2.21      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.96/2.21  thf('1', plain,
% 1.96/2.21      (((r2_hidden @ sk_E @ (k1_relset_1 @ sk_A @ sk_B @ sk_C_1)))
% 1.96/2.21         <= (((r2_hidden @ sk_E @ (k1_relset_1 @ sk_A @ sk_B @ sk_C_1))))),
% 1.96/2.21      inference('split', [status(esa)], ['0'])).
% 1.96/2.21  thf('2', plain,
% 1.96/2.21      ((m1_subset_1 @ sk_C_1 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 1.96/2.21      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.96/2.21  thf(redefinition_k1_relset_1, axiom,
% 1.96/2.21    (![A:$i,B:$i,C:$i]:
% 1.96/2.21     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 1.96/2.21       ( ( k1_relset_1 @ A @ B @ C ) = ( k1_relat_1 @ C ) ) ))).
% 1.96/2.21  thf('3', plain,
% 1.96/2.21      (![X10 : $i, X11 : $i, X12 : $i]:
% 1.96/2.21         (((k1_relset_1 @ X11 @ X12 @ X10) = (k1_relat_1 @ X10))
% 1.96/2.21          | ~ (m1_subset_1 @ X10 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X11 @ X12))))),
% 1.96/2.21      inference('cnf', [status(esa)], [redefinition_k1_relset_1])).
% 1.96/2.21  thf('4', plain,
% 1.96/2.21      (((k1_relset_1 @ sk_A @ sk_B @ sk_C_1) = (k1_relat_1 @ sk_C_1))),
% 1.96/2.21      inference('sup-', [status(thm)], ['2', '3'])).
% 1.96/2.21  thf('5', plain,
% 1.96/2.21      (((r2_hidden @ sk_E @ (k1_relat_1 @ sk_C_1)))
% 1.96/2.21         <= (((r2_hidden @ sk_E @ (k1_relset_1 @ sk_A @ sk_B @ sk_C_1))))),
% 1.96/2.21      inference('demod', [status(thm)], ['1', '4'])).
% 1.96/2.21  thf('6', plain, ((((sk_A) = (k1_xboole_0)) | ((sk_B) != (k1_xboole_0)))),
% 1.96/2.21      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.96/2.21  thf('7', plain, ((((sk_A) = (k1_xboole_0))) <= ((((sk_A) = (k1_xboole_0))))),
% 1.96/2.21      inference('split', [status(esa)], ['6'])).
% 1.96/2.21  thf('8', plain,
% 1.96/2.21      ((m1_subset_1 @ sk_C_1 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 1.96/2.21      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.96/2.21  thf('9', plain,
% 1.96/2.21      (((m1_subset_1 @ sk_C_1 @ 
% 1.96/2.21         (k1_zfmisc_1 @ (k2_zfmisc_1 @ k1_xboole_0 @ sk_B))))
% 1.96/2.21         <= ((((sk_A) = (k1_xboole_0))))),
% 1.96/2.21      inference('sup+', [status(thm)], ['7', '8'])).
% 1.96/2.21  thf(dt_k1_relset_1, axiom,
% 1.96/2.21    (![A:$i,B:$i,C:$i]:
% 1.96/2.21     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 1.96/2.21       ( m1_subset_1 @ ( k1_relset_1 @ A @ B @ C ) @ ( k1_zfmisc_1 @ A ) ) ))).
% 1.96/2.21  thf('10', plain,
% 1.96/2.21      (![X7 : $i, X8 : $i, X9 : $i]:
% 1.96/2.21         ((m1_subset_1 @ (k1_relset_1 @ X7 @ X8 @ X9) @ (k1_zfmisc_1 @ X7))
% 1.96/2.21          | ~ (m1_subset_1 @ X9 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X7 @ X8))))),
% 1.96/2.21      inference('cnf', [status(esa)], [dt_k1_relset_1])).
% 1.96/2.21  thf('11', plain,
% 1.96/2.21      (((m1_subset_1 @ (k1_relset_1 @ k1_xboole_0 @ sk_B @ sk_C_1) @ 
% 1.96/2.21         (k1_zfmisc_1 @ k1_xboole_0))) <= ((((sk_A) = (k1_xboole_0))))),
% 1.96/2.21      inference('sup-', [status(thm)], ['9', '10'])).
% 1.96/2.21  thf(t3_subset, axiom,
% 1.96/2.21    (![A:$i,B:$i]:
% 1.96/2.21     ( ( m1_subset_1 @ A @ ( k1_zfmisc_1 @ B ) ) <=> ( r1_tarski @ A @ B ) ))).
% 1.96/2.21  thf('12', plain,
% 1.96/2.21      (![X0 : $i, X1 : $i]:
% 1.96/2.21         ((r1_tarski @ X0 @ X1) | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ X1)))),
% 1.96/2.21      inference('cnf', [status(esa)], [t3_subset])).
% 1.96/2.21  thf('13', plain,
% 1.96/2.21      (((r1_tarski @ (k1_relset_1 @ k1_xboole_0 @ sk_B @ sk_C_1) @ k1_xboole_0))
% 1.96/2.21         <= ((((sk_A) = (k1_xboole_0))))),
% 1.96/2.21      inference('sup-', [status(thm)], ['11', '12'])).
% 1.96/2.21  thf('14', plain,
% 1.96/2.21      (((m1_subset_1 @ sk_C_1 @ 
% 1.96/2.21         (k1_zfmisc_1 @ (k2_zfmisc_1 @ k1_xboole_0 @ sk_B))))
% 1.96/2.21         <= ((((sk_A) = (k1_xboole_0))))),
% 1.96/2.21      inference('sup+', [status(thm)], ['7', '8'])).
% 1.96/2.21  thf('15', plain,
% 1.96/2.21      (![X10 : $i, X11 : $i, X12 : $i]:
% 1.96/2.21         (((k1_relset_1 @ X11 @ X12 @ X10) = (k1_relat_1 @ X10))
% 1.96/2.21          | ~ (m1_subset_1 @ X10 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X11 @ X12))))),
% 1.96/2.21      inference('cnf', [status(esa)], [redefinition_k1_relset_1])).
% 1.96/2.21  thf('16', plain,
% 1.96/2.21      ((((k1_relset_1 @ k1_xboole_0 @ sk_B @ sk_C_1) = (k1_relat_1 @ sk_C_1)))
% 1.96/2.21         <= ((((sk_A) = (k1_xboole_0))))),
% 1.96/2.21      inference('sup-', [status(thm)], ['14', '15'])).
% 1.96/2.21  thf('17', plain,
% 1.96/2.21      (((r1_tarski @ (k1_relat_1 @ sk_C_1) @ k1_xboole_0))
% 1.96/2.21         <= ((((sk_A) = (k1_xboole_0))))),
% 1.96/2.21      inference('demod', [status(thm)], ['13', '16'])).
% 1.96/2.21  thf('18', plain,
% 1.96/2.21      ((((sk_A) = (k1_xboole_0))) <= ((((sk_A) = (k1_xboole_0))))),
% 1.96/2.21      inference('split', [status(esa)], ['6'])).
% 1.96/2.21  thf('19', plain, ((v1_funct_2 @ sk_D @ sk_A @ sk_B)),
% 1.96/2.21      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.96/2.21  thf('20', plain,
% 1.96/2.21      (((v1_funct_2 @ sk_D @ k1_xboole_0 @ sk_B))
% 1.96/2.21         <= ((((sk_A) = (k1_xboole_0))))),
% 1.96/2.21      inference('sup+', [status(thm)], ['18', '19'])).
% 1.96/2.21  thf(d1_funct_2, axiom,
% 1.96/2.21    (![A:$i,B:$i,C:$i]:
% 1.96/2.21     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 1.96/2.21       ( ( ( ( B ) = ( k1_xboole_0 ) ) =>
% 1.96/2.21           ( ( ( v1_funct_2 @ C @ A @ B ) <=> ( ( C ) = ( k1_xboole_0 ) ) ) | 
% 1.96/2.21             ( ( A ) = ( k1_xboole_0 ) ) ) ) & 
% 1.96/2.21         ( ( ( ( B ) = ( k1_xboole_0 ) ) => ( ( A ) = ( k1_xboole_0 ) ) ) =>
% 1.96/2.21           ( ( v1_funct_2 @ C @ A @ B ) <=>
% 1.96/2.21             ( ( A ) = ( k1_relset_1 @ A @ B @ C ) ) ) ) ) ))).
% 1.96/2.21  thf(zf_stmt_1, axiom,
% 1.96/2.21    (![C:$i,B:$i,A:$i]:
% 1.96/2.21     ( ( zip_tseitin_1 @ C @ B @ A ) =>
% 1.96/2.21       ( ( v1_funct_2 @ C @ A @ B ) <=> ( ( A ) = ( k1_relset_1 @ A @ B @ C ) ) ) ))).
% 1.96/2.21  thf('21', plain,
% 1.96/2.21      (![X15 : $i, X16 : $i, X17 : $i]:
% 1.96/2.21         (~ (v1_funct_2 @ X17 @ X15 @ X16)
% 1.96/2.21          | ((X15) = (k1_relset_1 @ X15 @ X16 @ X17))
% 1.96/2.21          | ~ (zip_tseitin_1 @ X17 @ X16 @ X15))),
% 1.96/2.21      inference('cnf', [status(esa)], [zf_stmt_1])).
% 1.96/2.21  thf('22', plain,
% 1.96/2.21      (((~ (zip_tseitin_1 @ sk_D @ sk_B @ k1_xboole_0)
% 1.96/2.21         | ((k1_xboole_0) = (k1_relset_1 @ k1_xboole_0 @ sk_B @ sk_D))))
% 1.96/2.21         <= ((((sk_A) = (k1_xboole_0))))),
% 1.96/2.21      inference('sup-', [status(thm)], ['20', '21'])).
% 1.96/2.21  thf('23', plain,
% 1.96/2.21      ((((sk_A) = (k1_xboole_0))) <= ((((sk_A) = (k1_xboole_0))))),
% 1.96/2.21      inference('split', [status(esa)], ['6'])).
% 1.96/2.21  thf('24', plain,
% 1.96/2.21      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 1.96/2.21      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.96/2.21  thf('25', plain,
% 1.96/2.21      (((m1_subset_1 @ sk_D @ 
% 1.96/2.21         (k1_zfmisc_1 @ (k2_zfmisc_1 @ k1_xboole_0 @ sk_B))))
% 1.96/2.21         <= ((((sk_A) = (k1_xboole_0))))),
% 1.96/2.21      inference('sup+', [status(thm)], ['23', '24'])).
% 1.96/2.21  thf('26', plain,
% 1.96/2.21      (![X10 : $i, X11 : $i, X12 : $i]:
% 1.96/2.21         (((k1_relset_1 @ X11 @ X12 @ X10) = (k1_relat_1 @ X10))
% 1.96/2.21          | ~ (m1_subset_1 @ X10 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X11 @ X12))))),
% 1.96/2.21      inference('cnf', [status(esa)], [redefinition_k1_relset_1])).
% 1.96/2.21  thf('27', plain,
% 1.96/2.21      ((((k1_relset_1 @ k1_xboole_0 @ sk_B @ sk_D) = (k1_relat_1 @ sk_D)))
% 1.96/2.21         <= ((((sk_A) = (k1_xboole_0))))),
% 1.96/2.21      inference('sup-', [status(thm)], ['25', '26'])).
% 1.96/2.21  thf('28', plain,
% 1.96/2.21      (((~ (zip_tseitin_1 @ sk_D @ sk_B @ k1_xboole_0)
% 1.96/2.21         | ((k1_xboole_0) = (k1_relat_1 @ sk_D))))
% 1.96/2.21         <= ((((sk_A) = (k1_xboole_0))))),
% 1.96/2.21      inference('demod', [status(thm)], ['22', '27'])).
% 1.96/2.21  thf('29', plain,
% 1.96/2.21      (((m1_subset_1 @ sk_D @ 
% 1.96/2.21         (k1_zfmisc_1 @ (k2_zfmisc_1 @ k1_xboole_0 @ sk_B))))
% 1.96/2.21         <= ((((sk_A) = (k1_xboole_0))))),
% 1.96/2.21      inference('sup+', [status(thm)], ['23', '24'])).
% 1.96/2.21  thf(zf_stmt_2, type, zip_tseitin_1 : $i > $i > $i > $o).
% 1.96/2.21  thf(zf_stmt_3, type, zip_tseitin_0 : $i > $i > $o).
% 1.96/2.21  thf(zf_stmt_4, axiom,
% 1.96/2.21    (![B:$i,A:$i]:
% 1.96/2.21     ( ( ( ( B ) = ( k1_xboole_0 ) ) => ( ( A ) = ( k1_xboole_0 ) ) ) =>
% 1.96/2.21       ( zip_tseitin_0 @ B @ A ) ))).
% 1.96/2.21  thf(zf_stmt_5, axiom,
% 1.96/2.21    (![A:$i,B:$i,C:$i]:
% 1.96/2.21     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 1.96/2.21       ( ( ( zip_tseitin_0 @ B @ A ) => ( zip_tseitin_1 @ C @ B @ A ) ) & 
% 1.96/2.21         ( ( ( B ) = ( k1_xboole_0 ) ) =>
% 1.96/2.21           ( ( ( A ) = ( k1_xboole_0 ) ) | 
% 1.96/2.21             ( ( v1_funct_2 @ C @ A @ B ) <=> ( ( C ) = ( k1_xboole_0 ) ) ) ) ) ) ))).
% 1.96/2.21  thf('30', plain,
% 1.96/2.21      (![X18 : $i, X19 : $i, X20 : $i]:
% 1.96/2.21         (~ (zip_tseitin_0 @ X18 @ X19)
% 1.96/2.21          | (zip_tseitin_1 @ X20 @ X18 @ X19)
% 1.96/2.21          | ~ (m1_subset_1 @ X20 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X19 @ X18))))),
% 1.96/2.21      inference('cnf', [status(esa)], [zf_stmt_5])).
% 1.96/2.21  thf('31', plain,
% 1.96/2.21      ((((zip_tseitin_1 @ sk_D @ sk_B @ k1_xboole_0)
% 1.96/2.21         | ~ (zip_tseitin_0 @ sk_B @ k1_xboole_0)))
% 1.96/2.21         <= ((((sk_A) = (k1_xboole_0))))),
% 1.96/2.21      inference('sup-', [status(thm)], ['29', '30'])).
% 1.96/2.21  thf('32', plain,
% 1.96/2.21      (![X13 : $i, X14 : $i]:
% 1.96/2.21         ((zip_tseitin_0 @ X13 @ X14) | ((X14) != (k1_xboole_0)))),
% 1.96/2.21      inference('cnf', [status(esa)], [zf_stmt_4])).
% 1.96/2.21  thf('33', plain, (![X13 : $i]: (zip_tseitin_0 @ X13 @ k1_xboole_0)),
% 1.96/2.21      inference('simplify', [status(thm)], ['32'])).
% 1.96/2.21  thf('34', plain,
% 1.96/2.21      (((zip_tseitin_1 @ sk_D @ sk_B @ k1_xboole_0))
% 1.96/2.21         <= ((((sk_A) = (k1_xboole_0))))),
% 1.96/2.21      inference('demod', [status(thm)], ['31', '33'])).
% 1.96/2.21  thf('35', plain,
% 1.96/2.21      ((((k1_xboole_0) = (k1_relat_1 @ sk_D))) <= ((((sk_A) = (k1_xboole_0))))),
% 1.96/2.21      inference('demod', [status(thm)], ['28', '34'])).
% 1.96/2.21  thf(t132_partfun1, axiom,
% 1.96/2.21    (![A:$i]:
% 1.96/2.21     ( ( ( v1_relat_1 @ A ) & ( v1_funct_1 @ A ) ) =>
% 1.96/2.21       ( ![B:$i]:
% 1.96/2.21         ( ( ( v1_relat_1 @ B ) & ( v1_funct_1 @ B ) ) =>
% 1.96/2.21           ( ( r1_tarski @ ( k1_relat_1 @ A ) @ ( k1_relat_1 @ B ) ) =>
% 1.96/2.21             ( ( r1_partfun1 @ A @ B ) <=>
% 1.96/2.21               ( ![C:$i]:
% 1.96/2.21                 ( ( r2_hidden @ C @ ( k1_relat_1 @ A ) ) =>
% 1.96/2.21                   ( ( k1_funct_1 @ A @ C ) = ( k1_funct_1 @ B @ C ) ) ) ) ) ) ) ) ))).
% 1.96/2.21  thf('36', plain,
% 1.96/2.21      (![X21 : $i, X22 : $i]:
% 1.96/2.21         (~ (v1_relat_1 @ X21)
% 1.96/2.21          | ~ (v1_funct_1 @ X21)
% 1.96/2.21          | (r2_hidden @ (sk_C @ X21 @ X22) @ (k1_relat_1 @ X22))
% 1.96/2.21          | (r1_partfun1 @ X22 @ X21)
% 1.96/2.21          | ~ (r1_tarski @ (k1_relat_1 @ X22) @ (k1_relat_1 @ X21))
% 1.96/2.21          | ~ (v1_funct_1 @ X22)
% 1.96/2.21          | ~ (v1_relat_1 @ X22))),
% 1.96/2.21      inference('cnf', [status(esa)], [t132_partfun1])).
% 1.96/2.21  thf('37', plain,
% 1.96/2.21      ((![X0 : $i]:
% 1.96/2.21          (~ (r1_tarski @ (k1_relat_1 @ X0) @ k1_xboole_0)
% 1.96/2.21           | ~ (v1_relat_1 @ X0)
% 1.96/2.21           | ~ (v1_funct_1 @ X0)
% 1.96/2.21           | (r1_partfun1 @ X0 @ sk_D)
% 1.96/2.21           | (r2_hidden @ (sk_C @ sk_D @ X0) @ (k1_relat_1 @ X0))
% 1.96/2.21           | ~ (v1_funct_1 @ sk_D)
% 1.96/2.21           | ~ (v1_relat_1 @ sk_D)))
% 1.96/2.21         <= ((((sk_A) = (k1_xboole_0))))),
% 1.96/2.21      inference('sup-', [status(thm)], ['35', '36'])).
% 1.96/2.21  thf('38', plain, ((v1_funct_1 @ sk_D)),
% 1.96/2.21      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.96/2.21  thf('39', plain,
% 1.96/2.21      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 1.96/2.21      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.96/2.21  thf(cc2_relat_1, axiom,
% 1.96/2.21    (![A:$i]:
% 1.96/2.21     ( ( v1_relat_1 @ A ) =>
% 1.96/2.21       ( ![B:$i]:
% 1.96/2.21         ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) ) => ( v1_relat_1 @ B ) ) ) ))).
% 1.96/2.21  thf('40', plain,
% 1.96/2.21      (![X3 : $i, X4 : $i]:
% 1.96/2.21         (~ (m1_subset_1 @ X3 @ (k1_zfmisc_1 @ X4))
% 1.96/2.21          | (v1_relat_1 @ X3)
% 1.96/2.21          | ~ (v1_relat_1 @ X4))),
% 1.96/2.21      inference('cnf', [status(esa)], [cc2_relat_1])).
% 1.96/2.21  thf('41', plain,
% 1.96/2.21      ((~ (v1_relat_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)) | (v1_relat_1 @ sk_D))),
% 1.96/2.21      inference('sup-', [status(thm)], ['39', '40'])).
% 1.96/2.21  thf(fc6_relat_1, axiom,
% 1.96/2.21    (![A:$i,B:$i]: ( v1_relat_1 @ ( k2_zfmisc_1 @ A @ B ) ))).
% 1.96/2.21  thf('42', plain,
% 1.96/2.21      (![X5 : $i, X6 : $i]: (v1_relat_1 @ (k2_zfmisc_1 @ X5 @ X6))),
% 1.96/2.21      inference('cnf', [status(esa)], [fc6_relat_1])).
% 1.96/2.21  thf('43', plain, ((v1_relat_1 @ sk_D)),
% 1.96/2.21      inference('demod', [status(thm)], ['41', '42'])).
% 1.96/2.21  thf('44', plain,
% 1.96/2.21      ((![X0 : $i]:
% 1.96/2.21          (~ (r1_tarski @ (k1_relat_1 @ X0) @ k1_xboole_0)
% 1.96/2.21           | ~ (v1_relat_1 @ X0)
% 1.96/2.21           | ~ (v1_funct_1 @ X0)
% 1.96/2.21           | (r1_partfun1 @ X0 @ sk_D)
% 1.96/2.21           | (r2_hidden @ (sk_C @ sk_D @ X0) @ (k1_relat_1 @ X0))))
% 1.96/2.21         <= ((((sk_A) = (k1_xboole_0))))),
% 1.96/2.21      inference('demod', [status(thm)], ['37', '38', '43'])).
% 1.96/2.21  thf('45', plain,
% 1.96/2.21      ((((r2_hidden @ (sk_C @ sk_D @ sk_C_1) @ (k1_relat_1 @ sk_C_1))
% 1.96/2.21         | (r1_partfun1 @ sk_C_1 @ sk_D)
% 1.96/2.21         | ~ (v1_funct_1 @ sk_C_1)
% 1.96/2.21         | ~ (v1_relat_1 @ sk_C_1))) <= ((((sk_A) = (k1_xboole_0))))),
% 1.96/2.21      inference('sup-', [status(thm)], ['17', '44'])).
% 1.96/2.21  thf('46', plain, ((v1_funct_1 @ sk_C_1)),
% 1.96/2.21      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.96/2.21  thf('47', plain,
% 1.96/2.21      ((m1_subset_1 @ sk_C_1 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 1.96/2.21      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.96/2.21  thf('48', plain,
% 1.96/2.21      (![X3 : $i, X4 : $i]:
% 1.96/2.21         (~ (m1_subset_1 @ X3 @ (k1_zfmisc_1 @ X4))
% 1.96/2.21          | (v1_relat_1 @ X3)
% 1.96/2.21          | ~ (v1_relat_1 @ X4))),
% 1.96/2.21      inference('cnf', [status(esa)], [cc2_relat_1])).
% 1.96/2.21  thf('49', plain,
% 1.96/2.21      ((~ (v1_relat_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)) | (v1_relat_1 @ sk_C_1))),
% 1.96/2.21      inference('sup-', [status(thm)], ['47', '48'])).
% 1.96/2.21  thf('50', plain,
% 1.96/2.21      (![X5 : $i, X6 : $i]: (v1_relat_1 @ (k2_zfmisc_1 @ X5 @ X6))),
% 1.96/2.21      inference('cnf', [status(esa)], [fc6_relat_1])).
% 1.96/2.21  thf('51', plain, ((v1_relat_1 @ sk_C_1)),
% 1.96/2.21      inference('demod', [status(thm)], ['49', '50'])).
% 1.96/2.21  thf('52', plain,
% 1.96/2.21      ((((r2_hidden @ (sk_C @ sk_D @ sk_C_1) @ (k1_relat_1 @ sk_C_1))
% 1.96/2.21         | (r1_partfun1 @ sk_C_1 @ sk_D))) <= ((((sk_A) = (k1_xboole_0))))),
% 1.96/2.21      inference('demod', [status(thm)], ['45', '46', '51'])).
% 1.96/2.21  thf('53', plain,
% 1.96/2.21      (![X24 : $i]:
% 1.96/2.21         (~ (r2_hidden @ X24 @ (k1_relset_1 @ sk_A @ sk_B @ sk_C_1))
% 1.96/2.21          | ((k1_funct_1 @ sk_C_1 @ X24) = (k1_funct_1 @ sk_D @ X24))
% 1.96/2.21          | (r1_partfun1 @ sk_C_1 @ sk_D))),
% 1.96/2.21      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.96/2.21  thf('54', plain,
% 1.96/2.21      (((k1_relset_1 @ sk_A @ sk_B @ sk_C_1) = (k1_relat_1 @ sk_C_1))),
% 1.96/2.21      inference('sup-', [status(thm)], ['2', '3'])).
% 1.96/2.21  thf('55', plain,
% 1.96/2.21      (![X24 : $i]:
% 1.96/2.21         (~ (r2_hidden @ X24 @ (k1_relat_1 @ sk_C_1))
% 1.96/2.21          | ((k1_funct_1 @ sk_C_1 @ X24) = (k1_funct_1 @ sk_D @ X24))
% 1.96/2.21          | (r1_partfun1 @ sk_C_1 @ sk_D))),
% 1.96/2.21      inference('demod', [status(thm)], ['53', '54'])).
% 1.96/2.21  thf('56', plain,
% 1.96/2.21      ((((r1_partfun1 @ sk_C_1 @ sk_D)
% 1.96/2.21         | (r1_partfun1 @ sk_C_1 @ sk_D)
% 1.96/2.21         | ((k1_funct_1 @ sk_C_1 @ (sk_C @ sk_D @ sk_C_1))
% 1.96/2.21             = (k1_funct_1 @ sk_D @ (sk_C @ sk_D @ sk_C_1)))))
% 1.96/2.21         <= ((((sk_A) = (k1_xboole_0))))),
% 1.96/2.21      inference('sup-', [status(thm)], ['52', '55'])).
% 1.96/2.21  thf('57', plain,
% 1.96/2.21      (((((k1_funct_1 @ sk_C_1 @ (sk_C @ sk_D @ sk_C_1))
% 1.96/2.21           = (k1_funct_1 @ sk_D @ (sk_C @ sk_D @ sk_C_1)))
% 1.96/2.21         | (r1_partfun1 @ sk_C_1 @ sk_D))) <= ((((sk_A) = (k1_xboole_0))))),
% 1.96/2.21      inference('simplify', [status(thm)], ['56'])).
% 1.96/2.21  thf('58', plain,
% 1.96/2.21      (![X21 : $i, X22 : $i]:
% 1.96/2.21         (~ (v1_relat_1 @ X21)
% 1.96/2.21          | ~ (v1_funct_1 @ X21)
% 1.96/2.21          | ((k1_funct_1 @ X22 @ (sk_C @ X21 @ X22))
% 1.96/2.21              != (k1_funct_1 @ X21 @ (sk_C @ X21 @ X22)))
% 1.96/2.21          | (r1_partfun1 @ X22 @ X21)
% 1.96/2.21          | ~ (r1_tarski @ (k1_relat_1 @ X22) @ (k1_relat_1 @ X21))
% 1.96/2.21          | ~ (v1_funct_1 @ X22)
% 1.96/2.21          | ~ (v1_relat_1 @ X22))),
% 1.96/2.21      inference('cnf', [status(esa)], [t132_partfun1])).
% 1.96/2.21  thf('59', plain,
% 1.96/2.21      (((((k1_funct_1 @ sk_D @ (sk_C @ sk_D @ sk_C_1))
% 1.96/2.21           != (k1_funct_1 @ sk_D @ (sk_C @ sk_D @ sk_C_1)))
% 1.96/2.21         | (r1_partfun1 @ sk_C_1 @ sk_D)
% 1.96/2.21         | ~ (v1_relat_1 @ sk_C_1)
% 1.96/2.21         | ~ (v1_funct_1 @ sk_C_1)
% 1.96/2.21         | ~ (r1_tarski @ (k1_relat_1 @ sk_C_1) @ (k1_relat_1 @ sk_D))
% 1.96/2.21         | (r1_partfun1 @ sk_C_1 @ sk_D)
% 1.96/2.21         | ~ (v1_funct_1 @ sk_D)
% 1.96/2.21         | ~ (v1_relat_1 @ sk_D))) <= ((((sk_A) = (k1_xboole_0))))),
% 1.96/2.21      inference('sup-', [status(thm)], ['57', '58'])).
% 1.96/2.21  thf('60', plain, ((v1_relat_1 @ sk_C_1)),
% 1.96/2.21      inference('demod', [status(thm)], ['49', '50'])).
% 1.96/2.21  thf('61', plain, ((v1_funct_1 @ sk_C_1)),
% 1.96/2.21      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.96/2.21  thf('62', plain,
% 1.96/2.21      ((((k1_xboole_0) = (k1_relat_1 @ sk_D))) <= ((((sk_A) = (k1_xboole_0))))),
% 1.96/2.21      inference('demod', [status(thm)], ['28', '34'])).
% 1.96/2.21  thf('63', plain,
% 1.96/2.21      (((r1_tarski @ (k1_relat_1 @ sk_C_1) @ k1_xboole_0))
% 1.96/2.21         <= ((((sk_A) = (k1_xboole_0))))),
% 1.96/2.21      inference('demod', [status(thm)], ['13', '16'])).
% 1.96/2.21  thf('64', plain, ((v1_funct_1 @ sk_D)),
% 1.96/2.21      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.96/2.21  thf('65', plain, ((v1_relat_1 @ sk_D)),
% 1.96/2.21      inference('demod', [status(thm)], ['41', '42'])).
% 1.96/2.21  thf('66', plain,
% 1.96/2.21      (((((k1_funct_1 @ sk_D @ (sk_C @ sk_D @ sk_C_1))
% 1.96/2.21           != (k1_funct_1 @ sk_D @ (sk_C @ sk_D @ sk_C_1)))
% 1.96/2.21         | (r1_partfun1 @ sk_C_1 @ sk_D)
% 1.96/2.21         | (r1_partfun1 @ sk_C_1 @ sk_D))) <= ((((sk_A) = (k1_xboole_0))))),
% 1.96/2.21      inference('demod', [status(thm)],
% 1.96/2.21                ['59', '60', '61', '62', '63', '64', '65'])).
% 1.96/2.21  thf('67', plain,
% 1.96/2.21      (((r1_partfun1 @ sk_C_1 @ sk_D)) <= ((((sk_A) = (k1_xboole_0))))),
% 1.96/2.21      inference('simplify', [status(thm)], ['66'])).
% 1.96/2.21  thf('68', plain,
% 1.96/2.21      ((((k1_funct_1 @ sk_C_1 @ sk_E) != (k1_funct_1 @ sk_D @ sk_E))
% 1.96/2.21        | ~ (r1_partfun1 @ sk_C_1 @ sk_D))),
% 1.96/2.21      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.96/2.21  thf('69', plain,
% 1.96/2.21      ((~ (r1_partfun1 @ sk_C_1 @ sk_D)) <= (~ ((r1_partfun1 @ sk_C_1 @ sk_D)))),
% 1.96/2.21      inference('split', [status(esa)], ['68'])).
% 1.96/2.21  thf('70', plain,
% 1.96/2.21      (((r1_partfun1 @ sk_C_1 @ sk_D)) | ~ (((sk_A) = (k1_xboole_0)))),
% 1.96/2.21      inference('sup-', [status(thm)], ['67', '69'])).
% 1.96/2.21  thf('71', plain,
% 1.96/2.21      ((m1_subset_1 @ sk_C_1 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 1.96/2.21      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.96/2.21  thf('72', plain,
% 1.96/2.21      (![X7 : $i, X8 : $i, X9 : $i]:
% 1.96/2.21         ((m1_subset_1 @ (k1_relset_1 @ X7 @ X8 @ X9) @ (k1_zfmisc_1 @ X7))
% 1.96/2.21          | ~ (m1_subset_1 @ X9 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X7 @ X8))))),
% 1.96/2.21      inference('cnf', [status(esa)], [dt_k1_relset_1])).
% 1.96/2.21  thf('73', plain,
% 1.96/2.21      ((m1_subset_1 @ (k1_relset_1 @ sk_A @ sk_B @ sk_C_1) @ 
% 1.96/2.21        (k1_zfmisc_1 @ sk_A))),
% 1.96/2.21      inference('sup-', [status(thm)], ['71', '72'])).
% 1.96/2.21  thf('74', plain,
% 1.96/2.21      (![X0 : $i, X1 : $i]:
% 1.96/2.21         ((r1_tarski @ X0 @ X1) | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ X1)))),
% 1.96/2.21      inference('cnf', [status(esa)], [t3_subset])).
% 1.96/2.21  thf('75', plain, ((r1_tarski @ (k1_relset_1 @ sk_A @ sk_B @ sk_C_1) @ sk_A)),
% 1.96/2.21      inference('sup-', [status(thm)], ['73', '74'])).
% 1.96/2.21  thf('76', plain,
% 1.96/2.21      (((k1_relset_1 @ sk_A @ sk_B @ sk_C_1) = (k1_relat_1 @ sk_C_1))),
% 1.96/2.21      inference('sup-', [status(thm)], ['2', '3'])).
% 1.96/2.21  thf('77', plain, ((r1_tarski @ (k1_relat_1 @ sk_C_1) @ sk_A)),
% 1.96/2.21      inference('demod', [status(thm)], ['75', '76'])).
% 1.96/2.21  thf('78', plain,
% 1.96/2.21      (![X13 : $i, X14 : $i]:
% 1.96/2.21         ((zip_tseitin_0 @ X13 @ X14) | ((X13) = (k1_xboole_0)))),
% 1.96/2.21      inference('cnf', [status(esa)], [zf_stmt_4])).
% 1.96/2.21  thf('79', plain,
% 1.96/2.21      (![X13 : $i, X14 : $i]:
% 1.96/2.21         ((zip_tseitin_0 @ X13 @ X14) | ((X13) = (k1_xboole_0)))),
% 1.96/2.21      inference('cnf', [status(esa)], [zf_stmt_4])).
% 1.96/2.21  thf('80', plain,
% 1.96/2.21      (![X13 : $i, X14 : $i]:
% 1.96/2.21         ((zip_tseitin_0 @ X13 @ X14) | ((X13) = (k1_xboole_0)))),
% 1.96/2.21      inference('cnf', [status(esa)], [zf_stmt_4])).
% 1.96/2.21  thf('81', plain,
% 1.96/2.21      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 1.96/2.21         (((X1) = (X0)) | (zip_tseitin_0 @ X0 @ X3) | (zip_tseitin_0 @ X1 @ X2))),
% 1.96/2.21      inference('sup+', [status(thm)], ['79', '80'])).
% 1.96/2.21  thf('82', plain,
% 1.96/2.21      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 1.96/2.21      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.96/2.21  thf('83', plain,
% 1.96/2.21      (![X18 : $i, X19 : $i, X20 : $i]:
% 1.96/2.21         (~ (zip_tseitin_0 @ X18 @ X19)
% 1.96/2.21          | (zip_tseitin_1 @ X20 @ X18 @ X19)
% 1.96/2.21          | ~ (m1_subset_1 @ X20 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X19 @ X18))))),
% 1.96/2.21      inference('cnf', [status(esa)], [zf_stmt_5])).
% 1.96/2.21  thf('84', plain,
% 1.96/2.21      (((zip_tseitin_1 @ sk_D @ sk_B @ sk_A) | ~ (zip_tseitin_0 @ sk_B @ sk_A))),
% 1.96/2.21      inference('sup-', [status(thm)], ['82', '83'])).
% 1.96/2.21  thf('85', plain,
% 1.96/2.21      (![X0 : $i, X1 : $i]:
% 1.96/2.21         ((zip_tseitin_0 @ X1 @ X0)
% 1.96/2.21          | ((sk_B) = (X1))
% 1.96/2.21          | (zip_tseitin_1 @ sk_D @ sk_B @ sk_A))),
% 1.96/2.21      inference('sup-', [status(thm)], ['81', '84'])).
% 1.96/2.21  thf('86', plain,
% 1.96/2.21      ((((sk_B) != (k1_xboole_0))) <= (~ (((sk_B) = (k1_xboole_0))))),
% 1.96/2.21      inference('split', [status(esa)], ['6'])).
% 1.96/2.21  thf('87', plain,
% 1.96/2.21      ((![X0 : $i, X1 : $i]:
% 1.96/2.21          (((X0) != (k1_xboole_0))
% 1.96/2.21           | (zip_tseitin_1 @ sk_D @ sk_B @ sk_A)
% 1.96/2.21           | (zip_tseitin_0 @ X0 @ X1)))
% 1.96/2.21         <= (~ (((sk_B) = (k1_xboole_0))))),
% 1.96/2.21      inference('sup-', [status(thm)], ['85', '86'])).
% 1.96/2.21  thf('88', plain,
% 1.96/2.21      ((![X1 : $i]:
% 1.96/2.21          ((zip_tseitin_0 @ k1_xboole_0 @ X1)
% 1.96/2.21           | (zip_tseitin_1 @ sk_D @ sk_B @ sk_A)))
% 1.96/2.21         <= (~ (((sk_B) = (k1_xboole_0))))),
% 1.96/2.21      inference('simplify', [status(thm)], ['87'])).
% 1.96/2.21  thf('89', plain, ((v1_funct_2 @ sk_D @ sk_A @ sk_B)),
% 1.96/2.21      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.96/2.21  thf('90', plain,
% 1.96/2.21      (![X15 : $i, X16 : $i, X17 : $i]:
% 1.96/2.21         (~ (v1_funct_2 @ X17 @ X15 @ X16)
% 1.96/2.21          | ((X15) = (k1_relset_1 @ X15 @ X16 @ X17))
% 1.96/2.21          | ~ (zip_tseitin_1 @ X17 @ X16 @ X15))),
% 1.96/2.21      inference('cnf', [status(esa)], [zf_stmt_1])).
% 1.96/2.21  thf('91', plain,
% 1.96/2.21      ((~ (zip_tseitin_1 @ sk_D @ sk_B @ sk_A)
% 1.96/2.21        | ((sk_A) = (k1_relset_1 @ sk_A @ sk_B @ sk_D)))),
% 1.96/2.21      inference('sup-', [status(thm)], ['89', '90'])).
% 1.96/2.21  thf('92', plain,
% 1.96/2.21      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 1.96/2.21      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.96/2.21  thf('93', plain,
% 1.96/2.21      (![X10 : $i, X11 : $i, X12 : $i]:
% 1.96/2.21         (((k1_relset_1 @ X11 @ X12 @ X10) = (k1_relat_1 @ X10))
% 1.96/2.21          | ~ (m1_subset_1 @ X10 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X11 @ X12))))),
% 1.96/2.21      inference('cnf', [status(esa)], [redefinition_k1_relset_1])).
% 1.96/2.21  thf('94', plain,
% 1.96/2.21      (((k1_relset_1 @ sk_A @ sk_B @ sk_D) = (k1_relat_1 @ sk_D))),
% 1.96/2.21      inference('sup-', [status(thm)], ['92', '93'])).
% 1.96/2.21  thf('95', plain,
% 1.96/2.21      ((~ (zip_tseitin_1 @ sk_D @ sk_B @ sk_A) | ((sk_A) = (k1_relat_1 @ sk_D)))),
% 1.96/2.21      inference('demod', [status(thm)], ['91', '94'])).
% 1.96/2.21  thf('96', plain,
% 1.96/2.21      ((![X0 : $i]:
% 1.96/2.21          ((zip_tseitin_0 @ k1_xboole_0 @ X0) | ((sk_A) = (k1_relat_1 @ sk_D))))
% 1.96/2.21         <= (~ (((sk_B) = (k1_xboole_0))))),
% 1.96/2.21      inference('sup-', [status(thm)], ['88', '95'])).
% 1.96/2.21  thf('97', plain,
% 1.96/2.21      ((![X0 : $i, X1 : $i, X2 : $i]:
% 1.96/2.21          ((zip_tseitin_0 @ X0 @ X1)
% 1.96/2.21           | (zip_tseitin_0 @ X0 @ X2)
% 1.96/2.21           | ((sk_A) = (k1_relat_1 @ sk_D))))
% 1.96/2.21         <= (~ (((sk_B) = (k1_xboole_0))))),
% 1.96/2.21      inference('sup+', [status(thm)], ['78', '96'])).
% 1.96/2.21  thf('98', plain,
% 1.96/2.21      ((![X0 : $i, X1 : $i]:
% 1.96/2.21          (((sk_A) = (k1_relat_1 @ sk_D)) | (zip_tseitin_0 @ X1 @ X0)))
% 1.96/2.21         <= (~ (((sk_B) = (k1_xboole_0))))),
% 1.96/2.21      inference('condensation', [status(thm)], ['97'])).
% 1.96/2.21  thf('99', plain,
% 1.96/2.21      (((zip_tseitin_1 @ sk_D @ sk_B @ sk_A) | ~ (zip_tseitin_0 @ sk_B @ sk_A))),
% 1.96/2.21      inference('sup-', [status(thm)], ['82', '83'])).
% 1.96/2.21  thf('100', plain,
% 1.96/2.21      (((((sk_A) = (k1_relat_1 @ sk_D)) | (zip_tseitin_1 @ sk_D @ sk_B @ sk_A)))
% 1.96/2.21         <= (~ (((sk_B) = (k1_xboole_0))))),
% 1.96/2.21      inference('sup-', [status(thm)], ['98', '99'])).
% 1.96/2.21  thf('101', plain,
% 1.96/2.21      ((~ (zip_tseitin_1 @ sk_D @ sk_B @ sk_A) | ((sk_A) = (k1_relat_1 @ sk_D)))),
% 1.96/2.21      inference('demod', [status(thm)], ['91', '94'])).
% 1.96/2.21  thf('102', plain,
% 1.96/2.21      ((((sk_A) = (k1_relat_1 @ sk_D))) <= (~ (((sk_B) = (k1_xboole_0))))),
% 1.96/2.21      inference('clc', [status(thm)], ['100', '101'])).
% 1.96/2.21  thf('103', plain,
% 1.96/2.21      (![X21 : $i, X22 : $i]:
% 1.96/2.21         (~ (v1_relat_1 @ X21)
% 1.96/2.21          | ~ (v1_funct_1 @ X21)
% 1.96/2.21          | (r2_hidden @ (sk_C @ X21 @ X22) @ (k1_relat_1 @ X22))
% 1.96/2.21          | (r1_partfun1 @ X22 @ X21)
% 1.96/2.21          | ~ (r1_tarski @ (k1_relat_1 @ X22) @ (k1_relat_1 @ X21))
% 1.96/2.21          | ~ (v1_funct_1 @ X22)
% 1.96/2.21          | ~ (v1_relat_1 @ X22))),
% 1.96/2.21      inference('cnf', [status(esa)], [t132_partfun1])).
% 1.96/2.21  thf('104', plain,
% 1.96/2.21      ((![X0 : $i]:
% 1.96/2.21          (~ (r1_tarski @ (k1_relat_1 @ X0) @ sk_A)
% 1.96/2.21           | ~ (v1_relat_1 @ X0)
% 1.96/2.21           | ~ (v1_funct_1 @ X0)
% 1.96/2.21           | (r1_partfun1 @ X0 @ sk_D)
% 1.96/2.21           | (r2_hidden @ (sk_C @ sk_D @ X0) @ (k1_relat_1 @ X0))
% 1.96/2.21           | ~ (v1_funct_1 @ sk_D)
% 1.96/2.21           | ~ (v1_relat_1 @ sk_D)))
% 1.96/2.21         <= (~ (((sk_B) = (k1_xboole_0))))),
% 1.96/2.21      inference('sup-', [status(thm)], ['102', '103'])).
% 1.96/2.21  thf('105', plain, ((v1_funct_1 @ sk_D)),
% 1.96/2.21      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.96/2.21  thf('106', plain, ((v1_relat_1 @ sk_D)),
% 1.96/2.21      inference('demod', [status(thm)], ['41', '42'])).
% 1.96/2.21  thf('107', plain,
% 1.96/2.21      ((![X0 : $i]:
% 1.96/2.21          (~ (r1_tarski @ (k1_relat_1 @ X0) @ sk_A)
% 1.96/2.21           | ~ (v1_relat_1 @ X0)
% 1.96/2.21           | ~ (v1_funct_1 @ X0)
% 1.96/2.21           | (r1_partfun1 @ X0 @ sk_D)
% 1.96/2.21           | (r2_hidden @ (sk_C @ sk_D @ X0) @ (k1_relat_1 @ X0))))
% 1.96/2.21         <= (~ (((sk_B) = (k1_xboole_0))))),
% 1.96/2.21      inference('demod', [status(thm)], ['104', '105', '106'])).
% 1.96/2.21  thf('108', plain,
% 1.96/2.21      ((((r2_hidden @ (sk_C @ sk_D @ sk_C_1) @ (k1_relat_1 @ sk_C_1))
% 1.96/2.21         | (r1_partfun1 @ sk_C_1 @ sk_D)
% 1.96/2.21         | ~ (v1_funct_1 @ sk_C_1)
% 1.96/2.21         | ~ (v1_relat_1 @ sk_C_1))) <= (~ (((sk_B) = (k1_xboole_0))))),
% 1.96/2.21      inference('sup-', [status(thm)], ['77', '107'])).
% 1.96/2.21  thf('109', plain, ((v1_funct_1 @ sk_C_1)),
% 1.96/2.21      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.96/2.21  thf('110', plain, ((v1_relat_1 @ sk_C_1)),
% 1.96/2.21      inference('demod', [status(thm)], ['49', '50'])).
% 1.96/2.21  thf('111', plain,
% 1.96/2.21      ((((r2_hidden @ (sk_C @ sk_D @ sk_C_1) @ (k1_relat_1 @ sk_C_1))
% 1.96/2.21         | (r1_partfun1 @ sk_C_1 @ sk_D))) <= (~ (((sk_B) = (k1_xboole_0))))),
% 1.96/2.21      inference('demod', [status(thm)], ['108', '109', '110'])).
% 1.96/2.21  thf('112', plain,
% 1.96/2.21      (![X24 : $i]:
% 1.96/2.21         (~ (r2_hidden @ X24 @ (k1_relset_1 @ sk_A @ sk_B @ sk_C_1))
% 1.96/2.21          | ((k1_funct_1 @ sk_C_1 @ X24) = (k1_funct_1 @ sk_D @ X24))
% 1.96/2.21          | (r1_partfun1 @ sk_C_1 @ sk_D))),
% 1.96/2.21      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.96/2.21  thf('113', plain,
% 1.96/2.21      ((![X24 : $i]:
% 1.96/2.21          (~ (r2_hidden @ X24 @ (k1_relset_1 @ sk_A @ sk_B @ sk_C_1))
% 1.96/2.21           | ((k1_funct_1 @ sk_C_1 @ X24) = (k1_funct_1 @ sk_D @ X24))))
% 1.96/2.21         <= ((![X24 : $i]:
% 1.96/2.21                (~ (r2_hidden @ X24 @ (k1_relset_1 @ sk_A @ sk_B @ sk_C_1))
% 1.96/2.21                 | ((k1_funct_1 @ sk_C_1 @ X24) = (k1_funct_1 @ sk_D @ X24)))))),
% 1.96/2.21      inference('split', [status(esa)], ['112'])).
% 1.96/2.21  thf('114', plain,
% 1.96/2.21      (((k1_relset_1 @ sk_A @ sk_B @ sk_C_1) = (k1_relat_1 @ sk_C_1))),
% 1.96/2.21      inference('sup-', [status(thm)], ['2', '3'])).
% 1.96/2.21  thf('115', plain,
% 1.96/2.21      ((![X24 : $i]:
% 1.96/2.21          (~ (r2_hidden @ X24 @ (k1_relat_1 @ sk_C_1))
% 1.96/2.21           | ((k1_funct_1 @ sk_C_1 @ X24) = (k1_funct_1 @ sk_D @ X24))))
% 1.96/2.21         <= ((![X24 : $i]:
% 1.96/2.21                (~ (r2_hidden @ X24 @ (k1_relset_1 @ sk_A @ sk_B @ sk_C_1))
% 1.96/2.21                 | ((k1_funct_1 @ sk_C_1 @ X24) = (k1_funct_1 @ sk_D @ X24)))))),
% 1.96/2.21      inference('demod', [status(thm)], ['113', '114'])).
% 1.96/2.21  thf('116', plain,
% 1.96/2.21      ((((r1_partfun1 @ sk_C_1 @ sk_D)
% 1.96/2.21         | ((k1_funct_1 @ sk_C_1 @ (sk_C @ sk_D @ sk_C_1))
% 1.96/2.21             = (k1_funct_1 @ sk_D @ (sk_C @ sk_D @ sk_C_1)))))
% 1.96/2.21         <= (~ (((sk_B) = (k1_xboole_0))) & 
% 1.96/2.21             (![X24 : $i]:
% 1.96/2.21                (~ (r2_hidden @ X24 @ (k1_relset_1 @ sk_A @ sk_B @ sk_C_1))
% 1.96/2.21                 | ((k1_funct_1 @ sk_C_1 @ X24) = (k1_funct_1 @ sk_D @ X24)))))),
% 1.96/2.21      inference('sup-', [status(thm)], ['111', '115'])).
% 1.96/2.21  thf('117', plain,
% 1.96/2.21      (![X21 : $i, X22 : $i]:
% 1.96/2.21         (~ (v1_relat_1 @ X21)
% 1.96/2.21          | ~ (v1_funct_1 @ X21)
% 1.96/2.21          | ((k1_funct_1 @ X22 @ (sk_C @ X21 @ X22))
% 1.96/2.21              != (k1_funct_1 @ X21 @ (sk_C @ X21 @ X22)))
% 1.96/2.21          | (r1_partfun1 @ X22 @ X21)
% 1.96/2.21          | ~ (r1_tarski @ (k1_relat_1 @ X22) @ (k1_relat_1 @ X21))
% 1.96/2.21          | ~ (v1_funct_1 @ X22)
% 1.96/2.21          | ~ (v1_relat_1 @ X22))),
% 1.96/2.21      inference('cnf', [status(esa)], [t132_partfun1])).
% 1.96/2.21  thf('118', plain,
% 1.96/2.21      (((((k1_funct_1 @ sk_D @ (sk_C @ sk_D @ sk_C_1))
% 1.96/2.21           != (k1_funct_1 @ sk_D @ (sk_C @ sk_D @ sk_C_1)))
% 1.96/2.21         | (r1_partfun1 @ sk_C_1 @ sk_D)
% 1.96/2.21         | ~ (v1_relat_1 @ sk_C_1)
% 1.96/2.21         | ~ (v1_funct_1 @ sk_C_1)
% 1.96/2.21         | ~ (r1_tarski @ (k1_relat_1 @ sk_C_1) @ (k1_relat_1 @ sk_D))
% 1.96/2.21         | (r1_partfun1 @ sk_C_1 @ sk_D)
% 1.96/2.21         | ~ (v1_funct_1 @ sk_D)
% 1.96/2.21         | ~ (v1_relat_1 @ sk_D)))
% 1.96/2.21         <= (~ (((sk_B) = (k1_xboole_0))) & 
% 1.96/2.21             (![X24 : $i]:
% 1.96/2.21                (~ (r2_hidden @ X24 @ (k1_relset_1 @ sk_A @ sk_B @ sk_C_1))
% 1.96/2.21                 | ((k1_funct_1 @ sk_C_1 @ X24) = (k1_funct_1 @ sk_D @ X24)))))),
% 1.96/2.21      inference('sup-', [status(thm)], ['116', '117'])).
% 1.96/2.21  thf('119', plain, ((v1_relat_1 @ sk_C_1)),
% 1.96/2.21      inference('demod', [status(thm)], ['49', '50'])).
% 1.96/2.21  thf('120', plain, ((v1_funct_1 @ sk_C_1)),
% 1.96/2.21      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.96/2.21  thf('121', plain,
% 1.96/2.21      ((((sk_A) = (k1_relat_1 @ sk_D))) <= (~ (((sk_B) = (k1_xboole_0))))),
% 1.96/2.21      inference('clc', [status(thm)], ['100', '101'])).
% 1.96/2.21  thf('122', plain, ((r1_tarski @ (k1_relat_1 @ sk_C_1) @ sk_A)),
% 1.96/2.21      inference('demod', [status(thm)], ['75', '76'])).
% 1.96/2.21  thf('123', plain, ((v1_funct_1 @ sk_D)),
% 1.96/2.21      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.96/2.21  thf('124', plain, ((v1_relat_1 @ sk_D)),
% 1.96/2.21      inference('demod', [status(thm)], ['41', '42'])).
% 1.96/2.21  thf('125', plain,
% 1.96/2.21      (((((k1_funct_1 @ sk_D @ (sk_C @ sk_D @ sk_C_1))
% 1.96/2.21           != (k1_funct_1 @ sk_D @ (sk_C @ sk_D @ sk_C_1)))
% 1.96/2.21         | (r1_partfun1 @ sk_C_1 @ sk_D)
% 1.96/2.21         | (r1_partfun1 @ sk_C_1 @ sk_D)))
% 1.96/2.21         <= (~ (((sk_B) = (k1_xboole_0))) & 
% 1.96/2.21             (![X24 : $i]:
% 1.96/2.21                (~ (r2_hidden @ X24 @ (k1_relset_1 @ sk_A @ sk_B @ sk_C_1))
% 1.96/2.21                 | ((k1_funct_1 @ sk_C_1 @ X24) = (k1_funct_1 @ sk_D @ X24)))))),
% 1.96/2.21      inference('demod', [status(thm)],
% 1.96/2.21                ['118', '119', '120', '121', '122', '123', '124'])).
% 1.96/2.21  thf('126', plain,
% 1.96/2.21      (((r1_partfun1 @ sk_C_1 @ sk_D))
% 1.96/2.21         <= (~ (((sk_B) = (k1_xboole_0))) & 
% 1.96/2.21             (![X24 : $i]:
% 1.96/2.21                (~ (r2_hidden @ X24 @ (k1_relset_1 @ sk_A @ sk_B @ sk_C_1))
% 1.96/2.21                 | ((k1_funct_1 @ sk_C_1 @ X24) = (k1_funct_1 @ sk_D @ X24)))))),
% 1.96/2.21      inference('simplify', [status(thm)], ['125'])).
% 1.96/2.21  thf('127', plain,
% 1.96/2.21      ((~ (r1_partfun1 @ sk_C_1 @ sk_D)) <= (~ ((r1_partfun1 @ sk_C_1 @ sk_D)))),
% 1.96/2.21      inference('split', [status(esa)], ['68'])).
% 1.96/2.21  thf('128', plain,
% 1.96/2.21      ((((sk_B) = (k1_xboole_0))) | ((r1_partfun1 @ sk_C_1 @ sk_D)) | 
% 1.96/2.21       ~
% 1.96/2.21       (![X24 : $i]:
% 1.96/2.21          (~ (r2_hidden @ X24 @ (k1_relset_1 @ sk_A @ sk_B @ sk_C_1))
% 1.96/2.21           | ((k1_funct_1 @ sk_C_1 @ X24) = (k1_funct_1 @ sk_D @ X24))))),
% 1.96/2.21      inference('sup-', [status(thm)], ['126', '127'])).
% 1.96/2.21  thf('129', plain,
% 1.96/2.21      (~ (((k1_funct_1 @ sk_C_1 @ sk_E) = (k1_funct_1 @ sk_D @ sk_E))) | 
% 1.96/2.21       ~ ((r1_partfun1 @ sk_C_1 @ sk_D))),
% 1.96/2.21      inference('split', [status(esa)], ['68'])).
% 1.96/2.21  thf('130', plain,
% 1.96/2.21      (((k1_relset_1 @ sk_A @ sk_B @ sk_C_1) = (k1_relat_1 @ sk_C_1))),
% 1.96/2.21      inference('sup-', [status(thm)], ['2', '3'])).
% 1.96/2.21  thf('131', plain,
% 1.96/2.21      (((r2_hidden @ sk_E @ (k1_relset_1 @ sk_A @ sk_B @ sk_C_1)))
% 1.96/2.21         <= (((r2_hidden @ sk_E @ (k1_relset_1 @ sk_A @ sk_B @ sk_C_1))))),
% 1.96/2.21      inference('split', [status(esa)], ['0'])).
% 1.96/2.21  thf('132', plain,
% 1.96/2.21      (((r2_hidden @ sk_E @ (k1_relat_1 @ sk_C_1)))
% 1.96/2.21         <= (((r2_hidden @ sk_E @ (k1_relset_1 @ sk_A @ sk_B @ sk_C_1))))),
% 1.96/2.21      inference('sup+', [status(thm)], ['130', '131'])).
% 1.96/2.21  thf('133', plain,
% 1.96/2.21      ((![X24 : $i]:
% 1.96/2.21          (~ (r2_hidden @ X24 @ (k1_relat_1 @ sk_C_1))
% 1.96/2.21           | ((k1_funct_1 @ sk_C_1 @ X24) = (k1_funct_1 @ sk_D @ X24))))
% 1.96/2.21         <= ((![X24 : $i]:
% 1.96/2.21                (~ (r2_hidden @ X24 @ (k1_relset_1 @ sk_A @ sk_B @ sk_C_1))
% 1.96/2.21                 | ((k1_funct_1 @ sk_C_1 @ X24) = (k1_funct_1 @ sk_D @ X24)))))),
% 1.96/2.21      inference('demod', [status(thm)], ['113', '114'])).
% 1.96/2.21  thf('134', plain,
% 1.96/2.21      ((((k1_funct_1 @ sk_C_1 @ sk_E) = (k1_funct_1 @ sk_D @ sk_E)))
% 1.96/2.21         <= (((r2_hidden @ sk_E @ (k1_relset_1 @ sk_A @ sk_B @ sk_C_1))) & 
% 1.96/2.21             (![X24 : $i]:
% 1.96/2.21                (~ (r2_hidden @ X24 @ (k1_relset_1 @ sk_A @ sk_B @ sk_C_1))
% 1.96/2.21                 | ((k1_funct_1 @ sk_C_1 @ X24) = (k1_funct_1 @ sk_D @ X24)))))),
% 1.96/2.21      inference('sup-', [status(thm)], ['132', '133'])).
% 1.96/2.21  thf('135', plain,
% 1.96/2.21      ((((k1_funct_1 @ sk_C_1 @ sk_E) != (k1_funct_1 @ sk_D @ sk_E)))
% 1.96/2.21         <= (~ (((k1_funct_1 @ sk_C_1 @ sk_E) = (k1_funct_1 @ sk_D @ sk_E))))),
% 1.96/2.21      inference('split', [status(esa)], ['68'])).
% 1.96/2.21  thf('136', plain,
% 1.96/2.21      ((((k1_funct_1 @ sk_D @ sk_E) != (k1_funct_1 @ sk_D @ sk_E)))
% 1.96/2.21         <= (~ (((k1_funct_1 @ sk_C_1 @ sk_E) = (k1_funct_1 @ sk_D @ sk_E))) & 
% 1.96/2.21             ((r2_hidden @ sk_E @ (k1_relset_1 @ sk_A @ sk_B @ sk_C_1))) & 
% 1.96/2.21             (![X24 : $i]:
% 1.96/2.21                (~ (r2_hidden @ X24 @ (k1_relset_1 @ sk_A @ sk_B @ sk_C_1))
% 1.96/2.21                 | ((k1_funct_1 @ sk_C_1 @ X24) = (k1_funct_1 @ sk_D @ X24)))))),
% 1.96/2.21      inference('sup-', [status(thm)], ['134', '135'])).
% 1.96/2.21  thf('137', plain,
% 1.96/2.21      (~
% 1.96/2.21       (![X24 : $i]:
% 1.96/2.21          (~ (r2_hidden @ X24 @ (k1_relset_1 @ sk_A @ sk_B @ sk_C_1))
% 1.96/2.21           | ((k1_funct_1 @ sk_C_1 @ X24) = (k1_funct_1 @ sk_D @ X24)))) | 
% 1.96/2.21       (((k1_funct_1 @ sk_C_1 @ sk_E) = (k1_funct_1 @ sk_D @ sk_E))) | 
% 1.96/2.21       ~ ((r2_hidden @ sk_E @ (k1_relset_1 @ sk_A @ sk_B @ sk_C_1)))),
% 1.96/2.21      inference('simplify', [status(thm)], ['136'])).
% 1.96/2.21  thf('138', plain,
% 1.96/2.21      ((((sk_A) = (k1_xboole_0))) | ~ (((sk_B) = (k1_xboole_0)))),
% 1.96/2.21      inference('split', [status(esa)], ['6'])).
% 1.96/2.21  thf('139', plain,
% 1.96/2.21      (((r1_partfun1 @ sk_C_1 @ sk_D)) | 
% 1.96/2.21       (![X24 : $i]:
% 1.96/2.21          (~ (r2_hidden @ X24 @ (k1_relset_1 @ sk_A @ sk_B @ sk_C_1))
% 1.96/2.21           | ((k1_funct_1 @ sk_C_1 @ X24) = (k1_funct_1 @ sk_D @ X24))))),
% 1.96/2.21      inference('split', [status(esa)], ['112'])).
% 1.96/2.21  thf('140', plain,
% 1.96/2.21      (((r2_hidden @ sk_E @ (k1_relset_1 @ sk_A @ sk_B @ sk_C_1))) | 
% 1.96/2.21       ~ ((r1_partfun1 @ sk_C_1 @ sk_D))),
% 1.96/2.21      inference('split', [status(esa)], ['0'])).
% 1.96/2.21  thf('141', plain,
% 1.96/2.21      (((r2_hidden @ sk_E @ (k1_relset_1 @ sk_A @ sk_B @ sk_C_1)))),
% 1.96/2.21      inference('sat_resolution*', [status(thm)],
% 1.96/2.21                ['70', '128', '129', '137', '138', '139', '140'])).
% 1.96/2.21  thf('142', plain, ((r2_hidden @ sk_E @ (k1_relat_1 @ sk_C_1))),
% 1.96/2.21      inference('simpl_trail', [status(thm)], ['5', '141'])).
% 1.96/2.21  thf('143', plain, ((r1_tarski @ (k1_relat_1 @ sk_C_1) @ sk_A)),
% 1.96/2.21      inference('demod', [status(thm)], ['75', '76'])).
% 1.96/2.21  thf('144', plain,
% 1.96/2.21      ((((sk_A) = (k1_relat_1 @ sk_D))) <= (~ (((sk_B) = (k1_xboole_0))))),
% 1.96/2.21      inference('clc', [status(thm)], ['100', '101'])).
% 1.96/2.21  thf('145', plain,
% 1.96/2.21      (![X21 : $i, X22 : $i, X23 : $i]:
% 1.96/2.21         (~ (v1_relat_1 @ X21)
% 1.96/2.21          | ~ (v1_funct_1 @ X21)
% 1.96/2.21          | ~ (r1_partfun1 @ X22 @ X21)
% 1.96/2.21          | ((k1_funct_1 @ X22 @ X23) = (k1_funct_1 @ X21 @ X23))
% 1.96/2.21          | ~ (r2_hidden @ X23 @ (k1_relat_1 @ X22))
% 1.96/2.21          | ~ (r1_tarski @ (k1_relat_1 @ X22) @ (k1_relat_1 @ X21))
% 1.96/2.21          | ~ (v1_funct_1 @ X22)
% 1.96/2.21          | ~ (v1_relat_1 @ X22))),
% 1.96/2.21      inference('cnf', [status(esa)], [t132_partfun1])).
% 1.96/2.21  thf('146', plain,
% 1.96/2.21      ((![X0 : $i, X1 : $i]:
% 1.96/2.21          (~ (r1_tarski @ (k1_relat_1 @ X0) @ sk_A)
% 1.96/2.21           | ~ (v1_relat_1 @ X0)
% 1.96/2.21           | ~ (v1_funct_1 @ X0)
% 1.96/2.21           | ~ (r2_hidden @ X1 @ (k1_relat_1 @ X0))
% 1.96/2.21           | ((k1_funct_1 @ X0 @ X1) = (k1_funct_1 @ sk_D @ X1))
% 1.96/2.21           | ~ (r1_partfun1 @ X0 @ sk_D)
% 1.96/2.21           | ~ (v1_funct_1 @ sk_D)
% 1.96/2.21           | ~ (v1_relat_1 @ sk_D)))
% 1.96/2.21         <= (~ (((sk_B) = (k1_xboole_0))))),
% 1.96/2.21      inference('sup-', [status(thm)], ['144', '145'])).
% 1.96/2.21  thf('147', plain, ((v1_funct_1 @ sk_D)),
% 1.96/2.21      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.96/2.21  thf('148', plain, ((v1_relat_1 @ sk_D)),
% 1.96/2.21      inference('demod', [status(thm)], ['41', '42'])).
% 1.96/2.21  thf('149', plain,
% 1.96/2.21      ((![X0 : $i, X1 : $i]:
% 1.96/2.21          (~ (r1_tarski @ (k1_relat_1 @ X0) @ sk_A)
% 1.96/2.21           | ~ (v1_relat_1 @ X0)
% 1.96/2.21           | ~ (v1_funct_1 @ X0)
% 1.96/2.21           | ~ (r2_hidden @ X1 @ (k1_relat_1 @ X0))
% 1.96/2.21           | ((k1_funct_1 @ X0 @ X1) = (k1_funct_1 @ sk_D @ X1))
% 1.96/2.21           | ~ (r1_partfun1 @ X0 @ sk_D)))
% 1.96/2.21         <= (~ (((sk_B) = (k1_xboole_0))))),
% 1.96/2.21      inference('demod', [status(thm)], ['146', '147', '148'])).
% 1.96/2.21  thf('150', plain, ((r2_hidden @ sk_E @ (k1_relat_1 @ sk_C_1))),
% 1.96/2.21      inference('simpl_trail', [status(thm)], ['5', '141'])).
% 1.96/2.21  thf('151', plain,
% 1.96/2.21      (((r1_tarski @ (k1_relat_1 @ sk_C_1) @ k1_xboole_0))
% 1.96/2.21         <= ((((sk_A) = (k1_xboole_0))))),
% 1.96/2.21      inference('demod', [status(thm)], ['13', '16'])).
% 1.96/2.21  thf('152', plain,
% 1.96/2.21      ((((k1_xboole_0) = (k1_relat_1 @ sk_D))) <= ((((sk_A) = (k1_xboole_0))))),
% 1.96/2.21      inference('demod', [status(thm)], ['28', '34'])).
% 1.96/2.21  thf('153', plain,
% 1.96/2.21      (![X21 : $i, X22 : $i, X23 : $i]:
% 1.96/2.21         (~ (v1_relat_1 @ X21)
% 1.96/2.21          | ~ (v1_funct_1 @ X21)
% 1.96/2.21          | ~ (r1_partfun1 @ X22 @ X21)
% 1.96/2.21          | ((k1_funct_1 @ X22 @ X23) = (k1_funct_1 @ X21 @ X23))
% 1.96/2.21          | ~ (r2_hidden @ X23 @ (k1_relat_1 @ X22))
% 1.96/2.21          | ~ (r1_tarski @ (k1_relat_1 @ X22) @ (k1_relat_1 @ X21))
% 1.96/2.21          | ~ (v1_funct_1 @ X22)
% 1.96/2.21          | ~ (v1_relat_1 @ X22))),
% 1.96/2.21      inference('cnf', [status(esa)], [t132_partfun1])).
% 1.96/2.21  thf('154', plain,
% 1.96/2.21      ((![X0 : $i, X1 : $i]:
% 1.96/2.21          (~ (r1_tarski @ (k1_relat_1 @ X0) @ k1_xboole_0)
% 1.96/2.21           | ~ (v1_relat_1 @ X0)
% 1.96/2.21           | ~ (v1_funct_1 @ X0)
% 1.96/2.21           | ~ (r2_hidden @ X1 @ (k1_relat_1 @ X0))
% 1.96/2.21           | ((k1_funct_1 @ X0 @ X1) = (k1_funct_1 @ sk_D @ X1))
% 1.96/2.21           | ~ (r1_partfun1 @ X0 @ sk_D)
% 1.96/2.21           | ~ (v1_funct_1 @ sk_D)
% 1.96/2.21           | ~ (v1_relat_1 @ sk_D)))
% 1.96/2.21         <= ((((sk_A) = (k1_xboole_0))))),
% 1.96/2.21      inference('sup-', [status(thm)], ['152', '153'])).
% 1.96/2.21  thf('155', plain, ((v1_funct_1 @ sk_D)),
% 1.96/2.21      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.96/2.21  thf('156', plain, ((v1_relat_1 @ sk_D)),
% 1.96/2.21      inference('demod', [status(thm)], ['41', '42'])).
% 1.96/2.21  thf('157', plain,
% 1.96/2.21      ((![X0 : $i, X1 : $i]:
% 1.96/2.21          (~ (r1_tarski @ (k1_relat_1 @ X0) @ k1_xboole_0)
% 1.96/2.21           | ~ (v1_relat_1 @ X0)
% 1.96/2.21           | ~ (v1_funct_1 @ X0)
% 1.96/2.21           | ~ (r2_hidden @ X1 @ (k1_relat_1 @ X0))
% 1.96/2.21           | ((k1_funct_1 @ X0 @ X1) = (k1_funct_1 @ sk_D @ X1))
% 1.96/2.21           | ~ (r1_partfun1 @ X0 @ sk_D)))
% 1.96/2.21         <= ((((sk_A) = (k1_xboole_0))))),
% 1.96/2.21      inference('demod', [status(thm)], ['154', '155', '156'])).
% 1.96/2.21  thf('158', plain,
% 1.96/2.21      ((![X0 : $i]:
% 1.96/2.21          (~ (r1_partfun1 @ sk_C_1 @ sk_D)
% 1.96/2.21           | ((k1_funct_1 @ sk_C_1 @ X0) = (k1_funct_1 @ sk_D @ X0))
% 1.96/2.21           | ~ (r2_hidden @ X0 @ (k1_relat_1 @ sk_C_1))
% 1.96/2.21           | ~ (v1_funct_1 @ sk_C_1)
% 1.96/2.21           | ~ (v1_relat_1 @ sk_C_1)))
% 1.96/2.21         <= ((((sk_A) = (k1_xboole_0))))),
% 1.96/2.21      inference('sup-', [status(thm)], ['151', '157'])).
% 1.96/2.21  thf('159', plain,
% 1.96/2.21      (((r1_partfun1 @ sk_C_1 @ sk_D)) <= (((r1_partfun1 @ sk_C_1 @ sk_D)))),
% 1.96/2.21      inference('split', [status(esa)], ['112'])).
% 1.96/2.21  thf('160', plain, (((r1_partfun1 @ sk_C_1 @ sk_D))),
% 1.96/2.21      inference('sat_resolution*', [status(thm)],
% 1.96/2.21                ['70', '128', '129', '140', '137', '138', '139'])).
% 1.96/2.21  thf('161', plain, ((r1_partfun1 @ sk_C_1 @ sk_D)),
% 1.96/2.21      inference('simpl_trail', [status(thm)], ['159', '160'])).
% 1.96/2.21  thf('162', plain, ((v1_funct_1 @ sk_C_1)),
% 1.96/2.21      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.96/2.21  thf('163', plain, ((v1_relat_1 @ sk_C_1)),
% 1.96/2.21      inference('demod', [status(thm)], ['49', '50'])).
% 1.96/2.21  thf('164', plain,
% 1.96/2.21      ((![X0 : $i]:
% 1.96/2.21          (((k1_funct_1 @ sk_C_1 @ X0) = (k1_funct_1 @ sk_D @ X0))
% 1.96/2.21           | ~ (r2_hidden @ X0 @ (k1_relat_1 @ sk_C_1))))
% 1.96/2.21         <= ((((sk_A) = (k1_xboole_0))))),
% 1.96/2.21      inference('demod', [status(thm)], ['158', '161', '162', '163'])).
% 1.96/2.21  thf('165', plain,
% 1.96/2.21      ((((k1_funct_1 @ sk_C_1 @ sk_E) = (k1_funct_1 @ sk_D @ sk_E)))
% 1.96/2.21         <= ((((sk_A) = (k1_xboole_0))))),
% 1.96/2.21      inference('sup-', [status(thm)], ['150', '164'])).
% 1.96/2.21  thf('166', plain,
% 1.96/2.21      ((((k1_funct_1 @ sk_C_1 @ sk_E) != (k1_funct_1 @ sk_D @ sk_E)))
% 1.96/2.21         <= (~ (((k1_funct_1 @ sk_C_1 @ sk_E) = (k1_funct_1 @ sk_D @ sk_E))))),
% 1.96/2.21      inference('split', [status(esa)], ['68'])).
% 1.96/2.21  thf('167', plain,
% 1.96/2.21      (~ (((k1_funct_1 @ sk_C_1 @ sk_E) = (k1_funct_1 @ sk_D @ sk_E)))),
% 1.96/2.21      inference('sat_resolution*', [status(thm)],
% 1.96/2.21                ['70', '128', '140', '137', '138', '139', '129'])).
% 1.96/2.21  thf('168', plain,
% 1.96/2.21      (((k1_funct_1 @ sk_C_1 @ sk_E) != (k1_funct_1 @ sk_D @ sk_E))),
% 1.96/2.21      inference('simpl_trail', [status(thm)], ['166', '167'])).
% 1.96/2.21  thf('169', plain, (~ (((sk_A) = (k1_xboole_0)))),
% 1.96/2.21      inference('simplify_reflect-', [status(thm)], ['165', '168'])).
% 1.96/2.21  thf('170', plain,
% 1.96/2.21      (~ (((sk_B) = (k1_xboole_0))) | (((sk_A) = (k1_xboole_0)))),
% 1.96/2.21      inference('split', [status(esa)], ['6'])).
% 1.96/2.21  thf('171', plain, (~ (((sk_B) = (k1_xboole_0)))),
% 1.96/2.21      inference('sat_resolution*', [status(thm)], ['169', '170'])).
% 1.96/2.21  thf('172', plain,
% 1.96/2.21      (![X0 : $i, X1 : $i]:
% 1.96/2.21         (~ (r1_tarski @ (k1_relat_1 @ X0) @ sk_A)
% 1.96/2.21          | ~ (v1_relat_1 @ X0)
% 1.96/2.21          | ~ (v1_funct_1 @ X0)
% 1.96/2.21          | ~ (r2_hidden @ X1 @ (k1_relat_1 @ X0))
% 1.96/2.21          | ((k1_funct_1 @ X0 @ X1) = (k1_funct_1 @ sk_D @ X1))
% 1.96/2.21          | ~ (r1_partfun1 @ X0 @ sk_D))),
% 1.96/2.21      inference('simpl_trail', [status(thm)], ['149', '171'])).
% 1.96/2.21  thf('173', plain,
% 1.96/2.21      (![X0 : $i]:
% 1.96/2.21         (~ (r1_partfun1 @ sk_C_1 @ sk_D)
% 1.96/2.21          | ((k1_funct_1 @ sk_C_1 @ X0) = (k1_funct_1 @ sk_D @ X0))
% 1.96/2.21          | ~ (r2_hidden @ X0 @ (k1_relat_1 @ sk_C_1))
% 1.96/2.21          | ~ (v1_funct_1 @ sk_C_1)
% 1.96/2.21          | ~ (v1_relat_1 @ sk_C_1))),
% 1.96/2.21      inference('sup-', [status(thm)], ['143', '172'])).
% 1.96/2.21  thf('174', plain, ((r1_partfun1 @ sk_C_1 @ sk_D)),
% 1.96/2.21      inference('simpl_trail', [status(thm)], ['159', '160'])).
% 1.96/2.21  thf('175', plain, ((v1_funct_1 @ sk_C_1)),
% 1.96/2.21      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.96/2.21  thf('176', plain, ((v1_relat_1 @ sk_C_1)),
% 1.96/2.21      inference('demod', [status(thm)], ['49', '50'])).
% 1.96/2.21  thf('177', plain,
% 1.96/2.21      (![X0 : $i]:
% 1.96/2.21         (((k1_funct_1 @ sk_C_1 @ X0) = (k1_funct_1 @ sk_D @ X0))
% 1.96/2.21          | ~ (r2_hidden @ X0 @ (k1_relat_1 @ sk_C_1)))),
% 1.96/2.21      inference('demod', [status(thm)], ['173', '174', '175', '176'])).
% 1.96/2.21  thf('178', plain,
% 1.96/2.21      (((k1_funct_1 @ sk_C_1 @ sk_E) = (k1_funct_1 @ sk_D @ sk_E))),
% 1.96/2.21      inference('sup-', [status(thm)], ['142', '177'])).
% 1.96/2.21  thf('179', plain,
% 1.96/2.21      (((k1_funct_1 @ sk_C_1 @ sk_E) != (k1_funct_1 @ sk_D @ sk_E))),
% 1.96/2.21      inference('simpl_trail', [status(thm)], ['166', '167'])).
% 1.96/2.21  thf('180', plain, ($false),
% 1.96/2.21      inference('simplify_reflect-', [status(thm)], ['178', '179'])).
% 1.96/2.21  
% 1.96/2.21  % SZS output end Refutation
% 1.96/2.21  
% 1.96/2.22  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
