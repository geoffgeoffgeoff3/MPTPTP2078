%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.tiUUwXsjyO

% Computer   : n025.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:57:15 EST 2020

% Result     : Theorem 0.20s
% Output     : Refutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :  101 ( 122 expanded)
%              Number of leaves         :   44 (  55 expanded)
%              Depth                    :   15
%              Number of atoms          :  667 (1062 expanded)
%              Number of equality atoms :   48 (  68 expanded)
%              Maximal formula depth    :   13 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(v5_relat_1_type,type,(
    v5_relat_1: $i > $i > $o )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(v1_funct_2_type,type,(
    v1_funct_2: $i > $i > $i > $o )).

thf(sk_D_3_type,type,(
    sk_D_3: $i )).

thf(k2_tarski_type,type,(
    k2_tarski: $i > $i > $i )).

thf(k1_funct_1_type,type,(
    k1_funct_1: $i > $i > $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(k1_relat_1_type,type,(
    k1_relat_1: $i > $i )).

thf(zip_tseitin_1_type,type,(
    zip_tseitin_1: $i > $i > $i > $o )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(k1_relset_1_type,type,(
    k1_relset_1: $i > $i > $i > $i )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(sk_C_1_type,type,(
    sk_C_1: $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(v4_relat_1_type,type,(
    v4_relat_1: $i > $i > $o )).

thf(v1_xboole_0_type,type,(
    v1_xboole_0: $i > $o )).

thf(k1_tarski_type,type,(
    k1_tarski: $i > $i )).

thf(v1_funct_1_type,type,(
    v1_funct_1: $i > $o )).

thf(k2_zfmisc_1_type,type,(
    k2_zfmisc_1: $i > $i > $i )).

thf(k2_relat_1_type,type,(
    k2_relat_1: $i > $i )).

thf(zip_tseitin_0_type,type,(
    zip_tseitin_0: $i > $i > $o )).

thf(t65_funct_2,conjecture,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( ( v1_funct_1 @ D )
        & ( v1_funct_2 @ D @ A @ ( k1_tarski @ B ) )
        & ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ ( k1_tarski @ B ) ) ) ) )
     => ( ( r2_hidden @ C @ A )
       => ( ( k1_funct_1 @ D @ C )
          = B ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i,D: $i] :
        ( ( ( v1_funct_1 @ D )
          & ( v1_funct_2 @ D @ A @ ( k1_tarski @ B ) )
          & ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ ( k1_tarski @ B ) ) ) ) )
       => ( ( r2_hidden @ C @ A )
         => ( ( k1_funct_1 @ D @ C )
            = B ) ) ) ),
    inference('cnf.neg',[status(esa)],[t65_funct_2])).

thf('0',plain,(
    r2_hidden @ sk_C_1 @ sk_A ),
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
    ! [B: $i,A: $i] :
      ( ( ( B = k1_xboole_0 )
       => ( A = k1_xboole_0 ) )
     => ( zip_tseitin_0 @ B @ A ) ) )).

thf('1',plain,(
    ! [X39: $i,X40: $i] :
      ( ( zip_tseitin_0 @ X39 @ X40 )
      | ( X39 = k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_1])).

thf('2',plain,(
    m1_subset_1 @ sk_D_3 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ ( k1_tarski @ sk_B ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

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

thf('3',plain,(
    ! [X44: $i,X45: $i,X46: $i] :
      ( ~ ( zip_tseitin_0 @ X44 @ X45 )
      | ( zip_tseitin_1 @ X46 @ X44 @ X45 )
      | ~ ( m1_subset_1 @ X46 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X45 @ X44 ) ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_5])).

thf('4',plain,
    ( ( zip_tseitin_1 @ sk_D_3 @ ( k1_tarski @ sk_B ) @ sk_A )
    | ~ ( zip_tseitin_0 @ ( k1_tarski @ sk_B ) @ sk_A ) ),
    inference('sup-',[status(thm)],['2','3'])).

thf('5',plain,
    ( ( ( k1_tarski @ sk_B )
      = k1_xboole_0 )
    | ( zip_tseitin_1 @ sk_D_3 @ ( k1_tarski @ sk_B ) @ sk_A ) ),
    inference('sup-',[status(thm)],['1','4'])).

thf('6',plain,(
    v1_funct_2 @ sk_D_3 @ sk_A @ ( k1_tarski @ sk_B ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('7',plain,(
    ! [X41: $i,X42: $i,X43: $i] :
      ( ~ ( v1_funct_2 @ X43 @ X41 @ X42 )
      | ( X41
        = ( k1_relset_1 @ X41 @ X42 @ X43 ) )
      | ~ ( zip_tseitin_1 @ X43 @ X42 @ X41 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_3])).

thf('8',plain,
    ( ~ ( zip_tseitin_1 @ sk_D_3 @ ( k1_tarski @ sk_B ) @ sk_A )
    | ( sk_A
      = ( k1_relset_1 @ sk_A @ ( k1_tarski @ sk_B ) @ sk_D_3 ) ) ),
    inference('sup-',[status(thm)],['6','7'])).

thf('9',plain,(
    m1_subset_1 @ sk_D_3 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ ( k1_tarski @ sk_B ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(redefinition_k1_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( k1_relset_1 @ A @ B @ C )
        = ( k1_relat_1 @ C ) ) ) )).

thf('10',plain,(
    ! [X36: $i,X37: $i,X38: $i] :
      ( ( ( k1_relset_1 @ X37 @ X38 @ X36 )
        = ( k1_relat_1 @ X36 ) )
      | ~ ( m1_subset_1 @ X36 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X37 @ X38 ) ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k1_relset_1])).

thf('11',plain,
    ( ( k1_relset_1 @ sk_A @ ( k1_tarski @ sk_B ) @ sk_D_3 )
    = ( k1_relat_1 @ sk_D_3 ) ),
    inference('sup-',[status(thm)],['9','10'])).

thf('12',plain,
    ( ~ ( zip_tseitin_1 @ sk_D_3 @ ( k1_tarski @ sk_B ) @ sk_A )
    | ( sk_A
      = ( k1_relat_1 @ sk_D_3 ) ) ),
    inference(demod,[status(thm)],['8','11'])).

thf('13',plain,
    ( ( ( k1_tarski @ sk_B )
      = k1_xboole_0 )
    | ( sk_A
      = ( k1_relat_1 @ sk_D_3 ) ) ),
    inference('sup-',[status(thm)],['5','12'])).

thf(t69_enumset1,axiom,(
    ! [A: $i] :
      ( ( k2_tarski @ A @ A )
      = ( k1_tarski @ A ) ) )).

thf('14',plain,(
    ! [X7: $i] :
      ( ( k2_tarski @ X7 @ X7 )
      = ( k1_tarski @ X7 ) ) ),
    inference(cnf,[status(esa)],[t69_enumset1])).

thf(d2_tarski,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( C
        = ( k2_tarski @ A @ B ) )
    <=> ! [D: $i] :
          ( ( r2_hidden @ D @ C )
        <=> ( ( D = A )
            | ( D = B ) ) ) ) )).

thf('15',plain,(
    ! [X1: $i,X2: $i,X3: $i,X4: $i] :
      ( ( X2 != X1 )
      | ( r2_hidden @ X2 @ X3 )
      | ( X3
       != ( k2_tarski @ X4 @ X1 ) ) ) ),
    inference(cnf,[status(esa)],[d2_tarski])).

thf('16',plain,(
    ! [X1: $i,X4: $i] :
      ( r2_hidden @ X1 @ ( k2_tarski @ X4 @ X1 ) ) ),
    inference(simplify,[status(thm)],['15'])).

thf(t7_ordinal1,axiom,(
    ! [A: $i,B: $i] :
      ~ ( ( r2_hidden @ A @ B )
        & ( r1_tarski @ B @ A ) ) )).

thf('17',plain,(
    ! [X28: $i,X29: $i] :
      ( ~ ( r2_hidden @ X28 @ X29 )
      | ~ ( r1_tarski @ X29 @ X28 ) ) ),
    inference(cnf,[status(esa)],[t7_ordinal1])).

thf('18',plain,(
    ! [X0: $i,X1: $i] :
      ~ ( r1_tarski @ ( k2_tarski @ X1 @ X0 ) @ X0 ) ),
    inference('sup-',[status(thm)],['16','17'])).

thf('19',plain,(
    ! [X0: $i] :
      ~ ( r1_tarski @ ( k1_tarski @ X0 ) @ X0 ) ),
    inference('sup-',[status(thm)],['14','18'])).

thf('20',plain,
    ( ~ ( r1_tarski @ k1_xboole_0 @ sk_B )
    | ( sk_A
      = ( k1_relat_1 @ sk_D_3 ) ) ),
    inference('sup-',[status(thm)],['13','19'])).

thf(t2_xboole_1,axiom,(
    ! [A: $i] :
      ( r1_tarski @ k1_xboole_0 @ A ) )).

thf('21',plain,(
    ! [X0: $i] :
      ( r1_tarski @ k1_xboole_0 @ X0 ) ),
    inference(cnf,[status(esa)],[t2_xboole_1])).

thf('22',plain,
    ( sk_A
    = ( k1_relat_1 @ sk_D_3 ) ),
    inference(demod,[status(thm)],['20','21'])).

thf(d5_funct_1,axiom,(
    ! [A: $i] :
      ( ( ( v1_relat_1 @ A )
        & ( v1_funct_1 @ A ) )
     => ! [B: $i] :
          ( ( B
            = ( k2_relat_1 @ A ) )
        <=> ! [C: $i] :
              ( ( r2_hidden @ C @ B )
            <=> ? [D: $i] :
                  ( ( C
                    = ( k1_funct_1 @ A @ D ) )
                  & ( r2_hidden @ D @ ( k1_relat_1 @ A ) ) ) ) ) ) )).

thf('23',plain,(
    ! [X22: $i,X24: $i,X26: $i,X27: $i] :
      ( ( X24
       != ( k2_relat_1 @ X22 ) )
      | ( r2_hidden @ X26 @ X24 )
      | ~ ( r2_hidden @ X27 @ ( k1_relat_1 @ X22 ) )
      | ( X26
       != ( k1_funct_1 @ X22 @ X27 ) )
      | ~ ( v1_funct_1 @ X22 )
      | ~ ( v1_relat_1 @ X22 ) ) ),
    inference(cnf,[status(esa)],[d5_funct_1])).

thf('24',plain,(
    ! [X22: $i,X27: $i] :
      ( ~ ( v1_relat_1 @ X22 )
      | ~ ( v1_funct_1 @ X22 )
      | ~ ( r2_hidden @ X27 @ ( k1_relat_1 @ X22 ) )
      | ( r2_hidden @ ( k1_funct_1 @ X22 @ X27 ) @ ( k2_relat_1 @ X22 ) ) ) ),
    inference(simplify,[status(thm)],['23'])).

thf('25',plain,(
    ! [X0: $i] :
      ( ~ ( r2_hidden @ X0 @ sk_A )
      | ( r2_hidden @ ( k1_funct_1 @ sk_D_3 @ X0 ) @ ( k2_relat_1 @ sk_D_3 ) )
      | ~ ( v1_funct_1 @ sk_D_3 )
      | ~ ( v1_relat_1 @ sk_D_3 ) ) ),
    inference('sup-',[status(thm)],['22','24'])).

thf('26',plain,(
    v1_funct_1 @ sk_D_3 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('27',plain,(
    m1_subset_1 @ sk_D_3 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ ( k1_tarski @ sk_B ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(cc1_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( v1_relat_1 @ C ) ) )).

thf('28',plain,(
    ! [X30: $i,X31: $i,X32: $i] :
      ( ( v1_relat_1 @ X30 )
      | ~ ( m1_subset_1 @ X30 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X31 @ X32 ) ) ) ) ),
    inference(cnf,[status(esa)],[cc1_relset_1])).

thf('29',plain,(
    v1_relat_1 @ sk_D_3 ),
    inference('sup-',[status(thm)],['27','28'])).

thf('30',plain,(
    ! [X0: $i] :
      ( ~ ( r2_hidden @ X0 @ sk_A )
      | ( r2_hidden @ ( k1_funct_1 @ sk_D_3 @ X0 ) @ ( k2_relat_1 @ sk_D_3 ) ) ) ),
    inference(demod,[status(thm)],['25','26','29'])).

thf('31',plain,(
    r2_hidden @ ( k1_funct_1 @ sk_D_3 @ sk_C_1 ) @ ( k2_relat_1 @ sk_D_3 ) ),
    inference('sup-',[status(thm)],['0','30'])).

thf('32',plain,(
    m1_subset_1 @ sk_D_3 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ ( k1_tarski @ sk_B ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(cc2_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( v4_relat_1 @ C @ A )
        & ( v5_relat_1 @ C @ B ) ) ) )).

thf('33',plain,(
    ! [X33: $i,X34: $i,X35: $i] :
      ( ( v5_relat_1 @ X33 @ X35 )
      | ~ ( m1_subset_1 @ X33 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X34 @ X35 ) ) ) ) ),
    inference(cnf,[status(esa)],[cc2_relset_1])).

thf('34',plain,(
    v5_relat_1 @ sk_D_3 @ ( k1_tarski @ sk_B ) ),
    inference('sup-',[status(thm)],['32','33'])).

thf(d19_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( ( v5_relat_1 @ B @ A )
      <=> ( r1_tarski @ ( k2_relat_1 @ B ) @ A ) ) ) )).

thf('35',plain,(
    ! [X19: $i,X20: $i] :
      ( ~ ( v5_relat_1 @ X19 @ X20 )
      | ( r1_tarski @ ( k2_relat_1 @ X19 ) @ X20 )
      | ~ ( v1_relat_1 @ X19 ) ) ),
    inference(cnf,[status(esa)],[d19_relat_1])).

thf('36',plain,
    ( ~ ( v1_relat_1 @ sk_D_3 )
    | ( r1_tarski @ ( k2_relat_1 @ sk_D_3 ) @ ( k1_tarski @ sk_B ) ) ),
    inference('sup-',[status(thm)],['34','35'])).

thf('37',plain,(
    v1_relat_1 @ sk_D_3 ),
    inference('sup-',[status(thm)],['27','28'])).

thf('38',plain,(
    r1_tarski @ ( k2_relat_1 @ sk_D_3 ) @ ( k1_tarski @ sk_B ) ),
    inference(demod,[status(thm)],['36','37'])).

thf(t3_subset,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ A @ ( k1_zfmisc_1 @ B ) )
    <=> ( r1_tarski @ A @ B ) ) )).

thf('39',plain,(
    ! [X13: $i,X15: $i] :
      ( ( m1_subset_1 @ X13 @ ( k1_zfmisc_1 @ X15 ) )
      | ~ ( r1_tarski @ X13 @ X15 ) ) ),
    inference(cnf,[status(esa)],[t3_subset])).

thf('40',plain,(
    m1_subset_1 @ ( k2_relat_1 @ sk_D_3 ) @ ( k1_zfmisc_1 @ ( k1_tarski @ sk_B ) ) ),
    inference('sup-',[status(thm)],['38','39'])).

thf(t4_subset,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( r2_hidden @ A @ B )
        & ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ C ) ) )
     => ( m1_subset_1 @ A @ C ) ) )).

thf('41',plain,(
    ! [X16: $i,X17: $i,X18: $i] :
      ( ~ ( r2_hidden @ X16 @ X17 )
      | ~ ( m1_subset_1 @ X17 @ ( k1_zfmisc_1 @ X18 ) )
      | ( m1_subset_1 @ X16 @ X18 ) ) ),
    inference(cnf,[status(esa)],[t4_subset])).

thf('42',plain,(
    ! [X0: $i] :
      ( ( m1_subset_1 @ X0 @ ( k1_tarski @ sk_B ) )
      | ~ ( r2_hidden @ X0 @ ( k2_relat_1 @ sk_D_3 ) ) ) ),
    inference('sup-',[status(thm)],['40','41'])).

thf('43',plain,(
    m1_subset_1 @ ( k1_funct_1 @ sk_D_3 @ sk_C_1 ) @ ( k1_tarski @ sk_B ) ),
    inference('sup-',[status(thm)],['31','42'])).

thf(t2_subset,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ A @ B )
     => ( ( v1_xboole_0 @ B )
        | ( r2_hidden @ A @ B ) ) ) )).

thf('44',plain,(
    ! [X11: $i,X12: $i] :
      ( ( r2_hidden @ X11 @ X12 )
      | ( v1_xboole_0 @ X12 )
      | ~ ( m1_subset_1 @ X11 @ X12 ) ) ),
    inference(cnf,[status(esa)],[t2_subset])).

thf('45',plain,
    ( ( v1_xboole_0 @ ( k1_tarski @ sk_B ) )
    | ( r2_hidden @ ( k1_funct_1 @ sk_D_3 @ sk_C_1 ) @ ( k1_tarski @ sk_B ) ) ),
    inference('sup-',[status(thm)],['43','44'])).

thf(fc2_xboole_0,axiom,(
    ! [A: $i] :
      ~ ( v1_xboole_0 @ ( k1_tarski @ A ) ) )).

thf('46',plain,(
    ! [X10: $i] :
      ~ ( v1_xboole_0 @ ( k1_tarski @ X10 ) ) ),
    inference(cnf,[status(esa)],[fc2_xboole_0])).

thf('47',plain,(
    r2_hidden @ ( k1_funct_1 @ sk_D_3 @ sk_C_1 ) @ ( k1_tarski @ sk_B ) ),
    inference(clc,[status(thm)],['45','46'])).

thf('48',plain,(
    ! [X7: $i] :
      ( ( k2_tarski @ X7 @ X7 )
      = ( k1_tarski @ X7 ) ) ),
    inference(cnf,[status(esa)],[t69_enumset1])).

thf('49',plain,(
    ! [X1: $i,X3: $i,X4: $i,X5: $i] :
      ( ~ ( r2_hidden @ X5 @ X3 )
      | ( X5 = X4 )
      | ( X5 = X1 )
      | ( X3
       != ( k2_tarski @ X4 @ X1 ) ) ) ),
    inference(cnf,[status(esa)],[d2_tarski])).

thf('50',plain,(
    ! [X1: $i,X4: $i,X5: $i] :
      ( ( X5 = X1 )
      | ( X5 = X4 )
      | ~ ( r2_hidden @ X5 @ ( k2_tarski @ X4 @ X1 ) ) ) ),
    inference(simplify,[status(thm)],['49'])).

thf('51',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( r2_hidden @ X1 @ ( k1_tarski @ X0 ) )
      | ( X1 = X0 )
      | ( X1 = X0 ) ) ),
    inference('sup-',[status(thm)],['48','50'])).

thf('52',plain,(
    ! [X0: $i,X1: $i] :
      ( ( X1 = X0 )
      | ~ ( r2_hidden @ X1 @ ( k1_tarski @ X0 ) ) ) ),
    inference(simplify,[status(thm)],['51'])).

thf('53',plain,
    ( ( k1_funct_1 @ sk_D_3 @ sk_C_1 )
    = sk_B ),
    inference('sup-',[status(thm)],['47','52'])).

thf('54',plain,(
    ( k1_funct_1 @ sk_D_3 @ sk_C_1 )
 != sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('55',plain,(
    $false ),
    inference('simplify_reflect-',[status(thm)],['53','54'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.10/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.10/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.tiUUwXsjyO
% 0.13/0.34  % Computer   : n025.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 18:06:21 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.13/0.35  % Running portfolio for 600 s
% 0.13/0.35  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.13/0.35  % Number of cores: 8
% 0.13/0.35  % Python version: Python 3.6.8
% 0.13/0.35  % Running in FO mode
% 0.20/0.54  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.20/0.54  % Solved by: fo/fo7.sh
% 0.20/0.54  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.20/0.54  % done 138 iterations in 0.080s
% 0.20/0.54  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.20/0.54  % SZS output start Refutation
% 0.20/0.54  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.20/0.54  thf(v5_relat_1_type, type, v5_relat_1: $i > $i > $o).
% 0.20/0.54  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.20/0.54  thf(sk_A_type, type, sk_A: $i).
% 0.20/0.54  thf(v1_funct_2_type, type, v1_funct_2: $i > $i > $i > $o).
% 0.20/0.54  thf(sk_D_3_type, type, sk_D_3: $i).
% 0.20/0.54  thf(k2_tarski_type, type, k2_tarski: $i > $i > $i).
% 0.20/0.54  thf(k1_funct_1_type, type, k1_funct_1: $i > $i > $i).
% 0.20/0.54  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.20/0.54  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.20/0.54  thf(k1_relat_1_type, type, k1_relat_1: $i > $i).
% 0.20/0.54  thf(zip_tseitin_1_type, type, zip_tseitin_1: $i > $i > $i > $o).
% 0.20/0.54  thf(sk_B_type, type, sk_B: $i).
% 0.20/0.54  thf(k1_relset_1_type, type, k1_relset_1: $i > $i > $i > $i).
% 0.20/0.54  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.20/0.54  thf(sk_C_1_type, type, sk_C_1: $i).
% 0.20/0.54  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.20/0.54  thf(v4_relat_1_type, type, v4_relat_1: $i > $i > $o).
% 0.20/0.54  thf(v1_xboole_0_type, type, v1_xboole_0: $i > $o).
% 0.20/0.54  thf(k1_tarski_type, type, k1_tarski: $i > $i).
% 0.20/0.54  thf(v1_funct_1_type, type, v1_funct_1: $i > $o).
% 0.20/0.54  thf(k2_zfmisc_1_type, type, k2_zfmisc_1: $i > $i > $i).
% 0.20/0.54  thf(k2_relat_1_type, type, k2_relat_1: $i > $i).
% 0.20/0.54  thf(zip_tseitin_0_type, type, zip_tseitin_0: $i > $i > $o).
% 0.20/0.54  thf(t65_funct_2, conjecture,
% 0.20/0.54    (![A:$i,B:$i,C:$i,D:$i]:
% 0.20/0.54     ( ( ( v1_funct_1 @ D ) & ( v1_funct_2 @ D @ A @ ( k1_tarski @ B ) ) & 
% 0.20/0.54         ( m1_subset_1 @
% 0.20/0.54           D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ ( k1_tarski @ B ) ) ) ) ) =>
% 0.20/0.54       ( ( r2_hidden @ C @ A ) => ( ( k1_funct_1 @ D @ C ) = ( B ) ) ) ))).
% 0.20/0.54  thf(zf_stmt_0, negated_conjecture,
% 0.20/0.54    (~( ![A:$i,B:$i,C:$i,D:$i]:
% 0.20/0.54        ( ( ( v1_funct_1 @ D ) & ( v1_funct_2 @ D @ A @ ( k1_tarski @ B ) ) & 
% 0.20/0.54            ( m1_subset_1 @
% 0.20/0.54              D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ ( k1_tarski @ B ) ) ) ) ) =>
% 0.20/0.54          ( ( r2_hidden @ C @ A ) => ( ( k1_funct_1 @ D @ C ) = ( B ) ) ) ) )),
% 0.20/0.54    inference('cnf.neg', [status(esa)], [t65_funct_2])).
% 0.20/0.54  thf('0', plain, ((r2_hidden @ sk_C_1 @ sk_A)),
% 0.20/0.54      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.54  thf(d1_funct_2, axiom,
% 0.20/0.54    (![A:$i,B:$i,C:$i]:
% 0.20/0.54     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.20/0.54       ( ( ( ( B ) = ( k1_xboole_0 ) ) =>
% 0.20/0.54           ( ( ( v1_funct_2 @ C @ A @ B ) <=> ( ( C ) = ( k1_xboole_0 ) ) ) | 
% 0.20/0.54             ( ( A ) = ( k1_xboole_0 ) ) ) ) & 
% 0.20/0.54         ( ( ( ( B ) = ( k1_xboole_0 ) ) => ( ( A ) = ( k1_xboole_0 ) ) ) =>
% 0.20/0.54           ( ( v1_funct_2 @ C @ A @ B ) <=>
% 0.20/0.54             ( ( A ) = ( k1_relset_1 @ A @ B @ C ) ) ) ) ) ))).
% 0.20/0.54  thf(zf_stmt_1, axiom,
% 0.20/0.54    (![B:$i,A:$i]:
% 0.20/0.54     ( ( ( ( B ) = ( k1_xboole_0 ) ) => ( ( A ) = ( k1_xboole_0 ) ) ) =>
% 0.20/0.54       ( zip_tseitin_0 @ B @ A ) ))).
% 0.20/0.54  thf('1', plain,
% 0.20/0.54      (![X39 : $i, X40 : $i]:
% 0.20/0.54         ((zip_tseitin_0 @ X39 @ X40) | ((X39) = (k1_xboole_0)))),
% 0.20/0.54      inference('cnf', [status(esa)], [zf_stmt_1])).
% 0.20/0.54  thf('2', plain,
% 0.20/0.54      ((m1_subset_1 @ sk_D_3 @ 
% 0.20/0.54        (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ (k1_tarski @ sk_B))))),
% 0.20/0.54      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.54  thf(zf_stmt_2, type, zip_tseitin_1 : $i > $i > $i > $o).
% 0.20/0.54  thf(zf_stmt_3, axiom,
% 0.20/0.54    (![C:$i,B:$i,A:$i]:
% 0.20/0.54     ( ( zip_tseitin_1 @ C @ B @ A ) =>
% 0.20/0.54       ( ( v1_funct_2 @ C @ A @ B ) <=> ( ( A ) = ( k1_relset_1 @ A @ B @ C ) ) ) ))).
% 0.20/0.54  thf(zf_stmt_4, type, zip_tseitin_0 : $i > $i > $o).
% 0.20/0.54  thf(zf_stmt_5, axiom,
% 0.20/0.54    (![A:$i,B:$i,C:$i]:
% 0.20/0.54     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.20/0.54       ( ( ( zip_tseitin_0 @ B @ A ) => ( zip_tseitin_1 @ C @ B @ A ) ) & 
% 0.20/0.54         ( ( ( B ) = ( k1_xboole_0 ) ) =>
% 0.20/0.54           ( ( ( A ) = ( k1_xboole_0 ) ) | 
% 0.20/0.54             ( ( v1_funct_2 @ C @ A @ B ) <=> ( ( C ) = ( k1_xboole_0 ) ) ) ) ) ) ))).
% 0.20/0.54  thf('3', plain,
% 0.20/0.54      (![X44 : $i, X45 : $i, X46 : $i]:
% 0.20/0.54         (~ (zip_tseitin_0 @ X44 @ X45)
% 0.20/0.54          | (zip_tseitin_1 @ X46 @ X44 @ X45)
% 0.20/0.54          | ~ (m1_subset_1 @ X46 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X45 @ X44))))),
% 0.20/0.54      inference('cnf', [status(esa)], [zf_stmt_5])).
% 0.20/0.54  thf('4', plain,
% 0.20/0.54      (((zip_tseitin_1 @ sk_D_3 @ (k1_tarski @ sk_B) @ sk_A)
% 0.20/0.54        | ~ (zip_tseitin_0 @ (k1_tarski @ sk_B) @ sk_A))),
% 0.20/0.54      inference('sup-', [status(thm)], ['2', '3'])).
% 0.20/0.54  thf('5', plain,
% 0.20/0.54      ((((k1_tarski @ sk_B) = (k1_xboole_0))
% 0.20/0.54        | (zip_tseitin_1 @ sk_D_3 @ (k1_tarski @ sk_B) @ sk_A))),
% 0.20/0.54      inference('sup-', [status(thm)], ['1', '4'])).
% 0.20/0.54  thf('6', plain, ((v1_funct_2 @ sk_D_3 @ sk_A @ (k1_tarski @ sk_B))),
% 0.20/0.54      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.54  thf('7', plain,
% 0.20/0.54      (![X41 : $i, X42 : $i, X43 : $i]:
% 0.20/0.54         (~ (v1_funct_2 @ X43 @ X41 @ X42)
% 0.20/0.54          | ((X41) = (k1_relset_1 @ X41 @ X42 @ X43))
% 0.20/0.54          | ~ (zip_tseitin_1 @ X43 @ X42 @ X41))),
% 0.20/0.54      inference('cnf', [status(esa)], [zf_stmt_3])).
% 0.20/0.54  thf('8', plain,
% 0.20/0.54      ((~ (zip_tseitin_1 @ sk_D_3 @ (k1_tarski @ sk_B) @ sk_A)
% 0.20/0.54        | ((sk_A) = (k1_relset_1 @ sk_A @ (k1_tarski @ sk_B) @ sk_D_3)))),
% 0.20/0.54      inference('sup-', [status(thm)], ['6', '7'])).
% 0.20/0.54  thf('9', plain,
% 0.20/0.54      ((m1_subset_1 @ sk_D_3 @ 
% 0.20/0.54        (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ (k1_tarski @ sk_B))))),
% 0.20/0.54      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.54  thf(redefinition_k1_relset_1, axiom,
% 0.20/0.54    (![A:$i,B:$i,C:$i]:
% 0.20/0.54     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.20/0.54       ( ( k1_relset_1 @ A @ B @ C ) = ( k1_relat_1 @ C ) ) ))).
% 0.20/0.54  thf('10', plain,
% 0.20/0.54      (![X36 : $i, X37 : $i, X38 : $i]:
% 0.20/0.54         (((k1_relset_1 @ X37 @ X38 @ X36) = (k1_relat_1 @ X36))
% 0.20/0.54          | ~ (m1_subset_1 @ X36 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X37 @ X38))))),
% 0.20/0.54      inference('cnf', [status(esa)], [redefinition_k1_relset_1])).
% 0.20/0.54  thf('11', plain,
% 0.20/0.54      (((k1_relset_1 @ sk_A @ (k1_tarski @ sk_B) @ sk_D_3)
% 0.20/0.54         = (k1_relat_1 @ sk_D_3))),
% 0.20/0.54      inference('sup-', [status(thm)], ['9', '10'])).
% 0.20/0.54  thf('12', plain,
% 0.20/0.54      ((~ (zip_tseitin_1 @ sk_D_3 @ (k1_tarski @ sk_B) @ sk_A)
% 0.20/0.54        | ((sk_A) = (k1_relat_1 @ sk_D_3)))),
% 0.20/0.54      inference('demod', [status(thm)], ['8', '11'])).
% 0.20/0.54  thf('13', plain,
% 0.20/0.54      ((((k1_tarski @ sk_B) = (k1_xboole_0)) | ((sk_A) = (k1_relat_1 @ sk_D_3)))),
% 0.20/0.54      inference('sup-', [status(thm)], ['5', '12'])).
% 0.20/0.54  thf(t69_enumset1, axiom,
% 0.20/0.54    (![A:$i]: ( ( k2_tarski @ A @ A ) = ( k1_tarski @ A ) ))).
% 0.20/0.54  thf('14', plain, (![X7 : $i]: ((k2_tarski @ X7 @ X7) = (k1_tarski @ X7))),
% 0.20/0.54      inference('cnf', [status(esa)], [t69_enumset1])).
% 0.20/0.54  thf(d2_tarski, axiom,
% 0.20/0.54    (![A:$i,B:$i,C:$i]:
% 0.20/0.54     ( ( ( C ) = ( k2_tarski @ A @ B ) ) <=>
% 0.20/0.54       ( ![D:$i]:
% 0.20/0.54         ( ( r2_hidden @ D @ C ) <=> ( ( ( D ) = ( A ) ) | ( ( D ) = ( B ) ) ) ) ) ))).
% 0.20/0.54  thf('15', plain,
% 0.20/0.54      (![X1 : $i, X2 : $i, X3 : $i, X4 : $i]:
% 0.20/0.54         (((X2) != (X1))
% 0.20/0.54          | (r2_hidden @ X2 @ X3)
% 0.20/0.54          | ((X3) != (k2_tarski @ X4 @ X1)))),
% 0.20/0.54      inference('cnf', [status(esa)], [d2_tarski])).
% 0.20/0.54  thf('16', plain,
% 0.20/0.54      (![X1 : $i, X4 : $i]: (r2_hidden @ X1 @ (k2_tarski @ X4 @ X1))),
% 0.20/0.54      inference('simplify', [status(thm)], ['15'])).
% 0.20/0.54  thf(t7_ordinal1, axiom,
% 0.20/0.54    (![A:$i,B:$i]: ( ~( ( r2_hidden @ A @ B ) & ( r1_tarski @ B @ A ) ) ))).
% 0.20/0.54  thf('17', plain,
% 0.20/0.54      (![X28 : $i, X29 : $i]:
% 0.20/0.54         (~ (r2_hidden @ X28 @ X29) | ~ (r1_tarski @ X29 @ X28))),
% 0.20/0.54      inference('cnf', [status(esa)], [t7_ordinal1])).
% 0.20/0.54  thf('18', plain,
% 0.20/0.54      (![X0 : $i, X1 : $i]: ~ (r1_tarski @ (k2_tarski @ X1 @ X0) @ X0)),
% 0.20/0.54      inference('sup-', [status(thm)], ['16', '17'])).
% 0.20/0.54  thf('19', plain, (![X0 : $i]: ~ (r1_tarski @ (k1_tarski @ X0) @ X0)),
% 0.20/0.54      inference('sup-', [status(thm)], ['14', '18'])).
% 0.20/0.54  thf('20', plain,
% 0.20/0.54      ((~ (r1_tarski @ k1_xboole_0 @ sk_B) | ((sk_A) = (k1_relat_1 @ sk_D_3)))),
% 0.20/0.54      inference('sup-', [status(thm)], ['13', '19'])).
% 0.20/0.54  thf(t2_xboole_1, axiom, (![A:$i]: ( r1_tarski @ k1_xboole_0 @ A ))).
% 0.20/0.54  thf('21', plain, (![X0 : $i]: (r1_tarski @ k1_xboole_0 @ X0)),
% 0.20/0.54      inference('cnf', [status(esa)], [t2_xboole_1])).
% 0.20/0.54  thf('22', plain, (((sk_A) = (k1_relat_1 @ sk_D_3))),
% 0.20/0.54      inference('demod', [status(thm)], ['20', '21'])).
% 0.20/0.54  thf(d5_funct_1, axiom,
% 0.20/0.54    (![A:$i]:
% 0.20/0.54     ( ( ( v1_relat_1 @ A ) & ( v1_funct_1 @ A ) ) =>
% 0.20/0.54       ( ![B:$i]:
% 0.20/0.54         ( ( ( B ) = ( k2_relat_1 @ A ) ) <=>
% 0.20/0.54           ( ![C:$i]:
% 0.20/0.54             ( ( r2_hidden @ C @ B ) <=>
% 0.20/0.54               ( ?[D:$i]:
% 0.20/0.54                 ( ( ( C ) = ( k1_funct_1 @ A @ D ) ) & 
% 0.20/0.54                   ( r2_hidden @ D @ ( k1_relat_1 @ A ) ) ) ) ) ) ) ) ))).
% 0.20/0.54  thf('23', plain,
% 0.20/0.54      (![X22 : $i, X24 : $i, X26 : $i, X27 : $i]:
% 0.20/0.54         (((X24) != (k2_relat_1 @ X22))
% 0.20/0.54          | (r2_hidden @ X26 @ X24)
% 0.20/0.54          | ~ (r2_hidden @ X27 @ (k1_relat_1 @ X22))
% 0.20/0.54          | ((X26) != (k1_funct_1 @ X22 @ X27))
% 0.20/0.54          | ~ (v1_funct_1 @ X22)
% 0.20/0.54          | ~ (v1_relat_1 @ X22))),
% 0.20/0.54      inference('cnf', [status(esa)], [d5_funct_1])).
% 0.20/0.54  thf('24', plain,
% 0.20/0.54      (![X22 : $i, X27 : $i]:
% 0.20/0.54         (~ (v1_relat_1 @ X22)
% 0.20/0.54          | ~ (v1_funct_1 @ X22)
% 0.20/0.54          | ~ (r2_hidden @ X27 @ (k1_relat_1 @ X22))
% 0.20/0.54          | (r2_hidden @ (k1_funct_1 @ X22 @ X27) @ (k2_relat_1 @ X22)))),
% 0.20/0.54      inference('simplify', [status(thm)], ['23'])).
% 0.20/0.54  thf('25', plain,
% 0.20/0.54      (![X0 : $i]:
% 0.20/0.54         (~ (r2_hidden @ X0 @ sk_A)
% 0.20/0.54          | (r2_hidden @ (k1_funct_1 @ sk_D_3 @ X0) @ (k2_relat_1 @ sk_D_3))
% 0.20/0.54          | ~ (v1_funct_1 @ sk_D_3)
% 0.20/0.54          | ~ (v1_relat_1 @ sk_D_3))),
% 0.20/0.54      inference('sup-', [status(thm)], ['22', '24'])).
% 0.20/0.54  thf('26', plain, ((v1_funct_1 @ sk_D_3)),
% 0.20/0.54      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.54  thf('27', plain,
% 0.20/0.54      ((m1_subset_1 @ sk_D_3 @ 
% 0.20/0.54        (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ (k1_tarski @ sk_B))))),
% 0.20/0.54      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.54  thf(cc1_relset_1, axiom,
% 0.20/0.54    (![A:$i,B:$i,C:$i]:
% 0.20/0.54     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.20/0.54       ( v1_relat_1 @ C ) ))).
% 0.20/0.54  thf('28', plain,
% 0.20/0.54      (![X30 : $i, X31 : $i, X32 : $i]:
% 0.20/0.54         ((v1_relat_1 @ X30)
% 0.20/0.54          | ~ (m1_subset_1 @ X30 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X31 @ X32))))),
% 0.20/0.54      inference('cnf', [status(esa)], [cc1_relset_1])).
% 0.20/0.54  thf('29', plain, ((v1_relat_1 @ sk_D_3)),
% 0.20/0.54      inference('sup-', [status(thm)], ['27', '28'])).
% 0.20/0.54  thf('30', plain,
% 0.20/0.54      (![X0 : $i]:
% 0.20/0.54         (~ (r2_hidden @ X0 @ sk_A)
% 0.20/0.54          | (r2_hidden @ (k1_funct_1 @ sk_D_3 @ X0) @ (k2_relat_1 @ sk_D_3)))),
% 0.20/0.54      inference('demod', [status(thm)], ['25', '26', '29'])).
% 0.20/0.54  thf('31', plain,
% 0.20/0.54      ((r2_hidden @ (k1_funct_1 @ sk_D_3 @ sk_C_1) @ (k2_relat_1 @ sk_D_3))),
% 0.20/0.54      inference('sup-', [status(thm)], ['0', '30'])).
% 0.20/0.54  thf('32', plain,
% 0.20/0.54      ((m1_subset_1 @ sk_D_3 @ 
% 0.20/0.54        (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ (k1_tarski @ sk_B))))),
% 0.20/0.54      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.54  thf(cc2_relset_1, axiom,
% 0.20/0.54    (![A:$i,B:$i,C:$i]:
% 0.20/0.54     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.20/0.54       ( ( v4_relat_1 @ C @ A ) & ( v5_relat_1 @ C @ B ) ) ))).
% 0.20/0.54  thf('33', plain,
% 0.20/0.54      (![X33 : $i, X34 : $i, X35 : $i]:
% 0.20/0.54         ((v5_relat_1 @ X33 @ X35)
% 0.20/0.54          | ~ (m1_subset_1 @ X33 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X34 @ X35))))),
% 0.20/0.54      inference('cnf', [status(esa)], [cc2_relset_1])).
% 0.20/0.54  thf('34', plain, ((v5_relat_1 @ sk_D_3 @ (k1_tarski @ sk_B))),
% 0.20/0.54      inference('sup-', [status(thm)], ['32', '33'])).
% 0.20/0.54  thf(d19_relat_1, axiom,
% 0.20/0.54    (![A:$i,B:$i]:
% 0.20/0.54     ( ( v1_relat_1 @ B ) =>
% 0.20/0.54       ( ( v5_relat_1 @ B @ A ) <=> ( r1_tarski @ ( k2_relat_1 @ B ) @ A ) ) ))).
% 0.20/0.54  thf('35', plain,
% 0.20/0.54      (![X19 : $i, X20 : $i]:
% 0.20/0.54         (~ (v5_relat_1 @ X19 @ X20)
% 0.20/0.54          | (r1_tarski @ (k2_relat_1 @ X19) @ X20)
% 0.20/0.54          | ~ (v1_relat_1 @ X19))),
% 0.20/0.54      inference('cnf', [status(esa)], [d19_relat_1])).
% 0.20/0.54  thf('36', plain,
% 0.20/0.54      ((~ (v1_relat_1 @ sk_D_3)
% 0.20/0.54        | (r1_tarski @ (k2_relat_1 @ sk_D_3) @ (k1_tarski @ sk_B)))),
% 0.20/0.54      inference('sup-', [status(thm)], ['34', '35'])).
% 0.20/0.54  thf('37', plain, ((v1_relat_1 @ sk_D_3)),
% 0.20/0.54      inference('sup-', [status(thm)], ['27', '28'])).
% 0.20/0.54  thf('38', plain, ((r1_tarski @ (k2_relat_1 @ sk_D_3) @ (k1_tarski @ sk_B))),
% 0.20/0.54      inference('demod', [status(thm)], ['36', '37'])).
% 0.20/0.54  thf(t3_subset, axiom,
% 0.20/0.54    (![A:$i,B:$i]:
% 0.20/0.54     ( ( m1_subset_1 @ A @ ( k1_zfmisc_1 @ B ) ) <=> ( r1_tarski @ A @ B ) ))).
% 0.20/0.54  thf('39', plain,
% 0.20/0.54      (![X13 : $i, X15 : $i]:
% 0.20/0.54         ((m1_subset_1 @ X13 @ (k1_zfmisc_1 @ X15)) | ~ (r1_tarski @ X13 @ X15))),
% 0.20/0.54      inference('cnf', [status(esa)], [t3_subset])).
% 0.20/0.54  thf('40', plain,
% 0.20/0.54      ((m1_subset_1 @ (k2_relat_1 @ sk_D_3) @ 
% 0.20/0.54        (k1_zfmisc_1 @ (k1_tarski @ sk_B)))),
% 0.20/0.54      inference('sup-', [status(thm)], ['38', '39'])).
% 0.20/0.54  thf(t4_subset, axiom,
% 0.20/0.54    (![A:$i,B:$i,C:$i]:
% 0.20/0.54     ( ( ( r2_hidden @ A @ B ) & ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ C ) ) ) =>
% 0.20/0.54       ( m1_subset_1 @ A @ C ) ))).
% 0.20/0.54  thf('41', plain,
% 0.20/0.54      (![X16 : $i, X17 : $i, X18 : $i]:
% 0.20/0.54         (~ (r2_hidden @ X16 @ X17)
% 0.20/0.54          | ~ (m1_subset_1 @ X17 @ (k1_zfmisc_1 @ X18))
% 0.20/0.54          | (m1_subset_1 @ X16 @ X18))),
% 0.20/0.54      inference('cnf', [status(esa)], [t4_subset])).
% 0.20/0.54  thf('42', plain,
% 0.20/0.54      (![X0 : $i]:
% 0.20/0.54         ((m1_subset_1 @ X0 @ (k1_tarski @ sk_B))
% 0.20/0.54          | ~ (r2_hidden @ X0 @ (k2_relat_1 @ sk_D_3)))),
% 0.20/0.54      inference('sup-', [status(thm)], ['40', '41'])).
% 0.20/0.54  thf('43', plain,
% 0.20/0.54      ((m1_subset_1 @ (k1_funct_1 @ sk_D_3 @ sk_C_1) @ (k1_tarski @ sk_B))),
% 0.20/0.54      inference('sup-', [status(thm)], ['31', '42'])).
% 0.20/0.54  thf(t2_subset, axiom,
% 0.20/0.54    (![A:$i,B:$i]:
% 0.20/0.54     ( ( m1_subset_1 @ A @ B ) =>
% 0.20/0.54       ( ( v1_xboole_0 @ B ) | ( r2_hidden @ A @ B ) ) ))).
% 0.20/0.54  thf('44', plain,
% 0.20/0.54      (![X11 : $i, X12 : $i]:
% 0.20/0.54         ((r2_hidden @ X11 @ X12)
% 0.20/0.54          | (v1_xboole_0 @ X12)
% 0.20/0.54          | ~ (m1_subset_1 @ X11 @ X12))),
% 0.20/0.54      inference('cnf', [status(esa)], [t2_subset])).
% 0.20/0.54  thf('45', plain,
% 0.20/0.54      (((v1_xboole_0 @ (k1_tarski @ sk_B))
% 0.20/0.54        | (r2_hidden @ (k1_funct_1 @ sk_D_3 @ sk_C_1) @ (k1_tarski @ sk_B)))),
% 0.20/0.54      inference('sup-', [status(thm)], ['43', '44'])).
% 0.20/0.54  thf(fc2_xboole_0, axiom, (![A:$i]: ( ~( v1_xboole_0 @ ( k1_tarski @ A ) ) ))).
% 0.20/0.54  thf('46', plain, (![X10 : $i]: ~ (v1_xboole_0 @ (k1_tarski @ X10))),
% 0.20/0.54      inference('cnf', [status(esa)], [fc2_xboole_0])).
% 0.20/0.54  thf('47', plain,
% 0.20/0.54      ((r2_hidden @ (k1_funct_1 @ sk_D_3 @ sk_C_1) @ (k1_tarski @ sk_B))),
% 0.20/0.54      inference('clc', [status(thm)], ['45', '46'])).
% 0.20/0.54  thf('48', plain, (![X7 : $i]: ((k2_tarski @ X7 @ X7) = (k1_tarski @ X7))),
% 0.20/0.54      inference('cnf', [status(esa)], [t69_enumset1])).
% 0.20/0.54  thf('49', plain,
% 0.20/0.54      (![X1 : $i, X3 : $i, X4 : $i, X5 : $i]:
% 0.20/0.54         (~ (r2_hidden @ X5 @ X3)
% 0.20/0.54          | ((X5) = (X4))
% 0.20/0.54          | ((X5) = (X1))
% 0.20/0.54          | ((X3) != (k2_tarski @ X4 @ X1)))),
% 0.20/0.54      inference('cnf', [status(esa)], [d2_tarski])).
% 0.20/0.54  thf('50', plain,
% 0.20/0.54      (![X1 : $i, X4 : $i, X5 : $i]:
% 0.20/0.54         (((X5) = (X1))
% 0.20/0.54          | ((X5) = (X4))
% 0.20/0.54          | ~ (r2_hidden @ X5 @ (k2_tarski @ X4 @ X1)))),
% 0.20/0.54      inference('simplify', [status(thm)], ['49'])).
% 0.20/0.54  thf('51', plain,
% 0.20/0.54      (![X0 : $i, X1 : $i]:
% 0.20/0.54         (~ (r2_hidden @ X1 @ (k1_tarski @ X0)) | ((X1) = (X0)) | ((X1) = (X0)))),
% 0.20/0.54      inference('sup-', [status(thm)], ['48', '50'])).
% 0.20/0.54  thf('52', plain,
% 0.20/0.54      (![X0 : $i, X1 : $i]:
% 0.20/0.54         (((X1) = (X0)) | ~ (r2_hidden @ X1 @ (k1_tarski @ X0)))),
% 0.20/0.54      inference('simplify', [status(thm)], ['51'])).
% 0.20/0.54  thf('53', plain, (((k1_funct_1 @ sk_D_3 @ sk_C_1) = (sk_B))),
% 0.20/0.54      inference('sup-', [status(thm)], ['47', '52'])).
% 0.20/0.54  thf('54', plain, (((k1_funct_1 @ sk_D_3 @ sk_C_1) != (sk_B))),
% 0.20/0.54      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.54  thf('55', plain, ($false),
% 0.20/0.54      inference('simplify_reflect-', [status(thm)], ['53', '54'])).
% 0.20/0.54  
% 0.20/0.54  % SZS output end Refutation
% 0.20/0.54  
% 0.20/0.55  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
