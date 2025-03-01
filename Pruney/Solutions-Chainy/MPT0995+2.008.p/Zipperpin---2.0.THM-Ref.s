%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.jvdF5L8uKB

% Computer   : n005.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:55:53 EST 2020

% Result     : Theorem 0.46s
% Output     : Refutation 0.46s
% Verified   : 
% Statistics : Number of formulae       :   87 ( 117 expanded)
%              Number of leaves         :   40 (  54 expanded)
%              Depth                    :   17
%              Number of atoms          :  637 (1465 expanded)
%              Number of equality atoms :   37 (  85 expanded)
%              Maximal formula depth    :   15 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(sk_E_3_type,type,(
    sk_E_3: $i )).

thf(k9_relat_1_type,type,(
    k9_relat_1: $i > $i > $i )).

thf(sk_F_type,type,(
    sk_F: $i )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(v1_funct_1_type,type,(
    v1_funct_1: $i > $o )).

thf(k1_relset_1_type,type,(
    k1_relset_1: $i > $i > $i > $i )).

thf(k1_funct_1_type,type,(
    k1_funct_1: $i > $i > $i )).

thf(v1_funct_2_type,type,(
    v1_funct_2: $i > $i > $i > $o )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(k4_tarski_type,type,(
    k4_tarski: $i > $i > $i )).

thf(k2_zfmisc_1_type,type,(
    k2_zfmisc_1: $i > $i > $i )).

thf(sk_E_2_type,type,(
    sk_E_2: $i > $i > $i )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(sk_D_2_type,type,(
    sk_D_2: $i )).

thf(k1_relat_1_type,type,(
    k1_relat_1: $i > $i )).

thf(zip_tseitin_2_type,type,(
    zip_tseitin_2: $i > $i > $i > $o )).

thf(zip_tseitin_0_type,type,(
    zip_tseitin_0: $i > $i > $i > $i > $o )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(k7_relset_1_type,type,(
    k7_relset_1: $i > $i > $i > $i > $i )).

thf(zip_tseitin_1_type,type,(
    zip_tseitin_1: $i > $i > $o )).

thf(t43_funct_2,conjecture,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( ( v1_funct_1 @ D )
        & ( v1_funct_2 @ D @ A @ B )
        & ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) )
     => ( ( B != k1_xboole_0 )
       => ! [E: $i] :
            ( ? [F: $i] :
                ( ( E
                  = ( k1_funct_1 @ D @ F ) )
                & ( r2_hidden @ F @ C )
                & ( r2_hidden @ F @ A ) )
           => ( r2_hidden @ E @ ( k7_relset_1 @ A @ B @ D @ C ) ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i,D: $i] :
        ( ( ( v1_funct_1 @ D )
          & ( v1_funct_2 @ D @ A @ B )
          & ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) )
       => ( ( B != k1_xboole_0 )
         => ! [E: $i] :
              ( ? [F: $i] :
                  ( ( E
                    = ( k1_funct_1 @ D @ F ) )
                  & ( r2_hidden @ F @ C )
                  & ( r2_hidden @ F @ A ) )
             => ( r2_hidden @ E @ ( k7_relset_1 @ A @ B @ D @ C ) ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t43_funct_2])).

thf('0',plain,(
    ~ ( r2_hidden @ sk_E_3 @ ( k7_relset_1 @ sk_A @ sk_B @ sk_D_2 @ sk_C ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,(
    m1_subset_1 @ sk_D_2 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(redefinition_k7_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( k7_relset_1 @ A @ B @ C @ D )
        = ( k9_relat_1 @ C @ D ) ) ) )).

thf('2',plain,(
    ! [X20: $i,X21: $i,X22: $i,X23: $i] :
      ( ~ ( m1_subset_1 @ X20 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X21 @ X22 ) ) )
      | ( ( k7_relset_1 @ X21 @ X22 @ X20 @ X23 )
        = ( k9_relat_1 @ X20 @ X23 ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k7_relset_1])).

thf('3',plain,(
    ! [X0: $i] :
      ( ( k7_relset_1 @ sk_A @ sk_B @ sk_D_2 @ X0 )
      = ( k9_relat_1 @ sk_D_2 @ X0 ) ) ),
    inference('sup-',[status(thm)],['1','2'])).

thf('4',plain,(
    ~ ( r2_hidden @ sk_E_3 @ ( k9_relat_1 @ sk_D_2 @ sk_C ) ) ),
    inference(demod,[status(thm)],['0','3'])).

thf('5',plain,(
    r2_hidden @ sk_F @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('6',plain,(
    r2_hidden @ sk_F @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('7',plain,(
    m1_subset_1 @ sk_D_2 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t22_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ A ) ) )
     => ( ! [D: $i] :
            ~ ( ( r2_hidden @ D @ B )
              & ! [E: $i] :
                  ~ ( r2_hidden @ ( k4_tarski @ D @ E ) @ C ) )
      <=> ( ( k1_relset_1 @ B @ A @ C )
          = B ) ) ) )).

thf('8',plain,(
    ! [X24: $i,X25: $i,X26: $i,X27: $i] :
      ( ( ( k1_relset_1 @ X24 @ X25 @ X26 )
       != X24 )
      | ~ ( r2_hidden @ X27 @ X24 )
      | ( r2_hidden @ ( k4_tarski @ X27 @ ( sk_E_2 @ X27 @ X26 ) ) @ X26 )
      | ~ ( m1_subset_1 @ X26 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X24 @ X25 ) ) ) ) ),
    inference(cnf,[status(esa)],[t22_relset_1])).

thf('9',plain,(
    ! [X0: $i] :
      ( ( r2_hidden @ ( k4_tarski @ X0 @ ( sk_E_2 @ X0 @ sk_D_2 ) ) @ sk_D_2 )
      | ~ ( r2_hidden @ X0 @ sk_A )
      | ( ( k1_relset_1 @ sk_A @ sk_B @ sk_D_2 )
       != sk_A ) ) ),
    inference('sup-',[status(thm)],['7','8'])).

thf('10',plain,(
    v1_funct_2 @ sk_D_2 @ sk_A @ sk_B ),
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

thf(zf_stmt_1,axiom,(
    ! [C: $i,B: $i,A: $i] :
      ( ( zip_tseitin_2 @ C @ B @ A )
     => ( ( v1_funct_2 @ C @ A @ B )
      <=> ( A
          = ( k1_relset_1 @ A @ B @ C ) ) ) ) )).

thf('11',plain,(
    ! [X31: $i,X32: $i,X33: $i] :
      ( ~ ( v1_funct_2 @ X33 @ X31 @ X32 )
      | ( X31
        = ( k1_relset_1 @ X31 @ X32 @ X33 ) )
      | ~ ( zip_tseitin_2 @ X33 @ X32 @ X31 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_1])).

thf('12',plain,
    ( ~ ( zip_tseitin_2 @ sk_D_2 @ sk_B @ sk_A )
    | ( sk_A
      = ( k1_relset_1 @ sk_A @ sk_B @ sk_D_2 ) ) ),
    inference('sup-',[status(thm)],['10','11'])).

thf(zf_stmt_2,axiom,(
    ! [B: $i,A: $i] :
      ( ( ( B = k1_xboole_0 )
       => ( A = k1_xboole_0 ) )
     => ( zip_tseitin_1 @ B @ A ) ) )).

thf('13',plain,(
    ! [X29: $i,X30: $i] :
      ( ( zip_tseitin_1 @ X29 @ X30 )
      | ( X29 = k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_2])).

thf('14',plain,(
    m1_subset_1 @ sk_D_2 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(zf_stmt_3,type,(
    zip_tseitin_2: $i > $i > $i > $o )).

thf(zf_stmt_4,type,(
    zip_tseitin_1: $i > $i > $o )).

thf(zf_stmt_5,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( ( zip_tseitin_1 @ B @ A )
         => ( zip_tseitin_2 @ C @ B @ A ) )
        & ( ( B = k1_xboole_0 )
         => ( ( A = k1_xboole_0 )
            | ( ( v1_funct_2 @ C @ A @ B )
            <=> ( C = k1_xboole_0 ) ) ) ) ) ) )).

thf('15',plain,(
    ! [X34: $i,X35: $i,X36: $i] :
      ( ~ ( zip_tseitin_1 @ X34 @ X35 )
      | ( zip_tseitin_2 @ X36 @ X34 @ X35 )
      | ~ ( m1_subset_1 @ X36 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X35 @ X34 ) ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_5])).

thf('16',plain,
    ( ( zip_tseitin_2 @ sk_D_2 @ sk_B @ sk_A )
    | ~ ( zip_tseitin_1 @ sk_B @ sk_A ) ),
    inference('sup-',[status(thm)],['14','15'])).

thf('17',plain,
    ( ( sk_B = k1_xboole_0 )
    | ( zip_tseitin_2 @ sk_D_2 @ sk_B @ sk_A ) ),
    inference('sup-',[status(thm)],['13','16'])).

thf('18',plain,(
    sk_B != k1_xboole_0 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('19',plain,(
    zip_tseitin_2 @ sk_D_2 @ sk_B @ sk_A ),
    inference('simplify_reflect-',[status(thm)],['17','18'])).

thf('20',plain,
    ( sk_A
    = ( k1_relset_1 @ sk_A @ sk_B @ sk_D_2 ) ),
    inference(demod,[status(thm)],['12','19'])).

thf('21',plain,(
    ! [X0: $i] :
      ( ( r2_hidden @ ( k4_tarski @ X0 @ ( sk_E_2 @ X0 @ sk_D_2 ) ) @ sk_D_2 )
      | ~ ( r2_hidden @ X0 @ sk_A )
      | ( sk_A != sk_A ) ) ),
    inference(demod,[status(thm)],['9','20'])).

thf('22',plain,(
    ! [X0: $i] :
      ( ~ ( r2_hidden @ X0 @ sk_A )
      | ( r2_hidden @ ( k4_tarski @ X0 @ ( sk_E_2 @ X0 @ sk_D_2 ) ) @ sk_D_2 ) ) ),
    inference(simplify,[status(thm)],['21'])).

thf('23',plain,(
    r2_hidden @ ( k4_tarski @ sk_F @ ( sk_E_2 @ sk_F @ sk_D_2 ) ) @ sk_D_2 ),
    inference('sup-',[status(thm)],['6','22'])).

thf(t8_funct_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( v1_relat_1 @ C )
        & ( v1_funct_1 @ C ) )
     => ( ( r2_hidden @ ( k4_tarski @ A @ B ) @ C )
      <=> ( ( r2_hidden @ A @ ( k1_relat_1 @ C ) )
          & ( B
            = ( k1_funct_1 @ C @ A ) ) ) ) ) )).

thf('24',plain,(
    ! [X17: $i,X18: $i,X19: $i] :
      ( ~ ( r2_hidden @ ( k4_tarski @ X17 @ X19 ) @ X18 )
      | ( r2_hidden @ X17 @ ( k1_relat_1 @ X18 ) )
      | ~ ( v1_funct_1 @ X18 )
      | ~ ( v1_relat_1 @ X18 ) ) ),
    inference(cnf,[status(esa)],[t8_funct_1])).

thf('25',plain,
    ( ~ ( v1_relat_1 @ sk_D_2 )
    | ~ ( v1_funct_1 @ sk_D_2 )
    | ( r2_hidden @ sk_F @ ( k1_relat_1 @ sk_D_2 ) ) ),
    inference('sup-',[status(thm)],['23','24'])).

thf('26',plain,(
    m1_subset_1 @ sk_D_2 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

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
    ( ~ ( v1_relat_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) )
    | ( v1_relat_1 @ sk_D_2 ) ),
    inference('sup-',[status(thm)],['26','27'])).

thf(fc6_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( v1_relat_1 @ ( k2_zfmisc_1 @ A @ B ) ) )).

thf('29',plain,(
    ! [X2: $i,X3: $i] :
      ( v1_relat_1 @ ( k2_zfmisc_1 @ X2 @ X3 ) ) ),
    inference(cnf,[status(esa)],[fc6_relat_1])).

thf('30',plain,(
    v1_relat_1 @ sk_D_2 ),
    inference(demod,[status(thm)],['28','29'])).

thf('31',plain,(
    v1_funct_1 @ sk_D_2 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('32',plain,(
    r2_hidden @ sk_F @ ( k1_relat_1 @ sk_D_2 ) ),
    inference(demod,[status(thm)],['25','30','31'])).

thf(d12_funct_1,axiom,(
    ! [A: $i] :
      ( ( ( v1_funct_1 @ A )
        & ( v1_relat_1 @ A ) )
     => ! [B: $i,C: $i] :
          ( ( C
            = ( k9_relat_1 @ A @ B ) )
        <=> ! [D: $i] :
              ( ( r2_hidden @ D @ C )
            <=> ? [E: $i] :
                  ( ( r2_hidden @ E @ ( k1_relat_1 @ A ) )
                  & ( r2_hidden @ E @ B )
                  & ( D
                    = ( k1_funct_1 @ A @ E ) ) ) ) ) ) )).

thf(zf_stmt_6,axiom,(
    ! [E: $i,D: $i,B: $i,A: $i] :
      ( ( zip_tseitin_0 @ E @ D @ B @ A )
    <=> ( ( D
          = ( k1_funct_1 @ A @ E ) )
        & ( r2_hidden @ E @ B )
        & ( r2_hidden @ E @ ( k1_relat_1 @ A ) ) ) ) )).

thf('33',plain,(
    ! [X5: $i,X6: $i,X7: $i,X8: $i] :
      ( ( zip_tseitin_0 @ X5 @ X6 @ X7 @ X8 )
      | ~ ( r2_hidden @ X5 @ ( k1_relat_1 @ X8 ) )
      | ~ ( r2_hidden @ X5 @ X7 )
      | ( X6
       != ( k1_funct_1 @ X8 @ X5 ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_6])).

thf('34',plain,(
    ! [X5: $i,X7: $i,X8: $i] :
      ( ~ ( r2_hidden @ X5 @ X7 )
      | ~ ( r2_hidden @ X5 @ ( k1_relat_1 @ X8 ) )
      | ( zip_tseitin_0 @ X5 @ ( k1_funct_1 @ X8 @ X5 ) @ X7 @ X8 ) ) ),
    inference(simplify,[status(thm)],['33'])).

thf('35',plain,(
    ! [X0: $i] :
      ( ( zip_tseitin_0 @ sk_F @ ( k1_funct_1 @ sk_D_2 @ sk_F ) @ X0 @ sk_D_2 )
      | ~ ( r2_hidden @ sk_F @ X0 ) ) ),
    inference('sup-',[status(thm)],['32','34'])).

thf('36',plain,
    ( sk_E_3
    = ( k1_funct_1 @ sk_D_2 @ sk_F ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('37',plain,(
    ! [X0: $i] :
      ( ( zip_tseitin_0 @ sk_F @ sk_E_3 @ X0 @ sk_D_2 )
      | ~ ( r2_hidden @ sk_F @ X0 ) ) ),
    inference(demod,[status(thm)],['35','36'])).

thf('38',plain,(
    zip_tseitin_0 @ sk_F @ sk_E_3 @ sk_C @ sk_D_2 ),
    inference('sup-',[status(thm)],['5','37'])).

thf(zf_stmt_7,type,(
    zip_tseitin_0: $i > $i > $i > $i > $o )).

thf(zf_stmt_8,axiom,(
    ! [A: $i] :
      ( ( ( v1_relat_1 @ A )
        & ( v1_funct_1 @ A ) )
     => ! [B: $i,C: $i] :
          ( ( C
            = ( k9_relat_1 @ A @ B ) )
        <=> ! [D: $i] :
              ( ( r2_hidden @ D @ C )
            <=> ? [E: $i] :
                  ( zip_tseitin_0 @ E @ D @ B @ A ) ) ) ) )).

thf('39',plain,(
    ! [X10: $i,X11: $i,X13: $i,X15: $i,X16: $i] :
      ( ( X13
       != ( k9_relat_1 @ X11 @ X10 ) )
      | ( r2_hidden @ X15 @ X13 )
      | ~ ( zip_tseitin_0 @ X16 @ X15 @ X10 @ X11 )
      | ~ ( v1_funct_1 @ X11 )
      | ~ ( v1_relat_1 @ X11 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_8])).

thf('40',plain,(
    ! [X10: $i,X11: $i,X15: $i,X16: $i] :
      ( ~ ( v1_relat_1 @ X11 )
      | ~ ( v1_funct_1 @ X11 )
      | ~ ( zip_tseitin_0 @ X16 @ X15 @ X10 @ X11 )
      | ( r2_hidden @ X15 @ ( k9_relat_1 @ X11 @ X10 ) ) ) ),
    inference(simplify,[status(thm)],['39'])).

thf('41',plain,
    ( ( r2_hidden @ sk_E_3 @ ( k9_relat_1 @ sk_D_2 @ sk_C ) )
    | ~ ( v1_funct_1 @ sk_D_2 )
    | ~ ( v1_relat_1 @ sk_D_2 ) ),
    inference('sup-',[status(thm)],['38','40'])).

thf('42',plain,(
    v1_funct_1 @ sk_D_2 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('43',plain,(
    v1_relat_1 @ sk_D_2 ),
    inference(demod,[status(thm)],['28','29'])).

thf('44',plain,(
    r2_hidden @ sk_E_3 @ ( k9_relat_1 @ sk_D_2 @ sk_C ) ),
    inference(demod,[status(thm)],['41','42','43'])).

thf('45',plain,(
    $false ),
    inference(demod,[status(thm)],['4','44'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.14  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.15  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.jvdF5L8uKB
% 0.16/0.36  % Computer   : n005.cluster.edu
% 0.16/0.36  % Model      : x86_64 x86_64
% 0.16/0.36  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.16/0.36  % Memory     : 8042.1875MB
% 0.16/0.36  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.16/0.36  % CPULimit   : 60
% 0.16/0.36  % DateTime   : Tue Dec  1 09:54:18 EST 2020
% 0.16/0.37  % CPUTime    : 
% 0.16/0.37  % Running portfolio for 600 s
% 0.16/0.37  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.16/0.37  % Number of cores: 8
% 0.16/0.37  % Python version: Python 3.6.8
% 0.23/0.37  % Running in FO mode
% 0.46/0.65  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.46/0.65  % Solved by: fo/fo7.sh
% 0.46/0.65  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.46/0.65  % done 136 iterations in 0.179s
% 0.46/0.65  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.46/0.65  % SZS output start Refutation
% 0.46/0.65  thf(sk_E_3_type, type, sk_E_3: $i).
% 0.46/0.65  thf(k9_relat_1_type, type, k9_relat_1: $i > $i > $i).
% 0.46/0.65  thf(sk_F_type, type, sk_F: $i).
% 0.46/0.65  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.46/0.65  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.46/0.65  thf(sk_A_type, type, sk_A: $i).
% 0.46/0.65  thf(v1_funct_1_type, type, v1_funct_1: $i > $o).
% 0.46/0.65  thf(k1_relset_1_type, type, k1_relset_1: $i > $i > $i > $i).
% 0.46/0.65  thf(k1_funct_1_type, type, k1_funct_1: $i > $i > $i).
% 0.46/0.65  thf(v1_funct_2_type, type, v1_funct_2: $i > $i > $i > $o).
% 0.46/0.65  thf(sk_B_type, type, sk_B: $i).
% 0.46/0.65  thf(sk_C_type, type, sk_C: $i).
% 0.46/0.65  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.46/0.65  thf(k4_tarski_type, type, k4_tarski: $i > $i > $i).
% 0.46/0.65  thf(k2_zfmisc_1_type, type, k2_zfmisc_1: $i > $i > $i).
% 0.46/0.65  thf(sk_E_2_type, type, sk_E_2: $i > $i > $i).
% 0.46/0.65  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.46/0.65  thf(sk_D_2_type, type, sk_D_2: $i).
% 0.46/0.65  thf(k1_relat_1_type, type, k1_relat_1: $i > $i).
% 0.46/0.65  thf(zip_tseitin_2_type, type, zip_tseitin_2: $i > $i > $i > $o).
% 0.46/0.65  thf(zip_tseitin_0_type, type, zip_tseitin_0: $i > $i > $i > $i > $o).
% 0.46/0.65  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.46/0.65  thf(k7_relset_1_type, type, k7_relset_1: $i > $i > $i > $i > $i).
% 0.46/0.65  thf(zip_tseitin_1_type, type, zip_tseitin_1: $i > $i > $o).
% 0.46/0.65  thf(t43_funct_2, conjecture,
% 0.46/0.65    (![A:$i,B:$i,C:$i,D:$i]:
% 0.46/0.65     ( ( ( v1_funct_1 @ D ) & ( v1_funct_2 @ D @ A @ B ) & 
% 0.46/0.65         ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) =>
% 0.46/0.65       ( ( ( B ) != ( k1_xboole_0 ) ) =>
% 0.46/0.65         ( ![E:$i]:
% 0.46/0.65           ( ( ?[F:$i]:
% 0.46/0.65               ( ( ( E ) = ( k1_funct_1 @ D @ F ) ) & ( r2_hidden @ F @ C ) & 
% 0.46/0.65                 ( r2_hidden @ F @ A ) ) ) =>
% 0.46/0.65             ( r2_hidden @ E @ ( k7_relset_1 @ A @ B @ D @ C ) ) ) ) ) ))).
% 0.46/0.65  thf(zf_stmt_0, negated_conjecture,
% 0.46/0.65    (~( ![A:$i,B:$i,C:$i,D:$i]:
% 0.46/0.65        ( ( ( v1_funct_1 @ D ) & ( v1_funct_2 @ D @ A @ B ) & 
% 0.46/0.66            ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) =>
% 0.46/0.66          ( ( ( B ) != ( k1_xboole_0 ) ) =>
% 0.46/0.66            ( ![E:$i]:
% 0.46/0.66              ( ( ?[F:$i]:
% 0.46/0.66                  ( ( ( E ) = ( k1_funct_1 @ D @ F ) ) & 
% 0.46/0.66                    ( r2_hidden @ F @ C ) & ( r2_hidden @ F @ A ) ) ) =>
% 0.46/0.66                ( r2_hidden @ E @ ( k7_relset_1 @ A @ B @ D @ C ) ) ) ) ) ) )),
% 0.46/0.66    inference('cnf.neg', [status(esa)], [t43_funct_2])).
% 0.46/0.66  thf('0', plain,
% 0.46/0.66      (~ (r2_hidden @ sk_E_3 @ (k7_relset_1 @ sk_A @ sk_B @ sk_D_2 @ sk_C))),
% 0.46/0.66      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.46/0.66  thf('1', plain,
% 0.46/0.66      ((m1_subset_1 @ sk_D_2 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 0.46/0.66      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.46/0.66  thf(redefinition_k7_relset_1, axiom,
% 0.46/0.66    (![A:$i,B:$i,C:$i,D:$i]:
% 0.46/0.66     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.46/0.66       ( ( k7_relset_1 @ A @ B @ C @ D ) = ( k9_relat_1 @ C @ D ) ) ))).
% 0.46/0.66  thf('2', plain,
% 0.46/0.66      (![X20 : $i, X21 : $i, X22 : $i, X23 : $i]:
% 0.46/0.66         (~ (m1_subset_1 @ X20 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X21 @ X22)))
% 0.46/0.66          | ((k7_relset_1 @ X21 @ X22 @ X20 @ X23) = (k9_relat_1 @ X20 @ X23)))),
% 0.46/0.66      inference('cnf', [status(esa)], [redefinition_k7_relset_1])).
% 0.46/0.66  thf('3', plain,
% 0.46/0.66      (![X0 : $i]:
% 0.46/0.66         ((k7_relset_1 @ sk_A @ sk_B @ sk_D_2 @ X0)
% 0.46/0.66           = (k9_relat_1 @ sk_D_2 @ X0))),
% 0.46/0.66      inference('sup-', [status(thm)], ['1', '2'])).
% 0.46/0.66  thf('4', plain, (~ (r2_hidden @ sk_E_3 @ (k9_relat_1 @ sk_D_2 @ sk_C))),
% 0.46/0.66      inference('demod', [status(thm)], ['0', '3'])).
% 0.46/0.66  thf('5', plain, ((r2_hidden @ sk_F @ sk_C)),
% 0.46/0.66      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.46/0.66  thf('6', plain, ((r2_hidden @ sk_F @ sk_A)),
% 0.46/0.66      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.46/0.66  thf('7', plain,
% 0.46/0.66      ((m1_subset_1 @ sk_D_2 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 0.46/0.66      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.46/0.66  thf(t22_relset_1, axiom,
% 0.46/0.66    (![A:$i,B:$i,C:$i]:
% 0.46/0.66     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ A ) ) ) =>
% 0.46/0.66       ( ( ![D:$i]:
% 0.46/0.66           ( ~( ( r2_hidden @ D @ B ) & 
% 0.46/0.66                ( ![E:$i]: ( ~( r2_hidden @ ( k4_tarski @ D @ E ) @ C ) ) ) ) ) ) <=>
% 0.46/0.66         ( ( k1_relset_1 @ B @ A @ C ) = ( B ) ) ) ))).
% 0.46/0.66  thf('8', plain,
% 0.46/0.66      (![X24 : $i, X25 : $i, X26 : $i, X27 : $i]:
% 0.46/0.66         (((k1_relset_1 @ X24 @ X25 @ X26) != (X24))
% 0.46/0.66          | ~ (r2_hidden @ X27 @ X24)
% 0.46/0.66          | (r2_hidden @ (k4_tarski @ X27 @ (sk_E_2 @ X27 @ X26)) @ X26)
% 0.46/0.66          | ~ (m1_subset_1 @ X26 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X24 @ X25))))),
% 0.46/0.66      inference('cnf', [status(esa)], [t22_relset_1])).
% 0.46/0.66  thf('9', plain,
% 0.46/0.66      (![X0 : $i]:
% 0.46/0.66         ((r2_hidden @ (k4_tarski @ X0 @ (sk_E_2 @ X0 @ sk_D_2)) @ sk_D_2)
% 0.46/0.66          | ~ (r2_hidden @ X0 @ sk_A)
% 0.46/0.66          | ((k1_relset_1 @ sk_A @ sk_B @ sk_D_2) != (sk_A)))),
% 0.46/0.66      inference('sup-', [status(thm)], ['7', '8'])).
% 0.46/0.66  thf('10', plain, ((v1_funct_2 @ sk_D_2 @ sk_A @ sk_B)),
% 0.46/0.66      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.46/0.66  thf(d1_funct_2, axiom,
% 0.46/0.66    (![A:$i,B:$i,C:$i]:
% 0.46/0.66     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.46/0.66       ( ( ( ( B ) = ( k1_xboole_0 ) ) =>
% 0.46/0.66           ( ( ( v1_funct_2 @ C @ A @ B ) <=> ( ( C ) = ( k1_xboole_0 ) ) ) | 
% 0.46/0.66             ( ( A ) = ( k1_xboole_0 ) ) ) ) & 
% 0.46/0.66         ( ( ( ( B ) = ( k1_xboole_0 ) ) => ( ( A ) = ( k1_xboole_0 ) ) ) =>
% 0.46/0.66           ( ( v1_funct_2 @ C @ A @ B ) <=>
% 0.46/0.66             ( ( A ) = ( k1_relset_1 @ A @ B @ C ) ) ) ) ) ))).
% 0.46/0.66  thf(zf_stmt_1, axiom,
% 0.46/0.66    (![C:$i,B:$i,A:$i]:
% 0.46/0.66     ( ( zip_tseitin_2 @ C @ B @ A ) =>
% 0.46/0.66       ( ( v1_funct_2 @ C @ A @ B ) <=> ( ( A ) = ( k1_relset_1 @ A @ B @ C ) ) ) ))).
% 0.46/0.66  thf('11', plain,
% 0.46/0.66      (![X31 : $i, X32 : $i, X33 : $i]:
% 0.46/0.66         (~ (v1_funct_2 @ X33 @ X31 @ X32)
% 0.46/0.66          | ((X31) = (k1_relset_1 @ X31 @ X32 @ X33))
% 0.46/0.66          | ~ (zip_tseitin_2 @ X33 @ X32 @ X31))),
% 0.46/0.66      inference('cnf', [status(esa)], [zf_stmt_1])).
% 0.46/0.66  thf('12', plain,
% 0.46/0.66      ((~ (zip_tseitin_2 @ sk_D_2 @ sk_B @ sk_A)
% 0.46/0.66        | ((sk_A) = (k1_relset_1 @ sk_A @ sk_B @ sk_D_2)))),
% 0.46/0.66      inference('sup-', [status(thm)], ['10', '11'])).
% 0.46/0.66  thf(zf_stmt_2, axiom,
% 0.46/0.66    (![B:$i,A:$i]:
% 0.46/0.66     ( ( ( ( B ) = ( k1_xboole_0 ) ) => ( ( A ) = ( k1_xboole_0 ) ) ) =>
% 0.46/0.66       ( zip_tseitin_1 @ B @ A ) ))).
% 0.46/0.66  thf('13', plain,
% 0.46/0.66      (![X29 : $i, X30 : $i]:
% 0.46/0.66         ((zip_tseitin_1 @ X29 @ X30) | ((X29) = (k1_xboole_0)))),
% 0.46/0.66      inference('cnf', [status(esa)], [zf_stmt_2])).
% 0.46/0.66  thf('14', plain,
% 0.46/0.66      ((m1_subset_1 @ sk_D_2 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 0.46/0.66      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.46/0.66  thf(zf_stmt_3, type, zip_tseitin_2 : $i > $i > $i > $o).
% 0.46/0.66  thf(zf_stmt_4, type, zip_tseitin_1 : $i > $i > $o).
% 0.46/0.66  thf(zf_stmt_5, axiom,
% 0.46/0.66    (![A:$i,B:$i,C:$i]:
% 0.46/0.66     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.46/0.66       ( ( ( zip_tseitin_1 @ B @ A ) => ( zip_tseitin_2 @ C @ B @ A ) ) & 
% 0.46/0.66         ( ( ( B ) = ( k1_xboole_0 ) ) =>
% 0.46/0.66           ( ( ( A ) = ( k1_xboole_0 ) ) | 
% 0.46/0.66             ( ( v1_funct_2 @ C @ A @ B ) <=> ( ( C ) = ( k1_xboole_0 ) ) ) ) ) ) ))).
% 0.46/0.66  thf('15', plain,
% 0.46/0.66      (![X34 : $i, X35 : $i, X36 : $i]:
% 0.46/0.66         (~ (zip_tseitin_1 @ X34 @ X35)
% 0.46/0.66          | (zip_tseitin_2 @ X36 @ X34 @ X35)
% 0.46/0.66          | ~ (m1_subset_1 @ X36 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X35 @ X34))))),
% 0.46/0.66      inference('cnf', [status(esa)], [zf_stmt_5])).
% 0.46/0.66  thf('16', plain,
% 0.46/0.66      (((zip_tseitin_2 @ sk_D_2 @ sk_B @ sk_A)
% 0.46/0.66        | ~ (zip_tseitin_1 @ sk_B @ sk_A))),
% 0.46/0.66      inference('sup-', [status(thm)], ['14', '15'])).
% 0.46/0.66  thf('17', plain,
% 0.46/0.66      ((((sk_B) = (k1_xboole_0)) | (zip_tseitin_2 @ sk_D_2 @ sk_B @ sk_A))),
% 0.46/0.66      inference('sup-', [status(thm)], ['13', '16'])).
% 0.46/0.66  thf('18', plain, (((sk_B) != (k1_xboole_0))),
% 0.46/0.66      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.46/0.66  thf('19', plain, ((zip_tseitin_2 @ sk_D_2 @ sk_B @ sk_A)),
% 0.46/0.66      inference('simplify_reflect-', [status(thm)], ['17', '18'])).
% 0.46/0.66  thf('20', plain, (((sk_A) = (k1_relset_1 @ sk_A @ sk_B @ sk_D_2))),
% 0.46/0.66      inference('demod', [status(thm)], ['12', '19'])).
% 0.46/0.66  thf('21', plain,
% 0.46/0.66      (![X0 : $i]:
% 0.46/0.66         ((r2_hidden @ (k4_tarski @ X0 @ (sk_E_2 @ X0 @ sk_D_2)) @ sk_D_2)
% 0.46/0.66          | ~ (r2_hidden @ X0 @ sk_A)
% 0.46/0.66          | ((sk_A) != (sk_A)))),
% 0.46/0.66      inference('demod', [status(thm)], ['9', '20'])).
% 0.46/0.66  thf('22', plain,
% 0.46/0.66      (![X0 : $i]:
% 0.46/0.66         (~ (r2_hidden @ X0 @ sk_A)
% 0.46/0.66          | (r2_hidden @ (k4_tarski @ X0 @ (sk_E_2 @ X0 @ sk_D_2)) @ sk_D_2))),
% 0.46/0.66      inference('simplify', [status(thm)], ['21'])).
% 0.46/0.66  thf('23', plain,
% 0.46/0.66      ((r2_hidden @ (k4_tarski @ sk_F @ (sk_E_2 @ sk_F @ sk_D_2)) @ sk_D_2)),
% 0.46/0.66      inference('sup-', [status(thm)], ['6', '22'])).
% 0.46/0.66  thf(t8_funct_1, axiom,
% 0.46/0.66    (![A:$i,B:$i,C:$i]:
% 0.46/0.66     ( ( ( v1_relat_1 @ C ) & ( v1_funct_1 @ C ) ) =>
% 0.46/0.66       ( ( r2_hidden @ ( k4_tarski @ A @ B ) @ C ) <=>
% 0.46/0.66         ( ( r2_hidden @ A @ ( k1_relat_1 @ C ) ) & 
% 0.46/0.66           ( ( B ) = ( k1_funct_1 @ C @ A ) ) ) ) ))).
% 0.46/0.66  thf('24', plain,
% 0.46/0.66      (![X17 : $i, X18 : $i, X19 : $i]:
% 0.46/0.66         (~ (r2_hidden @ (k4_tarski @ X17 @ X19) @ X18)
% 0.46/0.66          | (r2_hidden @ X17 @ (k1_relat_1 @ X18))
% 0.46/0.66          | ~ (v1_funct_1 @ X18)
% 0.46/0.66          | ~ (v1_relat_1 @ X18))),
% 0.46/0.66      inference('cnf', [status(esa)], [t8_funct_1])).
% 0.46/0.66  thf('25', plain,
% 0.46/0.66      ((~ (v1_relat_1 @ sk_D_2)
% 0.46/0.66        | ~ (v1_funct_1 @ sk_D_2)
% 0.46/0.66        | (r2_hidden @ sk_F @ (k1_relat_1 @ sk_D_2)))),
% 0.46/0.66      inference('sup-', [status(thm)], ['23', '24'])).
% 0.46/0.66  thf('26', plain,
% 0.46/0.66      ((m1_subset_1 @ sk_D_2 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 0.46/0.66      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.46/0.66  thf(cc2_relat_1, axiom,
% 0.46/0.66    (![A:$i]:
% 0.46/0.66     ( ( v1_relat_1 @ A ) =>
% 0.46/0.66       ( ![B:$i]:
% 0.46/0.66         ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) ) => ( v1_relat_1 @ B ) ) ) ))).
% 0.46/0.66  thf('27', plain,
% 0.46/0.66      (![X0 : $i, X1 : $i]:
% 0.46/0.66         (~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ X1))
% 0.46/0.66          | (v1_relat_1 @ X0)
% 0.46/0.66          | ~ (v1_relat_1 @ X1))),
% 0.46/0.66      inference('cnf', [status(esa)], [cc2_relat_1])).
% 0.46/0.66  thf('28', plain,
% 0.46/0.66      ((~ (v1_relat_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)) | (v1_relat_1 @ sk_D_2))),
% 0.46/0.66      inference('sup-', [status(thm)], ['26', '27'])).
% 0.46/0.66  thf(fc6_relat_1, axiom,
% 0.46/0.66    (![A:$i,B:$i]: ( v1_relat_1 @ ( k2_zfmisc_1 @ A @ B ) ))).
% 0.46/0.66  thf('29', plain,
% 0.46/0.66      (![X2 : $i, X3 : $i]: (v1_relat_1 @ (k2_zfmisc_1 @ X2 @ X3))),
% 0.46/0.66      inference('cnf', [status(esa)], [fc6_relat_1])).
% 0.46/0.66  thf('30', plain, ((v1_relat_1 @ sk_D_2)),
% 0.46/0.66      inference('demod', [status(thm)], ['28', '29'])).
% 0.46/0.66  thf('31', plain, ((v1_funct_1 @ sk_D_2)),
% 0.46/0.66      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.46/0.66  thf('32', plain, ((r2_hidden @ sk_F @ (k1_relat_1 @ sk_D_2))),
% 0.46/0.66      inference('demod', [status(thm)], ['25', '30', '31'])).
% 0.46/0.66  thf(d12_funct_1, axiom,
% 0.46/0.66    (![A:$i]:
% 0.46/0.66     ( ( ( v1_funct_1 @ A ) & ( v1_relat_1 @ A ) ) =>
% 0.46/0.66       ( ![B:$i,C:$i]:
% 0.46/0.66         ( ( ( C ) = ( k9_relat_1 @ A @ B ) ) <=>
% 0.46/0.66           ( ![D:$i]:
% 0.46/0.66             ( ( r2_hidden @ D @ C ) <=>
% 0.46/0.66               ( ?[E:$i]:
% 0.46/0.66                 ( ( r2_hidden @ E @ ( k1_relat_1 @ A ) ) & 
% 0.46/0.66                   ( r2_hidden @ E @ B ) & ( ( D ) = ( k1_funct_1 @ A @ E ) ) ) ) ) ) ) ) ))).
% 0.46/0.66  thf(zf_stmt_6, axiom,
% 0.46/0.66    (![E:$i,D:$i,B:$i,A:$i]:
% 0.46/0.66     ( ( zip_tseitin_0 @ E @ D @ B @ A ) <=>
% 0.46/0.66       ( ( ( D ) = ( k1_funct_1 @ A @ E ) ) & ( r2_hidden @ E @ B ) & 
% 0.46/0.66         ( r2_hidden @ E @ ( k1_relat_1 @ A ) ) ) ))).
% 0.46/0.66  thf('33', plain,
% 0.46/0.66      (![X5 : $i, X6 : $i, X7 : $i, X8 : $i]:
% 0.46/0.66         ((zip_tseitin_0 @ X5 @ X6 @ X7 @ X8)
% 0.46/0.66          | ~ (r2_hidden @ X5 @ (k1_relat_1 @ X8))
% 0.46/0.66          | ~ (r2_hidden @ X5 @ X7)
% 0.46/0.66          | ((X6) != (k1_funct_1 @ X8 @ X5)))),
% 0.46/0.66      inference('cnf', [status(esa)], [zf_stmt_6])).
% 0.46/0.66  thf('34', plain,
% 0.46/0.66      (![X5 : $i, X7 : $i, X8 : $i]:
% 0.46/0.66         (~ (r2_hidden @ X5 @ X7)
% 0.46/0.66          | ~ (r2_hidden @ X5 @ (k1_relat_1 @ X8))
% 0.46/0.66          | (zip_tseitin_0 @ X5 @ (k1_funct_1 @ X8 @ X5) @ X7 @ X8))),
% 0.46/0.66      inference('simplify', [status(thm)], ['33'])).
% 0.46/0.66  thf('35', plain,
% 0.46/0.66      (![X0 : $i]:
% 0.46/0.66         ((zip_tseitin_0 @ sk_F @ (k1_funct_1 @ sk_D_2 @ sk_F) @ X0 @ sk_D_2)
% 0.46/0.66          | ~ (r2_hidden @ sk_F @ X0))),
% 0.46/0.66      inference('sup-', [status(thm)], ['32', '34'])).
% 0.46/0.66  thf('36', plain, (((sk_E_3) = (k1_funct_1 @ sk_D_2 @ sk_F))),
% 0.46/0.66      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.46/0.66  thf('37', plain,
% 0.46/0.66      (![X0 : $i]:
% 0.46/0.66         ((zip_tseitin_0 @ sk_F @ sk_E_3 @ X0 @ sk_D_2)
% 0.46/0.66          | ~ (r2_hidden @ sk_F @ X0))),
% 0.46/0.66      inference('demod', [status(thm)], ['35', '36'])).
% 0.46/0.66  thf('38', plain, ((zip_tseitin_0 @ sk_F @ sk_E_3 @ sk_C @ sk_D_2)),
% 0.46/0.66      inference('sup-', [status(thm)], ['5', '37'])).
% 0.46/0.66  thf(zf_stmt_7, type, zip_tseitin_0 : $i > $i > $i > $i > $o).
% 0.46/0.66  thf(zf_stmt_8, axiom,
% 0.46/0.66    (![A:$i]:
% 0.46/0.66     ( ( ( v1_relat_1 @ A ) & ( v1_funct_1 @ A ) ) =>
% 0.46/0.66       ( ![B:$i,C:$i]:
% 0.46/0.66         ( ( ( C ) = ( k9_relat_1 @ A @ B ) ) <=>
% 0.46/0.66           ( ![D:$i]:
% 0.46/0.66             ( ( r2_hidden @ D @ C ) <=>
% 0.46/0.66               ( ?[E:$i]: ( zip_tseitin_0 @ E @ D @ B @ A ) ) ) ) ) ) ))).
% 0.46/0.66  thf('39', plain,
% 0.46/0.66      (![X10 : $i, X11 : $i, X13 : $i, X15 : $i, X16 : $i]:
% 0.46/0.66         (((X13) != (k9_relat_1 @ X11 @ X10))
% 0.46/0.66          | (r2_hidden @ X15 @ X13)
% 0.46/0.66          | ~ (zip_tseitin_0 @ X16 @ X15 @ X10 @ X11)
% 0.46/0.66          | ~ (v1_funct_1 @ X11)
% 0.46/0.66          | ~ (v1_relat_1 @ X11))),
% 0.46/0.66      inference('cnf', [status(esa)], [zf_stmt_8])).
% 0.46/0.66  thf('40', plain,
% 0.46/0.66      (![X10 : $i, X11 : $i, X15 : $i, X16 : $i]:
% 0.46/0.66         (~ (v1_relat_1 @ X11)
% 0.46/0.66          | ~ (v1_funct_1 @ X11)
% 0.46/0.66          | ~ (zip_tseitin_0 @ X16 @ X15 @ X10 @ X11)
% 0.46/0.66          | (r2_hidden @ X15 @ (k9_relat_1 @ X11 @ X10)))),
% 0.46/0.66      inference('simplify', [status(thm)], ['39'])).
% 0.46/0.66  thf('41', plain,
% 0.46/0.66      (((r2_hidden @ sk_E_3 @ (k9_relat_1 @ sk_D_2 @ sk_C))
% 0.46/0.66        | ~ (v1_funct_1 @ sk_D_2)
% 0.46/0.66        | ~ (v1_relat_1 @ sk_D_2))),
% 0.46/0.66      inference('sup-', [status(thm)], ['38', '40'])).
% 0.46/0.66  thf('42', plain, ((v1_funct_1 @ sk_D_2)),
% 0.46/0.66      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.46/0.66  thf('43', plain, ((v1_relat_1 @ sk_D_2)),
% 0.46/0.66      inference('demod', [status(thm)], ['28', '29'])).
% 0.46/0.66  thf('44', plain, ((r2_hidden @ sk_E_3 @ (k9_relat_1 @ sk_D_2 @ sk_C))),
% 0.46/0.66      inference('demod', [status(thm)], ['41', '42', '43'])).
% 0.46/0.66  thf('45', plain, ($false), inference('demod', [status(thm)], ['4', '44'])).
% 0.46/0.66  
% 0.46/0.66  % SZS output end Refutation
% 0.46/0.66  
% 0.46/0.67  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
