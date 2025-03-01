%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.SKKvxPhR3J

% Computer   : n019.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 14:00:23 EST 2020

% Result     : Theorem 11.21s
% Output     : Refutation 11.21s
% Verified   : 
% Statistics : Number of formulae       :  124 (1106 expanded)
%              Number of leaves         :   47 ( 355 expanded)
%              Depth                    :   24
%              Number of atoms          :  975 (14540 expanded)
%              Number of equality atoms :   40 ( 415 expanded)
%              Maximal formula depth    :   18 (   7 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(v1_funct_1_type,type,(
    v1_funct_1: $i > $o )).

thf(zip_tseitin_0_type,type,(
    zip_tseitin_0: $i > $i > $o )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(v1_funct_2_type,type,(
    v1_funct_2: $i > $i > $i > $o )).

thf(zip_tseitin_2_type,type,(
    zip_tseitin_2: $i > $i > $i > $i > $o )).

thf(k3_funct_2_type,type,(
    k3_funct_2: $i > $i > $i > $i > $i )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(sk_D_1_type,type,(
    sk_D_1: $i )).

thf(k1_relat_1_type,type,(
    k1_relat_1: $i > $i )).

thf(k1_funct_1_type,type,(
    k1_funct_1: $i > $i > $i )).

thf(zip_tseitin_3_type,type,(
    zip_tseitin_3: $i > $i > $i > $o )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(v1_xboole_0_type,type,(
    v1_xboole_0: $i > $o )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(k1_relset_1_type,type,(
    k1_relset_1: $i > $i > $i > $i )).

thf(k2_zfmisc_1_type,type,(
    k2_zfmisc_1: $i > $i > $i )).

thf(zip_tseitin_1_type,type,(
    zip_tseitin_1: $i > $i > $i > $o )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k2_relat_1_type,type,(
    k2_relat_1: $i > $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(k2_relset_1_type,type,(
    k2_relset_1: $i > $i > $i > $i )).

thf(sk_D_type,type,(
    sk_D: $i > $i > $i > $i )).

thf(t191_funct_2,conjecture,(
    ! [A: $i,B: $i] :
      ( ~ ( v1_xboole_0 @ B )
     => ! [C: $i] :
          ( ~ ( v1_xboole_0 @ C )
         => ! [D: $i] :
              ( ( ( v1_funct_1 @ D )
                & ( v1_funct_2 @ D @ B @ C )
                & ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ C ) ) ) )
             => ( ! [E: $i] :
                    ( ( m1_subset_1 @ E @ B )
                   => ( r2_hidden @ ( k3_funct_2 @ B @ C @ D @ E ) @ A ) )
               => ( r1_tarski @ ( k2_relset_1 @ B @ C @ D ) @ A ) ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i] :
        ( ~ ( v1_xboole_0 @ B )
       => ! [C: $i] :
            ( ~ ( v1_xboole_0 @ C )
           => ! [D: $i] :
                ( ( ( v1_funct_1 @ D )
                  & ( v1_funct_2 @ D @ B @ C )
                  & ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ C ) ) ) )
               => ( ! [E: $i] :
                      ( ( m1_subset_1 @ E @ B )
                     => ( r2_hidden @ ( k3_funct_2 @ B @ C @ D @ E ) @ A ) )
                 => ( r1_tarski @ ( k2_relset_1 @ B @ C @ D ) @ A ) ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t191_funct_2])).

thf('0',plain,(
    ~ ( r1_tarski @ ( k2_relset_1 @ sk_B @ sk_C @ sk_D_1 ) @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,(
    m1_subset_1 @ sk_D_1 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B @ sk_C ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(redefinition_k2_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( k2_relset_1 @ A @ B @ C )
        = ( k2_relat_1 @ C ) ) ) )).

thf('2',plain,(
    ! [X18: $i,X19: $i,X20: $i] :
      ( ( ( k2_relset_1 @ X19 @ X20 @ X18 )
        = ( k2_relat_1 @ X18 ) )
      | ~ ( m1_subset_1 @ X18 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X19 @ X20 ) ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k2_relset_1])).

thf('3',plain,
    ( ( k2_relset_1 @ sk_B @ sk_C @ sk_D_1 )
    = ( k2_relat_1 @ sk_D_1 ) ),
    inference('sup-',[status(thm)],['1','2'])).

thf('4',plain,(
    ~ ( r1_tarski @ ( k2_relat_1 @ sk_D_1 ) @ sk_A ) ),
    inference(demod,[status(thm)],['0','3'])).

thf(t5_funct_2,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( v1_funct_1 @ C )
        & ( v1_relat_1 @ C ) )
     => ( ( ! [D: $i] :
              ( ( r2_hidden @ D @ A )
             => ( r2_hidden @ ( k1_funct_1 @ C @ D ) @ B ) )
          & ( ( k1_relat_1 @ C )
            = A ) )
       => ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
          & ( v1_funct_2 @ C @ A @ B )
          & ( v1_funct_1 @ C ) ) ) ) )).

thf(zf_stmt_1,axiom,(
    ! [D: $i,C: $i,B: $i,A: $i] :
      ( ( ( r2_hidden @ D @ A )
       => ( r2_hidden @ ( k1_funct_1 @ C @ D ) @ B ) )
     => ( zip_tseitin_2 @ D @ C @ B @ A ) ) )).

thf('5',plain,(
    ! [X33: $i,X34: $i,X35: $i,X36: $i] :
      ( ( zip_tseitin_2 @ X33 @ X34 @ X35 @ X36 )
      | ( r2_hidden @ X33 @ X36 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_1])).

thf('6',plain,(
    v1_funct_2 @ sk_D_1 @ sk_B @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

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

thf(zf_stmt_2,axiom,(
    ! [C: $i,B: $i,A: $i] :
      ( ( zip_tseitin_1 @ C @ B @ A )
     => ( ( v1_funct_2 @ C @ A @ B )
      <=> ( A
          = ( k1_relset_1 @ A @ B @ C ) ) ) ) )).

thf('7',plain,(
    ! [X23: $i,X24: $i,X25: $i] :
      ( ~ ( v1_funct_2 @ X25 @ X23 @ X24 )
      | ( X23
        = ( k1_relset_1 @ X23 @ X24 @ X25 ) )
      | ~ ( zip_tseitin_1 @ X25 @ X24 @ X23 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_2])).

thf('8',plain,
    ( ~ ( zip_tseitin_1 @ sk_D_1 @ sk_C @ sk_B )
    | ( sk_B
      = ( k1_relset_1 @ sk_B @ sk_C @ sk_D_1 ) ) ),
    inference('sup-',[status(thm)],['6','7'])).

thf('9',plain,(
    m1_subset_1 @ sk_D_1 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B @ sk_C ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(redefinition_k1_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( k1_relset_1 @ A @ B @ C )
        = ( k1_relat_1 @ C ) ) ) )).

thf('10',plain,(
    ! [X15: $i,X16: $i,X17: $i] :
      ( ( ( k1_relset_1 @ X16 @ X17 @ X15 )
        = ( k1_relat_1 @ X15 ) )
      | ~ ( m1_subset_1 @ X15 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X16 @ X17 ) ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k1_relset_1])).

thf('11',plain,
    ( ( k1_relset_1 @ sk_B @ sk_C @ sk_D_1 )
    = ( k1_relat_1 @ sk_D_1 ) ),
    inference('sup-',[status(thm)],['9','10'])).

thf('12',plain,
    ( ~ ( zip_tseitin_1 @ sk_D_1 @ sk_C @ sk_B )
    | ( sk_B
      = ( k1_relat_1 @ sk_D_1 ) ) ),
    inference(demod,[status(thm)],['8','11'])).

thf('13',plain,(
    m1_subset_1 @ sk_D_1 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B @ sk_C ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(zf_stmt_3,type,(
    zip_tseitin_1: $i > $i > $i > $o )).

thf(zf_stmt_4,type,(
    zip_tseitin_0: $i > $i > $o )).

thf(zf_stmt_5,axiom,(
    ! [B: $i,A: $i] :
      ( ( ( B = k1_xboole_0 )
       => ( A = k1_xboole_0 ) )
     => ( zip_tseitin_0 @ B @ A ) ) )).

thf(zf_stmt_6,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( ( zip_tseitin_0 @ B @ A )
         => ( zip_tseitin_1 @ C @ B @ A ) )
        & ( ( B = k1_xboole_0 )
         => ( ( A = k1_xboole_0 )
            | ( ( v1_funct_2 @ C @ A @ B )
            <=> ( C = k1_xboole_0 ) ) ) ) ) ) )).

thf('14',plain,(
    ! [X26: $i,X27: $i,X28: $i] :
      ( ~ ( zip_tseitin_0 @ X26 @ X27 )
      | ( zip_tseitin_1 @ X28 @ X26 @ X27 )
      | ~ ( m1_subset_1 @ X28 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X27 @ X26 ) ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_6])).

thf('15',plain,
    ( ( zip_tseitin_1 @ sk_D_1 @ sk_C @ sk_B )
    | ~ ( zip_tseitin_0 @ sk_C @ sk_B ) ),
    inference('sup-',[status(thm)],['13','14'])).

thf('16',plain,(
    m1_subset_1 @ sk_D_1 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B @ sk_C ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(dt_k2_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( m1_subset_1 @ ( k2_relset_1 @ A @ B @ C ) @ ( k1_zfmisc_1 @ B ) ) ) )).

thf('17',plain,(
    ! [X12: $i,X13: $i,X14: $i] :
      ( ( m1_subset_1 @ ( k2_relset_1 @ X12 @ X13 @ X14 ) @ ( k1_zfmisc_1 @ X13 ) )
      | ~ ( m1_subset_1 @ X14 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X12 @ X13 ) ) ) ) ),
    inference(cnf,[status(esa)],[dt_k2_relset_1])).

thf('18',plain,(
    m1_subset_1 @ ( k2_relset_1 @ sk_B @ sk_C @ sk_D_1 ) @ ( k1_zfmisc_1 @ sk_C ) ),
    inference('sup-',[status(thm)],['16','17'])).

thf(t3_subset,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ A @ ( k1_zfmisc_1 @ B ) )
    <=> ( r1_tarski @ A @ B ) ) )).

thf('19',plain,(
    ! [X6: $i,X7: $i] :
      ( ( r1_tarski @ X6 @ X7 )
      | ~ ( m1_subset_1 @ X6 @ ( k1_zfmisc_1 @ X7 ) ) ) ),
    inference(cnf,[status(esa)],[t3_subset])).

thf('20',plain,(
    r1_tarski @ ( k2_relset_1 @ sk_B @ sk_C @ sk_D_1 ) @ sk_C ),
    inference('sup-',[status(thm)],['18','19'])).

thf('21',plain,(
    ! [X21: $i,X22: $i] :
      ( ( zip_tseitin_0 @ X21 @ X22 )
      | ( X21 = k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_5])).

thf(t2_xboole_1,axiom,(
    ! [A: $i] :
      ( r1_tarski @ k1_xboole_0 @ A ) )).

thf('22',plain,(
    ! [X3: $i] :
      ( r1_tarski @ k1_xboole_0 @ X3 ) ),
    inference(cnf,[status(esa)],[t2_xboole_1])).

thf('23',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( r1_tarski @ X0 @ X1 )
      | ( zip_tseitin_0 @ X0 @ X2 ) ) ),
    inference('sup+',[status(thm)],['21','22'])).

thf(d10_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( A = B )
    <=> ( ( r1_tarski @ A @ B )
        & ( r1_tarski @ B @ A ) ) ) )).

thf('24',plain,(
    ! [X0: $i,X2: $i] :
      ( ( X0 = X2 )
      | ~ ( r1_tarski @ X2 @ X0 )
      | ~ ( r1_tarski @ X0 @ X2 ) ) ),
    inference(cnf,[status(esa)],[d10_xboole_0])).

thf('25',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( zip_tseitin_0 @ X1 @ X2 )
      | ~ ( r1_tarski @ X0 @ X1 )
      | ( X0 = X1 ) ) ),
    inference('sup-',[status(thm)],['23','24'])).

thf('26',plain,(
    ! [X0: $i] :
      ( ( ( k2_relset_1 @ sk_B @ sk_C @ sk_D_1 )
        = sk_C )
      | ( zip_tseitin_0 @ sk_C @ X0 ) ) ),
    inference('sup-',[status(thm)],['20','25'])).

thf('27',plain,(
    ~ ( r1_tarski @ ( k2_relset_1 @ sk_B @ sk_C @ sk_D_1 ) @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('28',plain,(
    ! [X0: $i] :
      ( ~ ( r1_tarski @ sk_C @ sk_A )
      | ( zip_tseitin_0 @ sk_C @ X0 ) ) ),
    inference('sup-',[status(thm)],['26','27'])).

thf('29',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( r1_tarski @ X0 @ X1 )
      | ( zip_tseitin_0 @ X0 @ X2 ) ) ),
    inference('sup+',[status(thm)],['21','22'])).

thf('30',plain,(
    ! [X0: $i] :
      ( zip_tseitin_0 @ sk_C @ X0 ) ),
    inference(clc,[status(thm)],['28','29'])).

thf('31',plain,(
    zip_tseitin_1 @ sk_D_1 @ sk_C @ sk_B ),
    inference(demod,[status(thm)],['15','30'])).

thf('32',plain,
    ( sk_B
    = ( k1_relat_1 @ sk_D_1 ) ),
    inference(demod,[status(thm)],['12','31'])).

thf(zf_stmt_7,type,(
    zip_tseitin_3: $i > $i > $i > $o )).

thf(zf_stmt_8,axiom,(
    ! [C: $i,B: $i,A: $i] :
      ( ( zip_tseitin_3 @ C @ B @ A )
     => ( ( v1_funct_1 @ C )
        & ( v1_funct_2 @ C @ A @ B )
        & ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) ) )).

thf(zf_stmt_9,type,(
    zip_tseitin_2: $i > $i > $i > $i > $o )).

thf(zf_stmt_10,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( v1_relat_1 @ C )
        & ( v1_funct_1 @ C ) )
     => ( ( ( ( k1_relat_1 @ C )
            = A )
          & ! [D: $i] :
              ( zip_tseitin_2 @ D @ C @ B @ A ) )
       => ( zip_tseitin_3 @ C @ B @ A ) ) ) )).

thf('33',plain,(
    ! [X40: $i,X41: $i,X42: $i] :
      ( ( ( k1_relat_1 @ X41 )
       != X40 )
      | ~ ( zip_tseitin_2 @ ( sk_D @ X41 @ X42 @ X40 ) @ X41 @ X42 @ X40 )
      | ( zip_tseitin_3 @ X41 @ X42 @ X40 )
      | ~ ( v1_funct_1 @ X41 )
      | ~ ( v1_relat_1 @ X41 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_10])).

thf('34',plain,(
    ! [X41: $i,X42: $i] :
      ( ~ ( v1_relat_1 @ X41 )
      | ~ ( v1_funct_1 @ X41 )
      | ( zip_tseitin_3 @ X41 @ X42 @ ( k1_relat_1 @ X41 ) )
      | ~ ( zip_tseitin_2 @ ( sk_D @ X41 @ X42 @ ( k1_relat_1 @ X41 ) ) @ X41 @ X42 @ ( k1_relat_1 @ X41 ) ) ) ),
    inference(simplify,[status(thm)],['33'])).

thf('35',plain,(
    ! [X0: $i] :
      ( ~ ( zip_tseitin_2 @ ( sk_D @ sk_D_1 @ X0 @ sk_B ) @ sk_D_1 @ X0 @ ( k1_relat_1 @ sk_D_1 ) )
      | ( zip_tseitin_3 @ sk_D_1 @ X0 @ ( k1_relat_1 @ sk_D_1 ) )
      | ~ ( v1_funct_1 @ sk_D_1 )
      | ~ ( v1_relat_1 @ sk_D_1 ) ) ),
    inference('sup-',[status(thm)],['32','34'])).

thf('36',plain,
    ( sk_B
    = ( k1_relat_1 @ sk_D_1 ) ),
    inference(demod,[status(thm)],['12','31'])).

thf('37',plain,
    ( sk_B
    = ( k1_relat_1 @ sk_D_1 ) ),
    inference(demod,[status(thm)],['12','31'])).

thf('38',plain,(
    v1_funct_1 @ sk_D_1 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('39',plain,(
    m1_subset_1 @ sk_D_1 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B @ sk_C ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(cc1_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( v1_relat_1 @ C ) ) )).

thf('40',plain,(
    ! [X9: $i,X10: $i,X11: $i] :
      ( ( v1_relat_1 @ X9 )
      | ~ ( m1_subset_1 @ X9 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X10 @ X11 ) ) ) ) ),
    inference(cnf,[status(esa)],[cc1_relset_1])).

thf('41',plain,(
    v1_relat_1 @ sk_D_1 ),
    inference('sup-',[status(thm)],['39','40'])).

thf('42',plain,(
    ! [X0: $i] :
      ( ~ ( zip_tseitin_2 @ ( sk_D @ sk_D_1 @ X0 @ sk_B ) @ sk_D_1 @ X0 @ sk_B )
      | ( zip_tseitin_3 @ sk_D_1 @ X0 @ sk_B ) ) ),
    inference(demod,[status(thm)],['35','36','37','38','41'])).

thf('43',plain,(
    ! [X0: $i] :
      ( ( r2_hidden @ ( sk_D @ sk_D_1 @ X0 @ sk_B ) @ sk_B )
      | ( zip_tseitin_3 @ sk_D_1 @ X0 @ sk_B ) ) ),
    inference('sup-',[status(thm)],['5','42'])).

thf(t1_subset,axiom,(
    ! [A: $i,B: $i] :
      ( ( r2_hidden @ A @ B )
     => ( m1_subset_1 @ A @ B ) ) )).

thf('44',plain,(
    ! [X4: $i,X5: $i] :
      ( ( m1_subset_1 @ X4 @ X5 )
      | ~ ( r2_hidden @ X4 @ X5 ) ) ),
    inference(cnf,[status(esa)],[t1_subset])).

thf('45',plain,(
    ! [X0: $i] :
      ( ( zip_tseitin_3 @ sk_D_1 @ X0 @ sk_B )
      | ( m1_subset_1 @ ( sk_D @ sk_D_1 @ X0 @ sk_B ) @ sk_B ) ) ),
    inference('sup-',[status(thm)],['43','44'])).

thf('46',plain,(
    m1_subset_1 @ sk_D_1 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B @ sk_C ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(redefinition_k3_funct_2,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( ~ ( v1_xboole_0 @ A )
        & ( v1_funct_1 @ C )
        & ( v1_funct_2 @ C @ A @ B )
        & ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
        & ( m1_subset_1 @ D @ A ) )
     => ( ( k3_funct_2 @ A @ B @ C @ D )
        = ( k1_funct_1 @ C @ D ) ) ) )).

thf('47',plain,(
    ! [X29: $i,X30: $i,X31: $i,X32: $i] :
      ( ~ ( m1_subset_1 @ X29 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X30 @ X31 ) ) )
      | ~ ( v1_funct_2 @ X29 @ X30 @ X31 )
      | ~ ( v1_funct_1 @ X29 )
      | ( v1_xboole_0 @ X30 )
      | ~ ( m1_subset_1 @ X32 @ X30 )
      | ( ( k3_funct_2 @ X30 @ X31 @ X29 @ X32 )
        = ( k1_funct_1 @ X29 @ X32 ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k3_funct_2])).

thf('48',plain,(
    ! [X0: $i] :
      ( ( ( k3_funct_2 @ sk_B @ sk_C @ sk_D_1 @ X0 )
        = ( k1_funct_1 @ sk_D_1 @ X0 ) )
      | ~ ( m1_subset_1 @ X0 @ sk_B )
      | ( v1_xboole_0 @ sk_B )
      | ~ ( v1_funct_1 @ sk_D_1 )
      | ~ ( v1_funct_2 @ sk_D_1 @ sk_B @ sk_C ) ) ),
    inference('sup-',[status(thm)],['46','47'])).

thf('49',plain,(
    v1_funct_1 @ sk_D_1 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('50',plain,(
    v1_funct_2 @ sk_D_1 @ sk_B @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('51',plain,(
    ! [X0: $i] :
      ( ( ( k3_funct_2 @ sk_B @ sk_C @ sk_D_1 @ X0 )
        = ( k1_funct_1 @ sk_D_1 @ X0 ) )
      | ~ ( m1_subset_1 @ X0 @ sk_B )
      | ( v1_xboole_0 @ sk_B ) ) ),
    inference(demod,[status(thm)],['48','49','50'])).

thf('52',plain,(
    ~ ( v1_xboole_0 @ sk_B ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('53',plain,(
    ! [X0: $i] :
      ( ~ ( m1_subset_1 @ X0 @ sk_B )
      | ( ( k3_funct_2 @ sk_B @ sk_C @ sk_D_1 @ X0 )
        = ( k1_funct_1 @ sk_D_1 @ X0 ) ) ) ),
    inference(clc,[status(thm)],['51','52'])).

thf('54',plain,(
    ! [X0: $i] :
      ( ( zip_tseitin_3 @ sk_D_1 @ X0 @ sk_B )
      | ( ( k3_funct_2 @ sk_B @ sk_C @ sk_D_1 @ ( sk_D @ sk_D_1 @ X0 @ sk_B ) )
        = ( k1_funct_1 @ sk_D_1 @ ( sk_D @ sk_D_1 @ X0 @ sk_B ) ) ) ) ),
    inference('sup-',[status(thm)],['45','53'])).

thf('55',plain,(
    ! [X0: $i] :
      ( ( zip_tseitin_3 @ sk_D_1 @ X0 @ sk_B )
      | ( m1_subset_1 @ ( sk_D @ sk_D_1 @ X0 @ sk_B ) @ sk_B ) ) ),
    inference('sup-',[status(thm)],['43','44'])).

thf('56',plain,(
    ! [X43: $i] :
      ( ( r2_hidden @ ( k3_funct_2 @ sk_B @ sk_C @ sk_D_1 @ X43 ) @ sk_A )
      | ~ ( m1_subset_1 @ X43 @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('57',plain,(
    ! [X0: $i] :
      ( ( zip_tseitin_3 @ sk_D_1 @ X0 @ sk_B )
      | ( r2_hidden @ ( k3_funct_2 @ sk_B @ sk_C @ sk_D_1 @ ( sk_D @ sk_D_1 @ X0 @ sk_B ) ) @ sk_A ) ) ),
    inference('sup-',[status(thm)],['55','56'])).

thf('58',plain,(
    ! [X0: $i] :
      ( ( r2_hidden @ ( k1_funct_1 @ sk_D_1 @ ( sk_D @ sk_D_1 @ X0 @ sk_B ) ) @ sk_A )
      | ( zip_tseitin_3 @ sk_D_1 @ X0 @ sk_B )
      | ( zip_tseitin_3 @ sk_D_1 @ X0 @ sk_B ) ) ),
    inference('sup+',[status(thm)],['54','57'])).

thf('59',plain,(
    ! [X0: $i] :
      ( ( zip_tseitin_3 @ sk_D_1 @ X0 @ sk_B )
      | ( r2_hidden @ ( k1_funct_1 @ sk_D_1 @ ( sk_D @ sk_D_1 @ X0 @ sk_B ) ) @ sk_A ) ) ),
    inference(simplify,[status(thm)],['58'])).

thf('60',plain,(
    ! [X33: $i,X34: $i,X35: $i,X36: $i] :
      ( ( zip_tseitin_2 @ X33 @ X34 @ X35 @ X36 )
      | ~ ( r2_hidden @ ( k1_funct_1 @ X34 @ X33 ) @ X35 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_1])).

thf('61',plain,(
    ! [X0: $i,X1: $i] :
      ( ( zip_tseitin_3 @ sk_D_1 @ X0 @ sk_B )
      | ( zip_tseitin_2 @ ( sk_D @ sk_D_1 @ X0 @ sk_B ) @ sk_D_1 @ sk_A @ X1 ) ) ),
    inference('sup-',[status(thm)],['59','60'])).

thf('62',plain,(
    ! [X0: $i] :
      ( ~ ( zip_tseitin_2 @ ( sk_D @ sk_D_1 @ X0 @ sk_B ) @ sk_D_1 @ X0 @ sk_B )
      | ( zip_tseitin_3 @ sk_D_1 @ X0 @ sk_B ) ) ),
    inference(demod,[status(thm)],['35','36','37','38','41'])).

thf('63',plain,
    ( ( zip_tseitin_3 @ sk_D_1 @ sk_A @ sk_B )
    | ( zip_tseitin_3 @ sk_D_1 @ sk_A @ sk_B ) ),
    inference('sup-',[status(thm)],['61','62'])).

thf('64',plain,(
    zip_tseitin_3 @ sk_D_1 @ sk_A @ sk_B ),
    inference(simplify,[status(thm)],['63'])).

thf('65',plain,(
    ! [X37: $i,X38: $i,X39: $i] :
      ( ( m1_subset_1 @ X37 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X39 @ X38 ) ) )
      | ~ ( zip_tseitin_3 @ X37 @ X38 @ X39 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_8])).

thf('66',plain,(
    m1_subset_1 @ sk_D_1 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B @ sk_A ) ) ),
    inference('sup-',[status(thm)],['64','65'])).

thf('67',plain,(
    ! [X12: $i,X13: $i,X14: $i] :
      ( ( m1_subset_1 @ ( k2_relset_1 @ X12 @ X13 @ X14 ) @ ( k1_zfmisc_1 @ X13 ) )
      | ~ ( m1_subset_1 @ X14 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X12 @ X13 ) ) ) ) ),
    inference(cnf,[status(esa)],[dt_k2_relset_1])).

thf('68',plain,(
    m1_subset_1 @ ( k2_relset_1 @ sk_B @ sk_A @ sk_D_1 ) @ ( k1_zfmisc_1 @ sk_A ) ),
    inference('sup-',[status(thm)],['66','67'])).

thf('69',plain,(
    m1_subset_1 @ sk_D_1 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B @ sk_A ) ) ),
    inference('sup-',[status(thm)],['64','65'])).

thf('70',plain,(
    ! [X18: $i,X19: $i,X20: $i] :
      ( ( ( k2_relset_1 @ X19 @ X20 @ X18 )
        = ( k2_relat_1 @ X18 ) )
      | ~ ( m1_subset_1 @ X18 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X19 @ X20 ) ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k2_relset_1])).

thf('71',plain,
    ( ( k2_relset_1 @ sk_B @ sk_A @ sk_D_1 )
    = ( k2_relat_1 @ sk_D_1 ) ),
    inference('sup-',[status(thm)],['69','70'])).

thf('72',plain,(
    m1_subset_1 @ ( k2_relat_1 @ sk_D_1 ) @ ( k1_zfmisc_1 @ sk_A ) ),
    inference(demod,[status(thm)],['68','71'])).

thf('73',plain,(
    ! [X6: $i,X7: $i] :
      ( ( r1_tarski @ X6 @ X7 )
      | ~ ( m1_subset_1 @ X6 @ ( k1_zfmisc_1 @ X7 ) ) ) ),
    inference(cnf,[status(esa)],[t3_subset])).

thf('74',plain,(
    r1_tarski @ ( k2_relat_1 @ sk_D_1 ) @ sk_A ),
    inference('sup-',[status(thm)],['72','73'])).

thf('75',plain,(
    $false ),
    inference(demod,[status(thm)],['4','74'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.SKKvxPhR3J
% 0.14/0.34  % Computer   : n019.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % DateTime   : Tue Dec  1 13:15:22 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.34  % Running portfolio for 600 s
% 0.14/0.34  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.14/0.35  % Number of cores: 8
% 0.14/0.35  % Python version: Python 3.6.8
% 0.14/0.35  % Running in FO mode
% 11.21/11.42  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 11.21/11.42  % Solved by: fo/fo7.sh
% 11.21/11.42  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 11.21/11.42  % done 5476 iterations in 10.928s
% 11.21/11.42  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 11.21/11.42  % SZS output start Refutation
% 11.21/11.42  thf(v1_funct_1_type, type, v1_funct_1: $i > $o).
% 11.21/11.42  thf(zip_tseitin_0_type, type, zip_tseitin_0: $i > $i > $o).
% 11.21/11.42  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 11.21/11.42  thf(v1_funct_2_type, type, v1_funct_2: $i > $i > $i > $o).
% 11.21/11.42  thf(zip_tseitin_2_type, type, zip_tseitin_2: $i > $i > $i > $i > $o).
% 11.21/11.42  thf(k3_funct_2_type, type, k3_funct_2: $i > $i > $i > $i > $i).
% 11.21/11.42  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 11.21/11.42  thf(sk_C_type, type, sk_C: $i).
% 11.21/11.42  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 11.21/11.42  thf(sk_D_1_type, type, sk_D_1: $i).
% 11.21/11.42  thf(k1_relat_1_type, type, k1_relat_1: $i > $i).
% 11.21/11.42  thf(k1_funct_1_type, type, k1_funct_1: $i > $i > $i).
% 11.21/11.42  thf(zip_tseitin_3_type, type, zip_tseitin_3: $i > $i > $i > $o).
% 11.21/11.42  thf(sk_B_type, type, sk_B: $i).
% 11.21/11.42  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 11.21/11.42  thf(v1_xboole_0_type, type, v1_xboole_0: $i > $o).
% 11.21/11.42  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 11.21/11.42  thf(k1_relset_1_type, type, k1_relset_1: $i > $i > $i > $i).
% 11.21/11.42  thf(k2_zfmisc_1_type, type, k2_zfmisc_1: $i > $i > $i).
% 11.21/11.42  thf(zip_tseitin_1_type, type, zip_tseitin_1: $i > $i > $i > $o).
% 11.21/11.42  thf(sk_A_type, type, sk_A: $i).
% 11.21/11.42  thf(k2_relat_1_type, type, k2_relat_1: $i > $i).
% 11.21/11.42  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 11.21/11.42  thf(k2_relset_1_type, type, k2_relset_1: $i > $i > $i > $i).
% 11.21/11.42  thf(sk_D_type, type, sk_D: $i > $i > $i > $i).
% 11.21/11.42  thf(t191_funct_2, conjecture,
% 11.21/11.42    (![A:$i,B:$i]:
% 11.21/11.42     ( ( ~( v1_xboole_0 @ B ) ) =>
% 11.21/11.42       ( ![C:$i]:
% 11.21/11.42         ( ( ~( v1_xboole_0 @ C ) ) =>
% 11.21/11.42           ( ![D:$i]:
% 11.21/11.42             ( ( ( v1_funct_1 @ D ) & ( v1_funct_2 @ D @ B @ C ) & 
% 11.21/11.42                 ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ C ) ) ) ) =>
% 11.21/11.42               ( ( ![E:$i]:
% 11.21/11.42                   ( ( m1_subset_1 @ E @ B ) =>
% 11.21/11.42                     ( r2_hidden @ ( k3_funct_2 @ B @ C @ D @ E ) @ A ) ) ) =>
% 11.21/11.42                 ( r1_tarski @ ( k2_relset_1 @ B @ C @ D ) @ A ) ) ) ) ) ) ))).
% 11.21/11.42  thf(zf_stmt_0, negated_conjecture,
% 11.21/11.42    (~( ![A:$i,B:$i]:
% 11.21/11.42        ( ( ~( v1_xboole_0 @ B ) ) =>
% 11.21/11.42          ( ![C:$i]:
% 11.21/11.42            ( ( ~( v1_xboole_0 @ C ) ) =>
% 11.21/11.42              ( ![D:$i]:
% 11.21/11.42                ( ( ( v1_funct_1 @ D ) & ( v1_funct_2 @ D @ B @ C ) & 
% 11.21/11.42                    ( m1_subset_1 @
% 11.21/11.42                      D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ C ) ) ) ) =>
% 11.21/11.42                  ( ( ![E:$i]:
% 11.21/11.42                      ( ( m1_subset_1 @ E @ B ) =>
% 11.21/11.42                        ( r2_hidden @ ( k3_funct_2 @ B @ C @ D @ E ) @ A ) ) ) =>
% 11.21/11.42                    ( r1_tarski @ ( k2_relset_1 @ B @ C @ D ) @ A ) ) ) ) ) ) ) )),
% 11.21/11.42    inference('cnf.neg', [status(esa)], [t191_funct_2])).
% 11.21/11.42  thf('0', plain,
% 11.21/11.42      (~ (r1_tarski @ (k2_relset_1 @ sk_B @ sk_C @ sk_D_1) @ sk_A)),
% 11.21/11.42      inference('cnf', [status(esa)], [zf_stmt_0])).
% 11.21/11.42  thf('1', plain,
% 11.21/11.42      ((m1_subset_1 @ sk_D_1 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B @ sk_C)))),
% 11.21/11.42      inference('cnf', [status(esa)], [zf_stmt_0])).
% 11.21/11.42  thf(redefinition_k2_relset_1, axiom,
% 11.21/11.42    (![A:$i,B:$i,C:$i]:
% 11.21/11.42     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 11.21/11.42       ( ( k2_relset_1 @ A @ B @ C ) = ( k2_relat_1 @ C ) ) ))).
% 11.21/11.42  thf('2', plain,
% 11.21/11.42      (![X18 : $i, X19 : $i, X20 : $i]:
% 11.21/11.42         (((k2_relset_1 @ X19 @ X20 @ X18) = (k2_relat_1 @ X18))
% 11.21/11.42          | ~ (m1_subset_1 @ X18 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X19 @ X20))))),
% 11.21/11.42      inference('cnf', [status(esa)], [redefinition_k2_relset_1])).
% 11.21/11.42  thf('3', plain,
% 11.21/11.42      (((k2_relset_1 @ sk_B @ sk_C @ sk_D_1) = (k2_relat_1 @ sk_D_1))),
% 11.21/11.42      inference('sup-', [status(thm)], ['1', '2'])).
% 11.21/11.42  thf('4', plain, (~ (r1_tarski @ (k2_relat_1 @ sk_D_1) @ sk_A)),
% 11.21/11.42      inference('demod', [status(thm)], ['0', '3'])).
% 11.21/11.42  thf(t5_funct_2, axiom,
% 11.21/11.42    (![A:$i,B:$i,C:$i]:
% 11.21/11.42     ( ( ( v1_funct_1 @ C ) & ( v1_relat_1 @ C ) ) =>
% 11.21/11.42       ( ( ( ![D:$i]:
% 11.21/11.42             ( ( r2_hidden @ D @ A ) =>
% 11.21/11.42               ( r2_hidden @ ( k1_funct_1 @ C @ D ) @ B ) ) ) & 
% 11.21/11.42           ( ( k1_relat_1 @ C ) = ( A ) ) ) =>
% 11.21/11.42         ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) & 
% 11.21/11.42           ( v1_funct_2 @ C @ A @ B ) & ( v1_funct_1 @ C ) ) ) ))).
% 11.21/11.42  thf(zf_stmt_1, axiom,
% 11.21/11.42    (![D:$i,C:$i,B:$i,A:$i]:
% 11.21/11.42     ( ( ( r2_hidden @ D @ A ) => ( r2_hidden @ ( k1_funct_1 @ C @ D ) @ B ) ) =>
% 11.21/11.42       ( zip_tseitin_2 @ D @ C @ B @ A ) ))).
% 11.21/11.42  thf('5', plain,
% 11.21/11.42      (![X33 : $i, X34 : $i, X35 : $i, X36 : $i]:
% 11.21/11.42         ((zip_tseitin_2 @ X33 @ X34 @ X35 @ X36) | (r2_hidden @ X33 @ X36))),
% 11.21/11.42      inference('cnf', [status(esa)], [zf_stmt_1])).
% 11.21/11.42  thf('6', plain, ((v1_funct_2 @ sk_D_1 @ sk_B @ sk_C)),
% 11.21/11.42      inference('cnf', [status(esa)], [zf_stmt_0])).
% 11.21/11.42  thf(d1_funct_2, axiom,
% 11.21/11.42    (![A:$i,B:$i,C:$i]:
% 11.21/11.42     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 11.21/11.42       ( ( ( ( B ) = ( k1_xboole_0 ) ) =>
% 11.21/11.42           ( ( ( v1_funct_2 @ C @ A @ B ) <=> ( ( C ) = ( k1_xboole_0 ) ) ) | 
% 11.21/11.42             ( ( A ) = ( k1_xboole_0 ) ) ) ) & 
% 11.21/11.42         ( ( ( ( B ) = ( k1_xboole_0 ) ) => ( ( A ) = ( k1_xboole_0 ) ) ) =>
% 11.21/11.42           ( ( v1_funct_2 @ C @ A @ B ) <=>
% 11.21/11.42             ( ( A ) = ( k1_relset_1 @ A @ B @ C ) ) ) ) ) ))).
% 11.21/11.42  thf(zf_stmt_2, axiom,
% 11.21/11.42    (![C:$i,B:$i,A:$i]:
% 11.21/11.42     ( ( zip_tseitin_1 @ C @ B @ A ) =>
% 11.21/11.42       ( ( v1_funct_2 @ C @ A @ B ) <=> ( ( A ) = ( k1_relset_1 @ A @ B @ C ) ) ) ))).
% 11.21/11.42  thf('7', plain,
% 11.21/11.42      (![X23 : $i, X24 : $i, X25 : $i]:
% 11.21/11.42         (~ (v1_funct_2 @ X25 @ X23 @ X24)
% 11.21/11.42          | ((X23) = (k1_relset_1 @ X23 @ X24 @ X25))
% 11.21/11.42          | ~ (zip_tseitin_1 @ X25 @ X24 @ X23))),
% 11.21/11.42      inference('cnf', [status(esa)], [zf_stmt_2])).
% 11.21/11.42  thf('8', plain,
% 11.21/11.42      ((~ (zip_tseitin_1 @ sk_D_1 @ sk_C @ sk_B)
% 11.21/11.42        | ((sk_B) = (k1_relset_1 @ sk_B @ sk_C @ sk_D_1)))),
% 11.21/11.42      inference('sup-', [status(thm)], ['6', '7'])).
% 11.21/11.42  thf('9', plain,
% 11.21/11.42      ((m1_subset_1 @ sk_D_1 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B @ sk_C)))),
% 11.21/11.42      inference('cnf', [status(esa)], [zf_stmt_0])).
% 11.21/11.42  thf(redefinition_k1_relset_1, axiom,
% 11.21/11.42    (![A:$i,B:$i,C:$i]:
% 11.21/11.42     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 11.21/11.42       ( ( k1_relset_1 @ A @ B @ C ) = ( k1_relat_1 @ C ) ) ))).
% 11.21/11.42  thf('10', plain,
% 11.21/11.42      (![X15 : $i, X16 : $i, X17 : $i]:
% 11.21/11.42         (((k1_relset_1 @ X16 @ X17 @ X15) = (k1_relat_1 @ X15))
% 11.21/11.42          | ~ (m1_subset_1 @ X15 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X16 @ X17))))),
% 11.21/11.42      inference('cnf', [status(esa)], [redefinition_k1_relset_1])).
% 11.21/11.42  thf('11', plain,
% 11.21/11.42      (((k1_relset_1 @ sk_B @ sk_C @ sk_D_1) = (k1_relat_1 @ sk_D_1))),
% 11.21/11.42      inference('sup-', [status(thm)], ['9', '10'])).
% 11.21/11.42  thf('12', plain,
% 11.21/11.42      ((~ (zip_tseitin_1 @ sk_D_1 @ sk_C @ sk_B)
% 11.21/11.42        | ((sk_B) = (k1_relat_1 @ sk_D_1)))),
% 11.21/11.42      inference('demod', [status(thm)], ['8', '11'])).
% 11.21/11.42  thf('13', plain,
% 11.21/11.42      ((m1_subset_1 @ sk_D_1 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B @ sk_C)))),
% 11.21/11.42      inference('cnf', [status(esa)], [zf_stmt_0])).
% 11.21/11.42  thf(zf_stmt_3, type, zip_tseitin_1 : $i > $i > $i > $o).
% 11.21/11.42  thf(zf_stmt_4, type, zip_tseitin_0 : $i > $i > $o).
% 11.21/11.42  thf(zf_stmt_5, axiom,
% 11.21/11.42    (![B:$i,A:$i]:
% 11.21/11.42     ( ( ( ( B ) = ( k1_xboole_0 ) ) => ( ( A ) = ( k1_xboole_0 ) ) ) =>
% 11.21/11.42       ( zip_tseitin_0 @ B @ A ) ))).
% 11.21/11.42  thf(zf_stmt_6, axiom,
% 11.21/11.42    (![A:$i,B:$i,C:$i]:
% 11.21/11.42     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 11.21/11.42       ( ( ( zip_tseitin_0 @ B @ A ) => ( zip_tseitin_1 @ C @ B @ A ) ) & 
% 11.21/11.42         ( ( ( B ) = ( k1_xboole_0 ) ) =>
% 11.21/11.42           ( ( ( A ) = ( k1_xboole_0 ) ) | 
% 11.21/11.42             ( ( v1_funct_2 @ C @ A @ B ) <=> ( ( C ) = ( k1_xboole_0 ) ) ) ) ) ) ))).
% 11.21/11.42  thf('14', plain,
% 11.21/11.42      (![X26 : $i, X27 : $i, X28 : $i]:
% 11.21/11.42         (~ (zip_tseitin_0 @ X26 @ X27)
% 11.21/11.42          | (zip_tseitin_1 @ X28 @ X26 @ X27)
% 11.21/11.42          | ~ (m1_subset_1 @ X28 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X27 @ X26))))),
% 11.21/11.42      inference('cnf', [status(esa)], [zf_stmt_6])).
% 11.21/11.42  thf('15', plain,
% 11.21/11.42      (((zip_tseitin_1 @ sk_D_1 @ sk_C @ sk_B)
% 11.21/11.42        | ~ (zip_tseitin_0 @ sk_C @ sk_B))),
% 11.21/11.42      inference('sup-', [status(thm)], ['13', '14'])).
% 11.21/11.42  thf('16', plain,
% 11.21/11.42      ((m1_subset_1 @ sk_D_1 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B @ sk_C)))),
% 11.21/11.42      inference('cnf', [status(esa)], [zf_stmt_0])).
% 11.21/11.42  thf(dt_k2_relset_1, axiom,
% 11.21/11.42    (![A:$i,B:$i,C:$i]:
% 11.21/11.42     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 11.21/11.42       ( m1_subset_1 @ ( k2_relset_1 @ A @ B @ C ) @ ( k1_zfmisc_1 @ B ) ) ))).
% 11.21/11.42  thf('17', plain,
% 11.21/11.42      (![X12 : $i, X13 : $i, X14 : $i]:
% 11.21/11.42         ((m1_subset_1 @ (k2_relset_1 @ X12 @ X13 @ X14) @ (k1_zfmisc_1 @ X13))
% 11.21/11.42          | ~ (m1_subset_1 @ X14 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X12 @ X13))))),
% 11.21/11.42      inference('cnf', [status(esa)], [dt_k2_relset_1])).
% 11.21/11.42  thf('18', plain,
% 11.21/11.42      ((m1_subset_1 @ (k2_relset_1 @ sk_B @ sk_C @ sk_D_1) @ 
% 11.21/11.42        (k1_zfmisc_1 @ sk_C))),
% 11.21/11.42      inference('sup-', [status(thm)], ['16', '17'])).
% 11.21/11.42  thf(t3_subset, axiom,
% 11.21/11.42    (![A:$i,B:$i]:
% 11.21/11.42     ( ( m1_subset_1 @ A @ ( k1_zfmisc_1 @ B ) ) <=> ( r1_tarski @ A @ B ) ))).
% 11.21/11.42  thf('19', plain,
% 11.21/11.42      (![X6 : $i, X7 : $i]:
% 11.21/11.42         ((r1_tarski @ X6 @ X7) | ~ (m1_subset_1 @ X6 @ (k1_zfmisc_1 @ X7)))),
% 11.21/11.42      inference('cnf', [status(esa)], [t3_subset])).
% 11.21/11.42  thf('20', plain, ((r1_tarski @ (k2_relset_1 @ sk_B @ sk_C @ sk_D_1) @ sk_C)),
% 11.21/11.42      inference('sup-', [status(thm)], ['18', '19'])).
% 11.21/11.42  thf('21', plain,
% 11.21/11.42      (![X21 : $i, X22 : $i]:
% 11.21/11.42         ((zip_tseitin_0 @ X21 @ X22) | ((X21) = (k1_xboole_0)))),
% 11.21/11.42      inference('cnf', [status(esa)], [zf_stmt_5])).
% 11.21/11.42  thf(t2_xboole_1, axiom, (![A:$i]: ( r1_tarski @ k1_xboole_0 @ A ))).
% 11.21/11.42  thf('22', plain, (![X3 : $i]: (r1_tarski @ k1_xboole_0 @ X3)),
% 11.21/11.42      inference('cnf', [status(esa)], [t2_xboole_1])).
% 11.21/11.42  thf('23', plain,
% 11.21/11.42      (![X0 : $i, X1 : $i, X2 : $i]:
% 11.21/11.42         ((r1_tarski @ X0 @ X1) | (zip_tseitin_0 @ X0 @ X2))),
% 11.21/11.42      inference('sup+', [status(thm)], ['21', '22'])).
% 11.21/11.42  thf(d10_xboole_0, axiom,
% 11.21/11.42    (![A:$i,B:$i]:
% 11.21/11.42     ( ( ( A ) = ( B ) ) <=> ( ( r1_tarski @ A @ B ) & ( r1_tarski @ B @ A ) ) ))).
% 11.21/11.42  thf('24', plain,
% 11.21/11.42      (![X0 : $i, X2 : $i]:
% 11.21/11.42         (((X0) = (X2)) | ~ (r1_tarski @ X2 @ X0) | ~ (r1_tarski @ X0 @ X2))),
% 11.21/11.42      inference('cnf', [status(esa)], [d10_xboole_0])).
% 11.21/11.42  thf('25', plain,
% 11.21/11.42      (![X0 : $i, X1 : $i, X2 : $i]:
% 11.21/11.42         ((zip_tseitin_0 @ X1 @ X2) | ~ (r1_tarski @ X0 @ X1) | ((X0) = (X1)))),
% 11.21/11.42      inference('sup-', [status(thm)], ['23', '24'])).
% 11.21/11.42  thf('26', plain,
% 11.21/11.42      (![X0 : $i]:
% 11.21/11.42         (((k2_relset_1 @ sk_B @ sk_C @ sk_D_1) = (sk_C))
% 11.21/11.42          | (zip_tseitin_0 @ sk_C @ X0))),
% 11.21/11.42      inference('sup-', [status(thm)], ['20', '25'])).
% 11.21/11.42  thf('27', plain,
% 11.21/11.42      (~ (r1_tarski @ (k2_relset_1 @ sk_B @ sk_C @ sk_D_1) @ sk_A)),
% 11.21/11.42      inference('cnf', [status(esa)], [zf_stmt_0])).
% 11.21/11.42  thf('28', plain,
% 11.21/11.42      (![X0 : $i]: (~ (r1_tarski @ sk_C @ sk_A) | (zip_tseitin_0 @ sk_C @ X0))),
% 11.21/11.42      inference('sup-', [status(thm)], ['26', '27'])).
% 11.21/11.42  thf('29', plain,
% 11.21/11.42      (![X0 : $i, X1 : $i, X2 : $i]:
% 11.21/11.42         ((r1_tarski @ X0 @ X1) | (zip_tseitin_0 @ X0 @ X2))),
% 11.21/11.42      inference('sup+', [status(thm)], ['21', '22'])).
% 11.21/11.42  thf('30', plain, (![X0 : $i]: (zip_tseitin_0 @ sk_C @ X0)),
% 11.21/11.42      inference('clc', [status(thm)], ['28', '29'])).
% 11.21/11.42  thf('31', plain, ((zip_tseitin_1 @ sk_D_1 @ sk_C @ sk_B)),
% 11.21/11.42      inference('demod', [status(thm)], ['15', '30'])).
% 11.21/11.42  thf('32', plain, (((sk_B) = (k1_relat_1 @ sk_D_1))),
% 11.21/11.42      inference('demod', [status(thm)], ['12', '31'])).
% 11.21/11.42  thf(zf_stmt_7, type, zip_tseitin_3 : $i > $i > $i > $o).
% 11.21/11.42  thf(zf_stmt_8, axiom,
% 11.21/11.42    (![C:$i,B:$i,A:$i]:
% 11.21/11.42     ( ( zip_tseitin_3 @ C @ B @ A ) =>
% 11.21/11.42       ( ( v1_funct_1 @ C ) & ( v1_funct_2 @ C @ A @ B ) & 
% 11.21/11.42         ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) ))).
% 11.21/11.42  thf(zf_stmt_9, type, zip_tseitin_2 : $i > $i > $i > $i > $o).
% 11.21/11.42  thf(zf_stmt_10, axiom,
% 11.21/11.42    (![A:$i,B:$i,C:$i]:
% 11.21/11.42     ( ( ( v1_relat_1 @ C ) & ( v1_funct_1 @ C ) ) =>
% 11.21/11.42       ( ( ( ( k1_relat_1 @ C ) = ( A ) ) & 
% 11.21/11.42           ( ![D:$i]: ( zip_tseitin_2 @ D @ C @ B @ A ) ) ) =>
% 11.21/11.42         ( zip_tseitin_3 @ C @ B @ A ) ) ))).
% 11.21/11.42  thf('33', plain,
% 11.21/11.42      (![X40 : $i, X41 : $i, X42 : $i]:
% 11.21/11.42         (((k1_relat_1 @ X41) != (X40))
% 11.21/11.42          | ~ (zip_tseitin_2 @ (sk_D @ X41 @ X42 @ X40) @ X41 @ X42 @ X40)
% 11.21/11.42          | (zip_tseitin_3 @ X41 @ X42 @ X40)
% 11.21/11.42          | ~ (v1_funct_1 @ X41)
% 11.21/11.42          | ~ (v1_relat_1 @ X41))),
% 11.21/11.42      inference('cnf', [status(esa)], [zf_stmt_10])).
% 11.21/11.42  thf('34', plain,
% 11.21/11.42      (![X41 : $i, X42 : $i]:
% 11.21/11.42         (~ (v1_relat_1 @ X41)
% 11.21/11.42          | ~ (v1_funct_1 @ X41)
% 11.21/11.42          | (zip_tseitin_3 @ X41 @ X42 @ (k1_relat_1 @ X41))
% 11.21/11.42          | ~ (zip_tseitin_2 @ (sk_D @ X41 @ X42 @ (k1_relat_1 @ X41)) @ X41 @ 
% 11.21/11.42               X42 @ (k1_relat_1 @ X41)))),
% 11.21/11.42      inference('simplify', [status(thm)], ['33'])).
% 11.21/11.42  thf('35', plain,
% 11.21/11.42      (![X0 : $i]:
% 11.21/11.42         (~ (zip_tseitin_2 @ (sk_D @ sk_D_1 @ X0 @ sk_B) @ sk_D_1 @ X0 @ 
% 11.21/11.42             (k1_relat_1 @ sk_D_1))
% 11.21/11.42          | (zip_tseitin_3 @ sk_D_1 @ X0 @ (k1_relat_1 @ sk_D_1))
% 11.21/11.42          | ~ (v1_funct_1 @ sk_D_1)
% 11.21/11.42          | ~ (v1_relat_1 @ sk_D_1))),
% 11.21/11.42      inference('sup-', [status(thm)], ['32', '34'])).
% 11.21/11.42  thf('36', plain, (((sk_B) = (k1_relat_1 @ sk_D_1))),
% 11.21/11.42      inference('demod', [status(thm)], ['12', '31'])).
% 11.21/11.42  thf('37', plain, (((sk_B) = (k1_relat_1 @ sk_D_1))),
% 11.21/11.42      inference('demod', [status(thm)], ['12', '31'])).
% 11.21/11.42  thf('38', plain, ((v1_funct_1 @ sk_D_1)),
% 11.21/11.42      inference('cnf', [status(esa)], [zf_stmt_0])).
% 11.21/11.42  thf('39', plain,
% 11.21/11.42      ((m1_subset_1 @ sk_D_1 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B @ sk_C)))),
% 11.21/11.42      inference('cnf', [status(esa)], [zf_stmt_0])).
% 11.21/11.42  thf(cc1_relset_1, axiom,
% 11.21/11.42    (![A:$i,B:$i,C:$i]:
% 11.21/11.42     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 11.21/11.42       ( v1_relat_1 @ C ) ))).
% 11.21/11.42  thf('40', plain,
% 11.21/11.42      (![X9 : $i, X10 : $i, X11 : $i]:
% 11.21/11.42         ((v1_relat_1 @ X9)
% 11.21/11.42          | ~ (m1_subset_1 @ X9 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X10 @ X11))))),
% 11.21/11.42      inference('cnf', [status(esa)], [cc1_relset_1])).
% 11.21/11.42  thf('41', plain, ((v1_relat_1 @ sk_D_1)),
% 11.21/11.42      inference('sup-', [status(thm)], ['39', '40'])).
% 11.21/11.42  thf('42', plain,
% 11.21/11.42      (![X0 : $i]:
% 11.21/11.42         (~ (zip_tseitin_2 @ (sk_D @ sk_D_1 @ X0 @ sk_B) @ sk_D_1 @ X0 @ sk_B)
% 11.21/11.42          | (zip_tseitin_3 @ sk_D_1 @ X0 @ sk_B))),
% 11.21/11.42      inference('demod', [status(thm)], ['35', '36', '37', '38', '41'])).
% 11.21/11.42  thf('43', plain,
% 11.21/11.42      (![X0 : $i]:
% 11.21/11.42         ((r2_hidden @ (sk_D @ sk_D_1 @ X0 @ sk_B) @ sk_B)
% 11.21/11.42          | (zip_tseitin_3 @ sk_D_1 @ X0 @ sk_B))),
% 11.21/11.42      inference('sup-', [status(thm)], ['5', '42'])).
% 11.21/11.42  thf(t1_subset, axiom,
% 11.21/11.42    (![A:$i,B:$i]: ( ( r2_hidden @ A @ B ) => ( m1_subset_1 @ A @ B ) ))).
% 11.21/11.42  thf('44', plain,
% 11.21/11.42      (![X4 : $i, X5 : $i]: ((m1_subset_1 @ X4 @ X5) | ~ (r2_hidden @ X4 @ X5))),
% 11.21/11.42      inference('cnf', [status(esa)], [t1_subset])).
% 11.21/11.42  thf('45', plain,
% 11.21/11.42      (![X0 : $i]:
% 11.21/11.42         ((zip_tseitin_3 @ sk_D_1 @ X0 @ sk_B)
% 11.21/11.42          | (m1_subset_1 @ (sk_D @ sk_D_1 @ X0 @ sk_B) @ sk_B))),
% 11.21/11.42      inference('sup-', [status(thm)], ['43', '44'])).
% 11.21/11.42  thf('46', plain,
% 11.21/11.42      ((m1_subset_1 @ sk_D_1 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B @ sk_C)))),
% 11.21/11.42      inference('cnf', [status(esa)], [zf_stmt_0])).
% 11.21/11.42  thf(redefinition_k3_funct_2, axiom,
% 11.21/11.42    (![A:$i,B:$i,C:$i,D:$i]:
% 11.21/11.42     ( ( ( ~( v1_xboole_0 @ A ) ) & ( v1_funct_1 @ C ) & 
% 11.21/11.42         ( v1_funct_2 @ C @ A @ B ) & 
% 11.21/11.42         ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) & 
% 11.21/11.42         ( m1_subset_1 @ D @ A ) ) =>
% 11.21/11.42       ( ( k3_funct_2 @ A @ B @ C @ D ) = ( k1_funct_1 @ C @ D ) ) ))).
% 11.21/11.42  thf('47', plain,
% 11.21/11.42      (![X29 : $i, X30 : $i, X31 : $i, X32 : $i]:
% 11.21/11.42         (~ (m1_subset_1 @ X29 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X30 @ X31)))
% 11.21/11.42          | ~ (v1_funct_2 @ X29 @ X30 @ X31)
% 11.21/11.42          | ~ (v1_funct_1 @ X29)
% 11.21/11.42          | (v1_xboole_0 @ X30)
% 11.21/11.42          | ~ (m1_subset_1 @ X32 @ X30)
% 11.21/11.42          | ((k3_funct_2 @ X30 @ X31 @ X29 @ X32) = (k1_funct_1 @ X29 @ X32)))),
% 11.21/11.42      inference('cnf', [status(esa)], [redefinition_k3_funct_2])).
% 11.21/11.42  thf('48', plain,
% 11.21/11.42      (![X0 : $i]:
% 11.21/11.42         (((k3_funct_2 @ sk_B @ sk_C @ sk_D_1 @ X0)
% 11.21/11.42            = (k1_funct_1 @ sk_D_1 @ X0))
% 11.21/11.42          | ~ (m1_subset_1 @ X0 @ sk_B)
% 11.21/11.42          | (v1_xboole_0 @ sk_B)
% 11.21/11.42          | ~ (v1_funct_1 @ sk_D_1)
% 11.21/11.42          | ~ (v1_funct_2 @ sk_D_1 @ sk_B @ sk_C))),
% 11.21/11.42      inference('sup-', [status(thm)], ['46', '47'])).
% 11.21/11.42  thf('49', plain, ((v1_funct_1 @ sk_D_1)),
% 11.21/11.42      inference('cnf', [status(esa)], [zf_stmt_0])).
% 11.21/11.42  thf('50', plain, ((v1_funct_2 @ sk_D_1 @ sk_B @ sk_C)),
% 11.21/11.42      inference('cnf', [status(esa)], [zf_stmt_0])).
% 11.21/11.42  thf('51', plain,
% 11.21/11.42      (![X0 : $i]:
% 11.21/11.42         (((k3_funct_2 @ sk_B @ sk_C @ sk_D_1 @ X0)
% 11.21/11.42            = (k1_funct_1 @ sk_D_1 @ X0))
% 11.21/11.42          | ~ (m1_subset_1 @ X0 @ sk_B)
% 11.21/11.42          | (v1_xboole_0 @ sk_B))),
% 11.21/11.42      inference('demod', [status(thm)], ['48', '49', '50'])).
% 11.21/11.42  thf('52', plain, (~ (v1_xboole_0 @ sk_B)),
% 11.21/11.42      inference('cnf', [status(esa)], [zf_stmt_0])).
% 11.21/11.42  thf('53', plain,
% 11.21/11.42      (![X0 : $i]:
% 11.21/11.42         (~ (m1_subset_1 @ X0 @ sk_B)
% 11.21/11.42          | ((k3_funct_2 @ sk_B @ sk_C @ sk_D_1 @ X0)
% 11.21/11.42              = (k1_funct_1 @ sk_D_1 @ X0)))),
% 11.21/11.42      inference('clc', [status(thm)], ['51', '52'])).
% 11.21/11.42  thf('54', plain,
% 11.21/11.42      (![X0 : $i]:
% 11.21/11.42         ((zip_tseitin_3 @ sk_D_1 @ X0 @ sk_B)
% 11.21/11.42          | ((k3_funct_2 @ sk_B @ sk_C @ sk_D_1 @ (sk_D @ sk_D_1 @ X0 @ sk_B))
% 11.21/11.42              = (k1_funct_1 @ sk_D_1 @ (sk_D @ sk_D_1 @ X0 @ sk_B))))),
% 11.21/11.42      inference('sup-', [status(thm)], ['45', '53'])).
% 11.21/11.42  thf('55', plain,
% 11.21/11.42      (![X0 : $i]:
% 11.21/11.42         ((zip_tseitin_3 @ sk_D_1 @ X0 @ sk_B)
% 11.21/11.42          | (m1_subset_1 @ (sk_D @ sk_D_1 @ X0 @ sk_B) @ sk_B))),
% 11.21/11.42      inference('sup-', [status(thm)], ['43', '44'])).
% 11.21/11.42  thf('56', plain,
% 11.21/11.42      (![X43 : $i]:
% 11.21/11.42         ((r2_hidden @ (k3_funct_2 @ sk_B @ sk_C @ sk_D_1 @ X43) @ sk_A)
% 11.21/11.42          | ~ (m1_subset_1 @ X43 @ sk_B))),
% 11.21/11.42      inference('cnf', [status(esa)], [zf_stmt_0])).
% 11.21/11.42  thf('57', plain,
% 11.21/11.42      (![X0 : $i]:
% 11.21/11.42         ((zip_tseitin_3 @ sk_D_1 @ X0 @ sk_B)
% 11.21/11.42          | (r2_hidden @ 
% 11.21/11.42             (k3_funct_2 @ sk_B @ sk_C @ sk_D_1 @ (sk_D @ sk_D_1 @ X0 @ sk_B)) @ 
% 11.21/11.42             sk_A))),
% 11.21/11.42      inference('sup-', [status(thm)], ['55', '56'])).
% 11.21/11.42  thf('58', plain,
% 11.21/11.42      (![X0 : $i]:
% 11.21/11.42         ((r2_hidden @ (k1_funct_1 @ sk_D_1 @ (sk_D @ sk_D_1 @ X0 @ sk_B)) @ 
% 11.21/11.42           sk_A)
% 11.21/11.42          | (zip_tseitin_3 @ sk_D_1 @ X0 @ sk_B)
% 11.21/11.42          | (zip_tseitin_3 @ sk_D_1 @ X0 @ sk_B))),
% 11.21/11.42      inference('sup+', [status(thm)], ['54', '57'])).
% 11.21/11.42  thf('59', plain,
% 11.21/11.42      (![X0 : $i]:
% 11.21/11.42         ((zip_tseitin_3 @ sk_D_1 @ X0 @ sk_B)
% 11.21/11.42          | (r2_hidden @ (k1_funct_1 @ sk_D_1 @ (sk_D @ sk_D_1 @ X0 @ sk_B)) @ 
% 11.21/11.42             sk_A))),
% 11.21/11.42      inference('simplify', [status(thm)], ['58'])).
% 11.21/11.42  thf('60', plain,
% 11.21/11.42      (![X33 : $i, X34 : $i, X35 : $i, X36 : $i]:
% 11.21/11.42         ((zip_tseitin_2 @ X33 @ X34 @ X35 @ X36)
% 11.21/11.42          | ~ (r2_hidden @ (k1_funct_1 @ X34 @ X33) @ X35))),
% 11.21/11.42      inference('cnf', [status(esa)], [zf_stmt_1])).
% 11.21/11.42  thf('61', plain,
% 11.21/11.42      (![X0 : $i, X1 : $i]:
% 11.21/11.42         ((zip_tseitin_3 @ sk_D_1 @ X0 @ sk_B)
% 11.21/11.42          | (zip_tseitin_2 @ (sk_D @ sk_D_1 @ X0 @ sk_B) @ sk_D_1 @ sk_A @ X1))),
% 11.21/11.42      inference('sup-', [status(thm)], ['59', '60'])).
% 11.21/11.42  thf('62', plain,
% 11.21/11.42      (![X0 : $i]:
% 11.21/11.42         (~ (zip_tseitin_2 @ (sk_D @ sk_D_1 @ X0 @ sk_B) @ sk_D_1 @ X0 @ sk_B)
% 11.21/11.42          | (zip_tseitin_3 @ sk_D_1 @ X0 @ sk_B))),
% 11.21/11.42      inference('demod', [status(thm)], ['35', '36', '37', '38', '41'])).
% 11.21/11.42  thf('63', plain,
% 11.21/11.42      (((zip_tseitin_3 @ sk_D_1 @ sk_A @ sk_B)
% 11.21/11.42        | (zip_tseitin_3 @ sk_D_1 @ sk_A @ sk_B))),
% 11.21/11.42      inference('sup-', [status(thm)], ['61', '62'])).
% 11.21/11.42  thf('64', plain, ((zip_tseitin_3 @ sk_D_1 @ sk_A @ sk_B)),
% 11.21/11.42      inference('simplify', [status(thm)], ['63'])).
% 11.21/11.42  thf('65', plain,
% 11.21/11.42      (![X37 : $i, X38 : $i, X39 : $i]:
% 11.21/11.42         ((m1_subset_1 @ X37 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X39 @ X38)))
% 11.21/11.42          | ~ (zip_tseitin_3 @ X37 @ X38 @ X39))),
% 11.21/11.42      inference('cnf', [status(esa)], [zf_stmt_8])).
% 11.21/11.42  thf('66', plain,
% 11.21/11.42      ((m1_subset_1 @ sk_D_1 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B @ sk_A)))),
% 11.21/11.42      inference('sup-', [status(thm)], ['64', '65'])).
% 11.21/11.42  thf('67', plain,
% 11.21/11.42      (![X12 : $i, X13 : $i, X14 : $i]:
% 11.21/11.42         ((m1_subset_1 @ (k2_relset_1 @ X12 @ X13 @ X14) @ (k1_zfmisc_1 @ X13))
% 11.21/11.42          | ~ (m1_subset_1 @ X14 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X12 @ X13))))),
% 11.21/11.42      inference('cnf', [status(esa)], [dt_k2_relset_1])).
% 11.21/11.42  thf('68', plain,
% 11.21/11.42      ((m1_subset_1 @ (k2_relset_1 @ sk_B @ sk_A @ sk_D_1) @ 
% 11.21/11.42        (k1_zfmisc_1 @ sk_A))),
% 11.21/11.42      inference('sup-', [status(thm)], ['66', '67'])).
% 11.21/11.42  thf('69', plain,
% 11.21/11.42      ((m1_subset_1 @ sk_D_1 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B @ sk_A)))),
% 11.21/11.42      inference('sup-', [status(thm)], ['64', '65'])).
% 11.21/11.42  thf('70', plain,
% 11.21/11.42      (![X18 : $i, X19 : $i, X20 : $i]:
% 11.21/11.42         (((k2_relset_1 @ X19 @ X20 @ X18) = (k2_relat_1 @ X18))
% 11.21/11.42          | ~ (m1_subset_1 @ X18 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X19 @ X20))))),
% 11.21/11.42      inference('cnf', [status(esa)], [redefinition_k2_relset_1])).
% 11.21/11.42  thf('71', plain,
% 11.21/11.42      (((k2_relset_1 @ sk_B @ sk_A @ sk_D_1) = (k2_relat_1 @ sk_D_1))),
% 11.21/11.42      inference('sup-', [status(thm)], ['69', '70'])).
% 11.21/11.42  thf('72', plain,
% 11.21/11.42      ((m1_subset_1 @ (k2_relat_1 @ sk_D_1) @ (k1_zfmisc_1 @ sk_A))),
% 11.21/11.42      inference('demod', [status(thm)], ['68', '71'])).
% 11.21/11.42  thf('73', plain,
% 11.21/11.42      (![X6 : $i, X7 : $i]:
% 11.21/11.42         ((r1_tarski @ X6 @ X7) | ~ (m1_subset_1 @ X6 @ (k1_zfmisc_1 @ X7)))),
% 11.21/11.42      inference('cnf', [status(esa)], [t3_subset])).
% 11.21/11.42  thf('74', plain, ((r1_tarski @ (k2_relat_1 @ sk_D_1) @ sk_A)),
% 11.21/11.42      inference('sup-', [status(thm)], ['72', '73'])).
% 11.21/11.42  thf('75', plain, ($false), inference('demod', [status(thm)], ['4', '74'])).
% 11.21/11.42  
% 11.21/11.42  % SZS output end Refutation
% 11.21/11.42  
% 11.21/11.43  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
