%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.4AHIJP9LUA

% Computer   : n016.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:57:28 EST 2020

% Result     : Theorem 0.40s
% Output     : Refutation 0.40s
% Verified   : 
% Statistics : Number of formulae       :  107 ( 127 expanded)
%              Number of leaves         :   46 (  58 expanded)
%              Depth                    :   17
%              Number of atoms          :  778 (1172 expanded)
%              Number of equality atoms :   53 (  75 expanded)
%              Maximal formula depth    :   13 (   7 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(v1_funct_2_type,type,(
    v1_funct_2: $i > $i > $i > $o )).

thf(zip_tseitin_1_type,type,(
    zip_tseitin_1: $i > $i > $o )).

thf(v1_funct_1_type,type,(
    v1_funct_1: $i > $o )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(k1_funct_1_type,type,(
    k1_funct_1: $i > $i > $i )).

thf(sk_C_1_type,type,(
    sk_C_1: $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(k1_enumset1_type,type,(
    k1_enumset1: $i > $i > $i > $i )).

thf(k1_tarski_type,type,(
    k1_tarski: $i > $i )).

thf(sk_D_2_type,type,(
    sk_D_2: $i )).

thf(k2_tarski_type,type,(
    k2_tarski: $i > $i > $i )).

thf(zip_tseitin_2_type,type,(
    zip_tseitin_2: $i > $i > $i > $o )).

thf(k2_zfmisc_1_type,type,(
    k2_zfmisc_1: $i > $i > $i )).

thf(zip_tseitin_0_type,type,(
    zip_tseitin_0: $i > $i > $i > $i > $o )).

thf(k2_relset_1_type,type,(
    k2_relset_1: $i > $i > $i > $i )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(k1_relset_1_type,type,(
    k1_relset_1: $i > $i > $i > $i )).

thf(k1_relat_1_type,type,(
    k1_relat_1: $i > $i )).

thf(k2_relat_1_type,type,(
    k2_relat_1: $i > $i )).

thf(d1_enumset1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( D
        = ( k1_enumset1 @ A @ B @ C ) )
    <=> ! [E: $i] :
          ( ( r2_hidden @ E @ D )
        <=> ~ ( ( E != C )
              & ( E != B )
              & ( E != A ) ) ) ) )).

thf(zf_stmt_0,axiom,(
    ! [E: $i,C: $i,B: $i,A: $i] :
      ( ( zip_tseitin_0 @ E @ C @ B @ A )
    <=> ( ( E != A )
        & ( E != B )
        & ( E != C ) ) ) )).

thf('0',plain,(
    ! [X2: $i,X3: $i,X4: $i,X5: $i] :
      ( ( zip_tseitin_0 @ X2 @ X3 @ X4 @ X5 )
      | ( X2 = X3 )
      | ( X2 = X4 )
      | ( X2 = X5 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t65_funct_2,conjecture,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( ( v1_funct_1 @ D )
        & ( v1_funct_2 @ D @ A @ ( k1_tarski @ B ) )
        & ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ ( k1_tarski @ B ) ) ) ) )
     => ( ( r2_hidden @ C @ A )
       => ( ( k1_funct_1 @ D @ C )
          = B ) ) ) )).

thf(zf_stmt_1,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i,D: $i] :
        ( ( ( v1_funct_1 @ D )
          & ( v1_funct_2 @ D @ A @ ( k1_tarski @ B ) )
          & ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ ( k1_tarski @ B ) ) ) ) )
       => ( ( r2_hidden @ C @ A )
         => ( ( k1_funct_1 @ D @ C )
            = B ) ) ) ),
    inference('cnf.neg',[status(esa)],[t65_funct_2])).

thf('1',plain,(
    r2_hidden @ sk_C_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_1])).

thf('2',plain,(
    v1_funct_2 @ sk_D_2 @ sk_A @ ( k1_tarski @ sk_B ) ),
    inference(cnf,[status(esa)],[zf_stmt_1])).

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
      ( ( zip_tseitin_2 @ C @ B @ A )
     => ( ( v1_funct_2 @ C @ A @ B )
      <=> ( A
          = ( k1_relset_1 @ A @ B @ C ) ) ) ) )).

thf('3',plain,(
    ! [X43: $i,X44: $i,X45: $i] :
      ( ~ ( v1_funct_2 @ X45 @ X43 @ X44 )
      | ( X43
        = ( k1_relset_1 @ X43 @ X44 @ X45 ) )
      | ~ ( zip_tseitin_2 @ X45 @ X44 @ X43 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_2])).

thf('4',plain,
    ( ~ ( zip_tseitin_2 @ sk_D_2 @ ( k1_tarski @ sk_B ) @ sk_A )
    | ( sk_A
      = ( k1_relset_1 @ sk_A @ ( k1_tarski @ sk_B ) @ sk_D_2 ) ) ),
    inference('sup-',[status(thm)],['2','3'])).

thf('5',plain,(
    m1_subset_1 @ sk_D_2 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ ( k1_tarski @ sk_B ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_1])).

thf(zf_stmt_3,type,(
    zip_tseitin_2: $i > $i > $i > $o )).

thf(zf_stmt_4,type,(
    zip_tseitin_1: $i > $i > $o )).

thf(zf_stmt_5,axiom,(
    ! [B: $i,A: $i] :
      ( ( ( B = k1_xboole_0 )
       => ( A = k1_xboole_0 ) )
     => ( zip_tseitin_1 @ B @ A ) ) )).

thf(zf_stmt_6,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( ( zip_tseitin_1 @ B @ A )
         => ( zip_tseitin_2 @ C @ B @ A ) )
        & ( ( B = k1_xboole_0 )
         => ( ( A = k1_xboole_0 )
            | ( ( v1_funct_2 @ C @ A @ B )
            <=> ( C = k1_xboole_0 ) ) ) ) ) ) )).

thf('6',plain,(
    ! [X46: $i,X47: $i,X48: $i] :
      ( ~ ( zip_tseitin_1 @ X46 @ X47 )
      | ( zip_tseitin_2 @ X48 @ X46 @ X47 )
      | ~ ( m1_subset_1 @ X48 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X47 @ X46 ) ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_6])).

thf('7',plain,
    ( ( zip_tseitin_2 @ sk_D_2 @ ( k1_tarski @ sk_B ) @ sk_A )
    | ~ ( zip_tseitin_1 @ ( k1_tarski @ sk_B ) @ sk_A ) ),
    inference('sup-',[status(thm)],['5','6'])).

thf('8',plain,(
    ! [X41: $i,X42: $i] :
      ( ( zip_tseitin_1 @ X41 @ X42 )
      | ( X41 = k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_5])).

thf(t2_xboole_1,axiom,(
    ! [A: $i] :
      ( r1_tarski @ k1_xboole_0 @ A ) )).

thf('9',plain,(
    ! [X0: $i] :
      ( r1_tarski @ k1_xboole_0 @ X0 ) ),
    inference(cnf,[status(esa)],[t2_xboole_1])).

thf('10',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( r1_tarski @ X0 @ X1 )
      | ( zip_tseitin_1 @ X0 @ X2 ) ) ),
    inference('sup+',[status(thm)],['8','9'])).

thf(t69_enumset1,axiom,(
    ! [A: $i] :
      ( ( k2_tarski @ A @ A )
      = ( k1_tarski @ A ) ) )).

thf('11',plain,(
    ! [X13: $i] :
      ( ( k2_tarski @ X13 @ X13 )
      = ( k1_tarski @ X13 ) ) ),
    inference(cnf,[status(esa)],[t69_enumset1])).

thf(t70_enumset1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k1_enumset1 @ A @ A @ B )
      = ( k2_tarski @ A @ B ) ) )).

thf('12',plain,(
    ! [X14: $i,X15: $i] :
      ( ( k1_enumset1 @ X14 @ X14 @ X15 )
      = ( k2_tarski @ X14 @ X15 ) ) ),
    inference(cnf,[status(esa)],[t70_enumset1])).

thf(zf_stmt_7,type,(
    zip_tseitin_0: $i > $i > $i > $i > $o )).

thf(zf_stmt_8,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( D
        = ( k1_enumset1 @ A @ B @ C ) )
    <=> ! [E: $i] :
          ( ( r2_hidden @ E @ D )
        <=> ~ ( zip_tseitin_0 @ E @ C @ B @ A ) ) ) )).

thf('13',plain,(
    ! [X6: $i,X7: $i,X8: $i,X9: $i,X10: $i] :
      ( ( zip_tseitin_0 @ X6 @ X7 @ X8 @ X9 )
      | ( r2_hidden @ X6 @ X10 )
      | ( X10
       != ( k1_enumset1 @ X9 @ X8 @ X7 ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_8])).

thf('14',plain,(
    ! [X6: $i,X7: $i,X8: $i,X9: $i] :
      ( ( r2_hidden @ X6 @ ( k1_enumset1 @ X9 @ X8 @ X7 ) )
      | ( zip_tseitin_0 @ X6 @ X7 @ X8 @ X9 ) ) ),
    inference(simplify,[status(thm)],['13'])).

thf(t7_ordinal1,axiom,(
    ! [A: $i,B: $i] :
      ~ ( ( r2_hidden @ A @ B )
        & ( r1_tarski @ B @ A ) ) )).

thf('15',plain,(
    ! [X30: $i,X31: $i] :
      ( ~ ( r2_hidden @ X30 @ X31 )
      | ~ ( r1_tarski @ X31 @ X30 ) ) ),
    inference(cnf,[status(esa)],[t7_ordinal1])).

thf('16',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i] :
      ( ( zip_tseitin_0 @ X3 @ X0 @ X1 @ X2 )
      | ~ ( r1_tarski @ ( k1_enumset1 @ X2 @ X1 @ X0 ) @ X3 ) ) ),
    inference('sup-',[status(thm)],['14','15'])).

thf('17',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( r1_tarski @ ( k2_tarski @ X1 @ X0 ) @ X2 )
      | ( zip_tseitin_0 @ X2 @ X0 @ X1 @ X1 ) ) ),
    inference('sup-',[status(thm)],['12','16'])).

thf('18',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( r1_tarski @ ( k1_tarski @ X0 ) @ X1 )
      | ( zip_tseitin_0 @ X1 @ X0 @ X0 @ X0 ) ) ),
    inference('sup-',[status(thm)],['11','17'])).

thf('19',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( zip_tseitin_1 @ ( k1_tarski @ X1 ) @ X2 )
      | ( zip_tseitin_0 @ X0 @ X1 @ X1 @ X1 ) ) ),
    inference('sup-',[status(thm)],['10','18'])).

thf('20',plain,(
    ! [X1: $i,X2: $i,X3: $i,X4: $i] :
      ( ( X2 != X1 )
      | ~ ( zip_tseitin_0 @ X2 @ X3 @ X4 @ X1 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('21',plain,(
    ! [X1: $i,X3: $i,X4: $i] :
      ~ ( zip_tseitin_0 @ X1 @ X3 @ X4 @ X1 ) ),
    inference(simplify,[status(thm)],['20'])).

thf('22',plain,(
    ! [X0: $i,X1: $i] :
      ( zip_tseitin_1 @ ( k1_tarski @ X0 ) @ X1 ) ),
    inference('sup-',[status(thm)],['19','21'])).

thf('23',plain,(
    zip_tseitin_2 @ sk_D_2 @ ( k1_tarski @ sk_B ) @ sk_A ),
    inference(demod,[status(thm)],['7','22'])).

thf('24',plain,(
    m1_subset_1 @ sk_D_2 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ ( k1_tarski @ sk_B ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_1])).

thf(redefinition_k1_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( k1_relset_1 @ A @ B @ C )
        = ( k1_relat_1 @ C ) ) ) )).

thf('25',plain,(
    ! [X35: $i,X36: $i,X37: $i] :
      ( ( ( k1_relset_1 @ X36 @ X37 @ X35 )
        = ( k1_relat_1 @ X35 ) )
      | ~ ( m1_subset_1 @ X35 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X36 @ X37 ) ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k1_relset_1])).

thf('26',plain,
    ( ( k1_relset_1 @ sk_A @ ( k1_tarski @ sk_B ) @ sk_D_2 )
    = ( k1_relat_1 @ sk_D_2 ) ),
    inference('sup-',[status(thm)],['24','25'])).

thf('27',plain,
    ( sk_A
    = ( k1_relat_1 @ sk_D_2 ) ),
    inference(demod,[status(thm)],['4','23','26'])).

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

thf('28',plain,(
    ! [X24: $i,X26: $i,X28: $i,X29: $i] :
      ( ( X26
       != ( k2_relat_1 @ X24 ) )
      | ( r2_hidden @ X28 @ X26 )
      | ~ ( r2_hidden @ X29 @ ( k1_relat_1 @ X24 ) )
      | ( X28
       != ( k1_funct_1 @ X24 @ X29 ) )
      | ~ ( v1_funct_1 @ X24 )
      | ~ ( v1_relat_1 @ X24 ) ) ),
    inference(cnf,[status(esa)],[d5_funct_1])).

thf('29',plain,(
    ! [X24: $i,X29: $i] :
      ( ~ ( v1_relat_1 @ X24 )
      | ~ ( v1_funct_1 @ X24 )
      | ~ ( r2_hidden @ X29 @ ( k1_relat_1 @ X24 ) )
      | ( r2_hidden @ ( k1_funct_1 @ X24 @ X29 ) @ ( k2_relat_1 @ X24 ) ) ) ),
    inference(simplify,[status(thm)],['28'])).

thf('30',plain,(
    ! [X0: $i] :
      ( ~ ( r2_hidden @ X0 @ sk_A )
      | ( r2_hidden @ ( k1_funct_1 @ sk_D_2 @ X0 ) @ ( k2_relat_1 @ sk_D_2 ) )
      | ~ ( v1_funct_1 @ sk_D_2 )
      | ~ ( v1_relat_1 @ sk_D_2 ) ) ),
    inference('sup-',[status(thm)],['27','29'])).

thf('31',plain,(
    v1_funct_1 @ sk_D_2 ),
    inference(cnf,[status(esa)],[zf_stmt_1])).

thf('32',plain,(
    m1_subset_1 @ sk_D_2 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ ( k1_tarski @ sk_B ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_1])).

thf(cc2_relat_1,axiom,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ! [B: $i] :
          ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) )
         => ( v1_relat_1 @ B ) ) ) )).

thf('33',plain,(
    ! [X19: $i,X20: $i] :
      ( ~ ( m1_subset_1 @ X19 @ ( k1_zfmisc_1 @ X20 ) )
      | ( v1_relat_1 @ X19 )
      | ~ ( v1_relat_1 @ X20 ) ) ),
    inference(cnf,[status(esa)],[cc2_relat_1])).

thf('34',plain,
    ( ~ ( v1_relat_1 @ ( k2_zfmisc_1 @ sk_A @ ( k1_tarski @ sk_B ) ) )
    | ( v1_relat_1 @ sk_D_2 ) ),
    inference('sup-',[status(thm)],['32','33'])).

thf(fc6_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( v1_relat_1 @ ( k2_zfmisc_1 @ A @ B ) ) )).

thf('35',plain,(
    ! [X21: $i,X22: $i] :
      ( v1_relat_1 @ ( k2_zfmisc_1 @ X21 @ X22 ) ) ),
    inference(cnf,[status(esa)],[fc6_relat_1])).

thf('36',plain,(
    v1_relat_1 @ sk_D_2 ),
    inference(demod,[status(thm)],['34','35'])).

thf('37',plain,(
    ! [X0: $i] :
      ( ~ ( r2_hidden @ X0 @ sk_A )
      | ( r2_hidden @ ( k1_funct_1 @ sk_D_2 @ X0 ) @ ( k2_relat_1 @ sk_D_2 ) ) ) ),
    inference(demod,[status(thm)],['30','31','36'])).

thf('38',plain,(
    r2_hidden @ ( k1_funct_1 @ sk_D_2 @ sk_C_1 ) @ ( k2_relat_1 @ sk_D_2 ) ),
    inference('sup-',[status(thm)],['1','37'])).

thf('39',plain,(
    m1_subset_1 @ sk_D_2 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ ( k1_tarski @ sk_B ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_1])).

thf(dt_k2_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( m1_subset_1 @ ( k2_relset_1 @ A @ B @ C ) @ ( k1_zfmisc_1 @ B ) ) ) )).

thf('40',plain,(
    ! [X32: $i,X33: $i,X34: $i] :
      ( ( m1_subset_1 @ ( k2_relset_1 @ X32 @ X33 @ X34 ) @ ( k1_zfmisc_1 @ X33 ) )
      | ~ ( m1_subset_1 @ X34 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X32 @ X33 ) ) ) ) ),
    inference(cnf,[status(esa)],[dt_k2_relset_1])).

thf('41',plain,(
    m1_subset_1 @ ( k2_relset_1 @ sk_A @ ( k1_tarski @ sk_B ) @ sk_D_2 ) @ ( k1_zfmisc_1 @ ( k1_tarski @ sk_B ) ) ),
    inference('sup-',[status(thm)],['39','40'])).

thf('42',plain,(
    m1_subset_1 @ sk_D_2 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ ( k1_tarski @ sk_B ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_1])).

thf(redefinition_k2_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( k2_relset_1 @ A @ B @ C )
        = ( k2_relat_1 @ C ) ) ) )).

thf('43',plain,(
    ! [X38: $i,X39: $i,X40: $i] :
      ( ( ( k2_relset_1 @ X39 @ X40 @ X38 )
        = ( k2_relat_1 @ X38 ) )
      | ~ ( m1_subset_1 @ X38 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X39 @ X40 ) ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k2_relset_1])).

thf('44',plain,
    ( ( k2_relset_1 @ sk_A @ ( k1_tarski @ sk_B ) @ sk_D_2 )
    = ( k2_relat_1 @ sk_D_2 ) ),
    inference('sup-',[status(thm)],['42','43'])).

thf('45',plain,(
    m1_subset_1 @ ( k2_relat_1 @ sk_D_2 ) @ ( k1_zfmisc_1 @ ( k1_tarski @ sk_B ) ) ),
    inference(demod,[status(thm)],['41','44'])).

thf(l3_subset_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) )
     => ! [C: $i] :
          ( ( r2_hidden @ C @ B )
         => ( r2_hidden @ C @ A ) ) ) )).

thf('46',plain,(
    ! [X16: $i,X17: $i,X18: $i] :
      ( ~ ( r2_hidden @ X16 @ X17 )
      | ( r2_hidden @ X16 @ X18 )
      | ~ ( m1_subset_1 @ X17 @ ( k1_zfmisc_1 @ X18 ) ) ) ),
    inference(cnf,[status(esa)],[l3_subset_1])).

thf('47',plain,(
    ! [X0: $i] :
      ( ( r2_hidden @ X0 @ ( k1_tarski @ sk_B ) )
      | ~ ( r2_hidden @ X0 @ ( k2_relat_1 @ sk_D_2 ) ) ) ),
    inference('sup-',[status(thm)],['45','46'])).

thf('48',plain,(
    r2_hidden @ ( k1_funct_1 @ sk_D_2 @ sk_C_1 ) @ ( k1_tarski @ sk_B ) ),
    inference('sup-',[status(thm)],['38','47'])).

thf('49',plain,(
    ! [X13: $i] :
      ( ( k2_tarski @ X13 @ X13 )
      = ( k1_tarski @ X13 ) ) ),
    inference(cnf,[status(esa)],[t69_enumset1])).

thf('50',plain,(
    ! [X14: $i,X15: $i] :
      ( ( k1_enumset1 @ X14 @ X14 @ X15 )
      = ( k2_tarski @ X14 @ X15 ) ) ),
    inference(cnf,[status(esa)],[t70_enumset1])).

thf('51',plain,(
    ! [X7: $i,X8: $i,X9: $i,X10: $i,X11: $i] :
      ( ~ ( r2_hidden @ X11 @ X10 )
      | ~ ( zip_tseitin_0 @ X11 @ X7 @ X8 @ X9 )
      | ( X10
       != ( k1_enumset1 @ X9 @ X8 @ X7 ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_8])).

thf('52',plain,(
    ! [X7: $i,X8: $i,X9: $i,X11: $i] :
      ( ~ ( zip_tseitin_0 @ X11 @ X7 @ X8 @ X9 )
      | ~ ( r2_hidden @ X11 @ ( k1_enumset1 @ X9 @ X8 @ X7 ) ) ) ),
    inference(simplify,[status(thm)],['51'])).

thf('53',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( r2_hidden @ X2 @ ( k2_tarski @ X1 @ X0 ) )
      | ~ ( zip_tseitin_0 @ X2 @ X0 @ X1 @ X1 ) ) ),
    inference('sup-',[status(thm)],['50','52'])).

thf('54',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( r2_hidden @ X1 @ ( k1_tarski @ X0 ) )
      | ~ ( zip_tseitin_0 @ X1 @ X0 @ X0 @ X0 ) ) ),
    inference('sup-',[status(thm)],['49','53'])).

thf('55',plain,(
    ~ ( zip_tseitin_0 @ ( k1_funct_1 @ sk_D_2 @ sk_C_1 ) @ sk_B @ sk_B @ sk_B ) ),
    inference('sup-',[status(thm)],['48','54'])).

thf('56',plain,
    ( ( ( k1_funct_1 @ sk_D_2 @ sk_C_1 )
      = sk_B )
    | ( ( k1_funct_1 @ sk_D_2 @ sk_C_1 )
      = sk_B )
    | ( ( k1_funct_1 @ sk_D_2 @ sk_C_1 )
      = sk_B ) ),
    inference('sup-',[status(thm)],['0','55'])).

thf('57',plain,
    ( ( k1_funct_1 @ sk_D_2 @ sk_C_1 )
    = sk_B ),
    inference(simplify,[status(thm)],['56'])).

thf('58',plain,(
    ( k1_funct_1 @ sk_D_2 @ sk_C_1 )
 != sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_1])).

thf('59',plain,(
    $false ),
    inference('simplify_reflect-',[status(thm)],['57','58'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.13/0.15  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.13/0.16  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.4AHIJP9LUA
% 0.18/0.37  % Computer   : n016.cluster.edu
% 0.18/0.37  % Model      : x86_64 x86_64
% 0.18/0.37  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.18/0.37  % Memory     : 8042.1875MB
% 0.18/0.37  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.18/0.37  % CPULimit   : 60
% 0.18/0.37  % DateTime   : Tue Dec  1 11:03:05 EST 2020
% 0.18/0.37  % CPUTime    : 
% 0.18/0.37  % Running portfolio for 600 s
% 0.18/0.37  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.18/0.37  % Number of cores: 8
% 0.18/0.38  % Python version: Python 3.6.8
% 0.18/0.38  % Running in FO mode
% 0.40/0.59  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.40/0.59  % Solved by: fo/fo7.sh
% 0.40/0.59  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.40/0.59  % done 95 iterations in 0.097s
% 0.40/0.59  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.40/0.59  % SZS output start Refutation
% 0.40/0.59  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.40/0.59  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.40/0.59  thf(v1_funct_2_type, type, v1_funct_2: $i > $i > $i > $o).
% 0.40/0.59  thf(zip_tseitin_1_type, type, zip_tseitin_1: $i > $i > $o).
% 0.40/0.59  thf(v1_funct_1_type, type, v1_funct_1: $i > $o).
% 0.40/0.59  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.40/0.59  thf(k1_funct_1_type, type, k1_funct_1: $i > $i > $i).
% 0.40/0.59  thf(sk_C_1_type, type, sk_C_1: $i).
% 0.40/0.59  thf(sk_B_type, type, sk_B: $i).
% 0.40/0.59  thf(k1_enumset1_type, type, k1_enumset1: $i > $i > $i > $i).
% 0.40/0.59  thf(k1_tarski_type, type, k1_tarski: $i > $i).
% 0.40/0.59  thf(sk_D_2_type, type, sk_D_2: $i).
% 0.40/0.59  thf(k2_tarski_type, type, k2_tarski: $i > $i > $i).
% 0.40/0.59  thf(zip_tseitin_2_type, type, zip_tseitin_2: $i > $i > $i > $o).
% 0.40/0.59  thf(k2_zfmisc_1_type, type, k2_zfmisc_1: $i > $i > $i).
% 0.40/0.59  thf(zip_tseitin_0_type, type, zip_tseitin_0: $i > $i > $i > $i > $o).
% 0.40/0.59  thf(k2_relset_1_type, type, k2_relset_1: $i > $i > $i > $i).
% 0.40/0.59  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.40/0.59  thf(sk_A_type, type, sk_A: $i).
% 0.40/0.59  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.40/0.59  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.40/0.59  thf(k1_relset_1_type, type, k1_relset_1: $i > $i > $i > $i).
% 0.40/0.59  thf(k1_relat_1_type, type, k1_relat_1: $i > $i).
% 0.40/0.59  thf(k2_relat_1_type, type, k2_relat_1: $i > $i).
% 0.40/0.59  thf(d1_enumset1, axiom,
% 0.40/0.59    (![A:$i,B:$i,C:$i,D:$i]:
% 0.40/0.59     ( ( ( D ) = ( k1_enumset1 @ A @ B @ C ) ) <=>
% 0.40/0.59       ( ![E:$i]:
% 0.40/0.59         ( ( r2_hidden @ E @ D ) <=>
% 0.40/0.59           ( ~( ( ( E ) != ( C ) ) & ( ( E ) != ( B ) ) & ( ( E ) != ( A ) ) ) ) ) ) ))).
% 0.40/0.59  thf(zf_stmt_0, axiom,
% 0.40/0.59    (![E:$i,C:$i,B:$i,A:$i]:
% 0.40/0.59     ( ( zip_tseitin_0 @ E @ C @ B @ A ) <=>
% 0.40/0.59       ( ( ( E ) != ( A ) ) & ( ( E ) != ( B ) ) & ( ( E ) != ( C ) ) ) ))).
% 0.40/0.59  thf('0', plain,
% 0.40/0.59      (![X2 : $i, X3 : $i, X4 : $i, X5 : $i]:
% 0.40/0.59         ((zip_tseitin_0 @ X2 @ X3 @ X4 @ X5)
% 0.40/0.59          | ((X2) = (X3))
% 0.40/0.59          | ((X2) = (X4))
% 0.40/0.59          | ((X2) = (X5)))),
% 0.40/0.59      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.40/0.59  thf(t65_funct_2, conjecture,
% 0.40/0.59    (![A:$i,B:$i,C:$i,D:$i]:
% 0.40/0.59     ( ( ( v1_funct_1 @ D ) & ( v1_funct_2 @ D @ A @ ( k1_tarski @ B ) ) & 
% 0.40/0.59         ( m1_subset_1 @
% 0.40/0.59           D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ ( k1_tarski @ B ) ) ) ) ) =>
% 0.40/0.59       ( ( r2_hidden @ C @ A ) => ( ( k1_funct_1 @ D @ C ) = ( B ) ) ) ))).
% 0.40/0.59  thf(zf_stmt_1, negated_conjecture,
% 0.40/0.59    (~( ![A:$i,B:$i,C:$i,D:$i]:
% 0.40/0.59        ( ( ( v1_funct_1 @ D ) & ( v1_funct_2 @ D @ A @ ( k1_tarski @ B ) ) & 
% 0.40/0.59            ( m1_subset_1 @
% 0.40/0.59              D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ ( k1_tarski @ B ) ) ) ) ) =>
% 0.40/0.59          ( ( r2_hidden @ C @ A ) => ( ( k1_funct_1 @ D @ C ) = ( B ) ) ) ) )),
% 0.40/0.59    inference('cnf.neg', [status(esa)], [t65_funct_2])).
% 0.40/0.59  thf('1', plain, ((r2_hidden @ sk_C_1 @ sk_A)),
% 0.40/0.59      inference('cnf', [status(esa)], [zf_stmt_1])).
% 0.40/0.59  thf('2', plain, ((v1_funct_2 @ sk_D_2 @ sk_A @ (k1_tarski @ sk_B))),
% 0.40/0.59      inference('cnf', [status(esa)], [zf_stmt_1])).
% 0.40/0.59  thf(d1_funct_2, axiom,
% 0.40/0.59    (![A:$i,B:$i,C:$i]:
% 0.40/0.59     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.40/0.59       ( ( ( ( B ) = ( k1_xboole_0 ) ) =>
% 0.40/0.59           ( ( ( v1_funct_2 @ C @ A @ B ) <=> ( ( C ) = ( k1_xboole_0 ) ) ) | 
% 0.40/0.59             ( ( A ) = ( k1_xboole_0 ) ) ) ) & 
% 0.40/0.59         ( ( ( ( B ) = ( k1_xboole_0 ) ) => ( ( A ) = ( k1_xboole_0 ) ) ) =>
% 0.40/0.59           ( ( v1_funct_2 @ C @ A @ B ) <=>
% 0.40/0.59             ( ( A ) = ( k1_relset_1 @ A @ B @ C ) ) ) ) ) ))).
% 0.40/0.59  thf(zf_stmt_2, axiom,
% 0.40/0.59    (![C:$i,B:$i,A:$i]:
% 0.40/0.59     ( ( zip_tseitin_2 @ C @ B @ A ) =>
% 0.40/0.59       ( ( v1_funct_2 @ C @ A @ B ) <=> ( ( A ) = ( k1_relset_1 @ A @ B @ C ) ) ) ))).
% 0.40/0.59  thf('3', plain,
% 0.40/0.59      (![X43 : $i, X44 : $i, X45 : $i]:
% 0.40/0.59         (~ (v1_funct_2 @ X45 @ X43 @ X44)
% 0.40/0.59          | ((X43) = (k1_relset_1 @ X43 @ X44 @ X45))
% 0.40/0.59          | ~ (zip_tseitin_2 @ X45 @ X44 @ X43))),
% 0.40/0.59      inference('cnf', [status(esa)], [zf_stmt_2])).
% 0.40/0.59  thf('4', plain,
% 0.40/0.59      ((~ (zip_tseitin_2 @ sk_D_2 @ (k1_tarski @ sk_B) @ sk_A)
% 0.40/0.59        | ((sk_A) = (k1_relset_1 @ sk_A @ (k1_tarski @ sk_B) @ sk_D_2)))),
% 0.40/0.59      inference('sup-', [status(thm)], ['2', '3'])).
% 0.40/0.59  thf('5', plain,
% 0.40/0.59      ((m1_subset_1 @ sk_D_2 @ 
% 0.40/0.59        (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ (k1_tarski @ sk_B))))),
% 0.40/0.59      inference('cnf', [status(esa)], [zf_stmt_1])).
% 0.40/0.59  thf(zf_stmt_3, type, zip_tseitin_2 : $i > $i > $i > $o).
% 0.40/0.59  thf(zf_stmt_4, type, zip_tseitin_1 : $i > $i > $o).
% 0.40/0.59  thf(zf_stmt_5, axiom,
% 0.40/0.59    (![B:$i,A:$i]:
% 0.40/0.59     ( ( ( ( B ) = ( k1_xboole_0 ) ) => ( ( A ) = ( k1_xboole_0 ) ) ) =>
% 0.40/0.59       ( zip_tseitin_1 @ B @ A ) ))).
% 0.40/0.59  thf(zf_stmt_6, axiom,
% 0.40/0.59    (![A:$i,B:$i,C:$i]:
% 0.40/0.59     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.40/0.59       ( ( ( zip_tseitin_1 @ B @ A ) => ( zip_tseitin_2 @ C @ B @ A ) ) & 
% 0.40/0.59         ( ( ( B ) = ( k1_xboole_0 ) ) =>
% 0.40/0.59           ( ( ( A ) = ( k1_xboole_0 ) ) | 
% 0.40/0.59             ( ( v1_funct_2 @ C @ A @ B ) <=> ( ( C ) = ( k1_xboole_0 ) ) ) ) ) ) ))).
% 0.40/0.59  thf('6', plain,
% 0.40/0.59      (![X46 : $i, X47 : $i, X48 : $i]:
% 0.40/0.59         (~ (zip_tseitin_1 @ X46 @ X47)
% 0.40/0.59          | (zip_tseitin_2 @ X48 @ X46 @ X47)
% 0.40/0.59          | ~ (m1_subset_1 @ X48 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X47 @ X46))))),
% 0.40/0.59      inference('cnf', [status(esa)], [zf_stmt_6])).
% 0.40/0.59  thf('7', plain,
% 0.40/0.59      (((zip_tseitin_2 @ sk_D_2 @ (k1_tarski @ sk_B) @ sk_A)
% 0.40/0.59        | ~ (zip_tseitin_1 @ (k1_tarski @ sk_B) @ sk_A))),
% 0.40/0.59      inference('sup-', [status(thm)], ['5', '6'])).
% 0.40/0.59  thf('8', plain,
% 0.40/0.59      (![X41 : $i, X42 : $i]:
% 0.40/0.59         ((zip_tseitin_1 @ X41 @ X42) | ((X41) = (k1_xboole_0)))),
% 0.40/0.59      inference('cnf', [status(esa)], [zf_stmt_5])).
% 0.40/0.59  thf(t2_xboole_1, axiom, (![A:$i]: ( r1_tarski @ k1_xboole_0 @ A ))).
% 0.40/0.59  thf('9', plain, (![X0 : $i]: (r1_tarski @ k1_xboole_0 @ X0)),
% 0.40/0.59      inference('cnf', [status(esa)], [t2_xboole_1])).
% 0.40/0.59  thf('10', plain,
% 0.40/0.59      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.40/0.59         ((r1_tarski @ X0 @ X1) | (zip_tseitin_1 @ X0 @ X2))),
% 0.40/0.59      inference('sup+', [status(thm)], ['8', '9'])).
% 0.40/0.59  thf(t69_enumset1, axiom,
% 0.40/0.59    (![A:$i]: ( ( k2_tarski @ A @ A ) = ( k1_tarski @ A ) ))).
% 0.40/0.59  thf('11', plain,
% 0.40/0.59      (![X13 : $i]: ((k2_tarski @ X13 @ X13) = (k1_tarski @ X13))),
% 0.40/0.59      inference('cnf', [status(esa)], [t69_enumset1])).
% 0.40/0.59  thf(t70_enumset1, axiom,
% 0.40/0.59    (![A:$i,B:$i]: ( ( k1_enumset1 @ A @ A @ B ) = ( k2_tarski @ A @ B ) ))).
% 0.40/0.59  thf('12', plain,
% 0.40/0.59      (![X14 : $i, X15 : $i]:
% 0.40/0.59         ((k1_enumset1 @ X14 @ X14 @ X15) = (k2_tarski @ X14 @ X15))),
% 0.40/0.59      inference('cnf', [status(esa)], [t70_enumset1])).
% 0.40/0.59  thf(zf_stmt_7, type, zip_tseitin_0 : $i > $i > $i > $i > $o).
% 0.40/0.59  thf(zf_stmt_8, axiom,
% 0.40/0.59    (![A:$i,B:$i,C:$i,D:$i]:
% 0.40/0.59     ( ( ( D ) = ( k1_enumset1 @ A @ B @ C ) ) <=>
% 0.40/0.59       ( ![E:$i]:
% 0.40/0.59         ( ( r2_hidden @ E @ D ) <=> ( ~( zip_tseitin_0 @ E @ C @ B @ A ) ) ) ) ))).
% 0.40/0.59  thf('13', plain,
% 0.40/0.59      (![X6 : $i, X7 : $i, X8 : $i, X9 : $i, X10 : $i]:
% 0.40/0.59         ((zip_tseitin_0 @ X6 @ X7 @ X8 @ X9)
% 0.40/0.59          | (r2_hidden @ X6 @ X10)
% 0.40/0.59          | ((X10) != (k1_enumset1 @ X9 @ X8 @ X7)))),
% 0.40/0.59      inference('cnf', [status(esa)], [zf_stmt_8])).
% 0.40/0.59  thf('14', plain,
% 0.40/0.59      (![X6 : $i, X7 : $i, X8 : $i, X9 : $i]:
% 0.40/0.59         ((r2_hidden @ X6 @ (k1_enumset1 @ X9 @ X8 @ X7))
% 0.40/0.59          | (zip_tseitin_0 @ X6 @ X7 @ X8 @ X9))),
% 0.40/0.59      inference('simplify', [status(thm)], ['13'])).
% 0.40/0.59  thf(t7_ordinal1, axiom,
% 0.40/0.59    (![A:$i,B:$i]: ( ~( ( r2_hidden @ A @ B ) & ( r1_tarski @ B @ A ) ) ))).
% 0.40/0.59  thf('15', plain,
% 0.40/0.59      (![X30 : $i, X31 : $i]:
% 0.40/0.59         (~ (r2_hidden @ X30 @ X31) | ~ (r1_tarski @ X31 @ X30))),
% 0.40/0.59      inference('cnf', [status(esa)], [t7_ordinal1])).
% 0.40/0.59  thf('16', plain,
% 0.40/0.59      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 0.40/0.59         ((zip_tseitin_0 @ X3 @ X0 @ X1 @ X2)
% 0.40/0.59          | ~ (r1_tarski @ (k1_enumset1 @ X2 @ X1 @ X0) @ X3))),
% 0.40/0.59      inference('sup-', [status(thm)], ['14', '15'])).
% 0.40/0.59  thf('17', plain,
% 0.40/0.59      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.40/0.59         (~ (r1_tarski @ (k2_tarski @ X1 @ X0) @ X2)
% 0.40/0.59          | (zip_tseitin_0 @ X2 @ X0 @ X1 @ X1))),
% 0.40/0.59      inference('sup-', [status(thm)], ['12', '16'])).
% 0.40/0.59  thf('18', plain,
% 0.40/0.59      (![X0 : $i, X1 : $i]:
% 0.40/0.59         (~ (r1_tarski @ (k1_tarski @ X0) @ X1)
% 0.40/0.59          | (zip_tseitin_0 @ X1 @ X0 @ X0 @ X0))),
% 0.40/0.59      inference('sup-', [status(thm)], ['11', '17'])).
% 0.40/0.59  thf('19', plain,
% 0.40/0.59      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.40/0.59         ((zip_tseitin_1 @ (k1_tarski @ X1) @ X2)
% 0.40/0.59          | (zip_tseitin_0 @ X0 @ X1 @ X1 @ X1))),
% 0.40/0.59      inference('sup-', [status(thm)], ['10', '18'])).
% 0.40/0.59  thf('20', plain,
% 0.40/0.59      (![X1 : $i, X2 : $i, X3 : $i, X4 : $i]:
% 0.40/0.59         (((X2) != (X1)) | ~ (zip_tseitin_0 @ X2 @ X3 @ X4 @ X1))),
% 0.40/0.59      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.40/0.59  thf('21', plain,
% 0.40/0.59      (![X1 : $i, X3 : $i, X4 : $i]: ~ (zip_tseitin_0 @ X1 @ X3 @ X4 @ X1)),
% 0.40/0.59      inference('simplify', [status(thm)], ['20'])).
% 0.40/0.59  thf('22', plain,
% 0.40/0.59      (![X0 : $i, X1 : $i]: (zip_tseitin_1 @ (k1_tarski @ X0) @ X1)),
% 0.40/0.59      inference('sup-', [status(thm)], ['19', '21'])).
% 0.40/0.59  thf('23', plain, ((zip_tseitin_2 @ sk_D_2 @ (k1_tarski @ sk_B) @ sk_A)),
% 0.40/0.59      inference('demod', [status(thm)], ['7', '22'])).
% 0.40/0.59  thf('24', plain,
% 0.40/0.59      ((m1_subset_1 @ sk_D_2 @ 
% 0.40/0.59        (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ (k1_tarski @ sk_B))))),
% 0.40/0.59      inference('cnf', [status(esa)], [zf_stmt_1])).
% 0.40/0.59  thf(redefinition_k1_relset_1, axiom,
% 0.40/0.59    (![A:$i,B:$i,C:$i]:
% 0.40/0.59     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.40/0.59       ( ( k1_relset_1 @ A @ B @ C ) = ( k1_relat_1 @ C ) ) ))).
% 0.40/0.59  thf('25', plain,
% 0.40/0.59      (![X35 : $i, X36 : $i, X37 : $i]:
% 0.40/0.59         (((k1_relset_1 @ X36 @ X37 @ X35) = (k1_relat_1 @ X35))
% 0.40/0.59          | ~ (m1_subset_1 @ X35 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X36 @ X37))))),
% 0.40/0.59      inference('cnf', [status(esa)], [redefinition_k1_relset_1])).
% 0.40/0.59  thf('26', plain,
% 0.40/0.59      (((k1_relset_1 @ sk_A @ (k1_tarski @ sk_B) @ sk_D_2)
% 0.40/0.59         = (k1_relat_1 @ sk_D_2))),
% 0.40/0.59      inference('sup-', [status(thm)], ['24', '25'])).
% 0.40/0.59  thf('27', plain, (((sk_A) = (k1_relat_1 @ sk_D_2))),
% 0.40/0.59      inference('demod', [status(thm)], ['4', '23', '26'])).
% 0.40/0.59  thf(d5_funct_1, axiom,
% 0.40/0.59    (![A:$i]:
% 0.40/0.59     ( ( ( v1_relat_1 @ A ) & ( v1_funct_1 @ A ) ) =>
% 0.40/0.59       ( ![B:$i]:
% 0.40/0.59         ( ( ( B ) = ( k2_relat_1 @ A ) ) <=>
% 0.40/0.59           ( ![C:$i]:
% 0.40/0.59             ( ( r2_hidden @ C @ B ) <=>
% 0.40/0.59               ( ?[D:$i]:
% 0.40/0.59                 ( ( ( C ) = ( k1_funct_1 @ A @ D ) ) & 
% 0.40/0.59                   ( r2_hidden @ D @ ( k1_relat_1 @ A ) ) ) ) ) ) ) ) ))).
% 0.40/0.59  thf('28', plain,
% 0.40/0.59      (![X24 : $i, X26 : $i, X28 : $i, X29 : $i]:
% 0.40/0.59         (((X26) != (k2_relat_1 @ X24))
% 0.40/0.59          | (r2_hidden @ X28 @ X26)
% 0.40/0.59          | ~ (r2_hidden @ X29 @ (k1_relat_1 @ X24))
% 0.40/0.59          | ((X28) != (k1_funct_1 @ X24 @ X29))
% 0.40/0.59          | ~ (v1_funct_1 @ X24)
% 0.40/0.59          | ~ (v1_relat_1 @ X24))),
% 0.40/0.59      inference('cnf', [status(esa)], [d5_funct_1])).
% 0.40/0.59  thf('29', plain,
% 0.40/0.59      (![X24 : $i, X29 : $i]:
% 0.40/0.59         (~ (v1_relat_1 @ X24)
% 0.40/0.59          | ~ (v1_funct_1 @ X24)
% 0.40/0.59          | ~ (r2_hidden @ X29 @ (k1_relat_1 @ X24))
% 0.40/0.59          | (r2_hidden @ (k1_funct_1 @ X24 @ X29) @ (k2_relat_1 @ X24)))),
% 0.40/0.59      inference('simplify', [status(thm)], ['28'])).
% 0.40/0.59  thf('30', plain,
% 0.40/0.59      (![X0 : $i]:
% 0.40/0.59         (~ (r2_hidden @ X0 @ sk_A)
% 0.40/0.59          | (r2_hidden @ (k1_funct_1 @ sk_D_2 @ X0) @ (k2_relat_1 @ sk_D_2))
% 0.40/0.59          | ~ (v1_funct_1 @ sk_D_2)
% 0.40/0.59          | ~ (v1_relat_1 @ sk_D_2))),
% 0.40/0.59      inference('sup-', [status(thm)], ['27', '29'])).
% 0.40/0.59  thf('31', plain, ((v1_funct_1 @ sk_D_2)),
% 0.40/0.59      inference('cnf', [status(esa)], [zf_stmt_1])).
% 0.40/0.59  thf('32', plain,
% 0.40/0.59      ((m1_subset_1 @ sk_D_2 @ 
% 0.40/0.59        (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ (k1_tarski @ sk_B))))),
% 0.40/0.59      inference('cnf', [status(esa)], [zf_stmt_1])).
% 0.40/0.59  thf(cc2_relat_1, axiom,
% 0.40/0.59    (![A:$i]:
% 0.40/0.59     ( ( v1_relat_1 @ A ) =>
% 0.40/0.59       ( ![B:$i]:
% 0.40/0.59         ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) ) => ( v1_relat_1 @ B ) ) ) ))).
% 0.40/0.59  thf('33', plain,
% 0.40/0.59      (![X19 : $i, X20 : $i]:
% 0.40/0.59         (~ (m1_subset_1 @ X19 @ (k1_zfmisc_1 @ X20))
% 0.40/0.59          | (v1_relat_1 @ X19)
% 0.40/0.59          | ~ (v1_relat_1 @ X20))),
% 0.40/0.59      inference('cnf', [status(esa)], [cc2_relat_1])).
% 0.40/0.59  thf('34', plain,
% 0.40/0.59      ((~ (v1_relat_1 @ (k2_zfmisc_1 @ sk_A @ (k1_tarski @ sk_B)))
% 0.40/0.59        | (v1_relat_1 @ sk_D_2))),
% 0.40/0.59      inference('sup-', [status(thm)], ['32', '33'])).
% 0.40/0.59  thf(fc6_relat_1, axiom,
% 0.40/0.59    (![A:$i,B:$i]: ( v1_relat_1 @ ( k2_zfmisc_1 @ A @ B ) ))).
% 0.40/0.59  thf('35', plain,
% 0.40/0.59      (![X21 : $i, X22 : $i]: (v1_relat_1 @ (k2_zfmisc_1 @ X21 @ X22))),
% 0.40/0.59      inference('cnf', [status(esa)], [fc6_relat_1])).
% 0.40/0.59  thf('36', plain, ((v1_relat_1 @ sk_D_2)),
% 0.40/0.59      inference('demod', [status(thm)], ['34', '35'])).
% 0.40/0.59  thf('37', plain,
% 0.40/0.59      (![X0 : $i]:
% 0.40/0.59         (~ (r2_hidden @ X0 @ sk_A)
% 0.40/0.59          | (r2_hidden @ (k1_funct_1 @ sk_D_2 @ X0) @ (k2_relat_1 @ sk_D_2)))),
% 0.40/0.59      inference('demod', [status(thm)], ['30', '31', '36'])).
% 0.40/0.59  thf('38', plain,
% 0.40/0.59      ((r2_hidden @ (k1_funct_1 @ sk_D_2 @ sk_C_1) @ (k2_relat_1 @ sk_D_2))),
% 0.40/0.59      inference('sup-', [status(thm)], ['1', '37'])).
% 0.40/0.59  thf('39', plain,
% 0.40/0.59      ((m1_subset_1 @ sk_D_2 @ 
% 0.40/0.59        (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ (k1_tarski @ sk_B))))),
% 0.40/0.59      inference('cnf', [status(esa)], [zf_stmt_1])).
% 0.40/0.59  thf(dt_k2_relset_1, axiom,
% 0.40/0.59    (![A:$i,B:$i,C:$i]:
% 0.40/0.59     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.40/0.59       ( m1_subset_1 @ ( k2_relset_1 @ A @ B @ C ) @ ( k1_zfmisc_1 @ B ) ) ))).
% 0.40/0.59  thf('40', plain,
% 0.40/0.59      (![X32 : $i, X33 : $i, X34 : $i]:
% 0.40/0.59         ((m1_subset_1 @ (k2_relset_1 @ X32 @ X33 @ X34) @ (k1_zfmisc_1 @ X33))
% 0.40/0.59          | ~ (m1_subset_1 @ X34 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X32 @ X33))))),
% 0.40/0.59      inference('cnf', [status(esa)], [dt_k2_relset_1])).
% 0.40/0.59  thf('41', plain,
% 0.40/0.59      ((m1_subset_1 @ (k2_relset_1 @ sk_A @ (k1_tarski @ sk_B) @ sk_D_2) @ 
% 0.40/0.59        (k1_zfmisc_1 @ (k1_tarski @ sk_B)))),
% 0.40/0.59      inference('sup-', [status(thm)], ['39', '40'])).
% 0.40/0.59  thf('42', plain,
% 0.40/0.59      ((m1_subset_1 @ sk_D_2 @ 
% 0.40/0.59        (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ (k1_tarski @ sk_B))))),
% 0.40/0.59      inference('cnf', [status(esa)], [zf_stmt_1])).
% 0.40/0.59  thf(redefinition_k2_relset_1, axiom,
% 0.40/0.59    (![A:$i,B:$i,C:$i]:
% 0.40/0.59     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.40/0.59       ( ( k2_relset_1 @ A @ B @ C ) = ( k2_relat_1 @ C ) ) ))).
% 0.40/0.59  thf('43', plain,
% 0.40/0.59      (![X38 : $i, X39 : $i, X40 : $i]:
% 0.40/0.59         (((k2_relset_1 @ X39 @ X40 @ X38) = (k2_relat_1 @ X38))
% 0.40/0.59          | ~ (m1_subset_1 @ X38 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X39 @ X40))))),
% 0.40/0.59      inference('cnf', [status(esa)], [redefinition_k2_relset_1])).
% 0.40/0.59  thf('44', plain,
% 0.40/0.59      (((k2_relset_1 @ sk_A @ (k1_tarski @ sk_B) @ sk_D_2)
% 0.40/0.59         = (k2_relat_1 @ sk_D_2))),
% 0.40/0.59      inference('sup-', [status(thm)], ['42', '43'])).
% 0.40/0.59  thf('45', plain,
% 0.40/0.59      ((m1_subset_1 @ (k2_relat_1 @ sk_D_2) @ 
% 0.40/0.59        (k1_zfmisc_1 @ (k1_tarski @ sk_B)))),
% 0.40/0.59      inference('demod', [status(thm)], ['41', '44'])).
% 0.40/0.59  thf(l3_subset_1, axiom,
% 0.40/0.59    (![A:$i,B:$i]:
% 0.40/0.59     ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) ) =>
% 0.40/0.59       ( ![C:$i]: ( ( r2_hidden @ C @ B ) => ( r2_hidden @ C @ A ) ) ) ))).
% 0.40/0.59  thf('46', plain,
% 0.40/0.59      (![X16 : $i, X17 : $i, X18 : $i]:
% 0.40/0.59         (~ (r2_hidden @ X16 @ X17)
% 0.40/0.59          | (r2_hidden @ X16 @ X18)
% 0.40/0.59          | ~ (m1_subset_1 @ X17 @ (k1_zfmisc_1 @ X18)))),
% 0.40/0.59      inference('cnf', [status(esa)], [l3_subset_1])).
% 0.40/0.59  thf('47', plain,
% 0.40/0.59      (![X0 : $i]:
% 0.40/0.59         ((r2_hidden @ X0 @ (k1_tarski @ sk_B))
% 0.40/0.59          | ~ (r2_hidden @ X0 @ (k2_relat_1 @ sk_D_2)))),
% 0.40/0.59      inference('sup-', [status(thm)], ['45', '46'])).
% 0.40/0.59  thf('48', plain,
% 0.40/0.59      ((r2_hidden @ (k1_funct_1 @ sk_D_2 @ sk_C_1) @ (k1_tarski @ sk_B))),
% 0.40/0.59      inference('sup-', [status(thm)], ['38', '47'])).
% 0.40/0.59  thf('49', plain,
% 0.40/0.59      (![X13 : $i]: ((k2_tarski @ X13 @ X13) = (k1_tarski @ X13))),
% 0.40/0.59      inference('cnf', [status(esa)], [t69_enumset1])).
% 0.40/0.59  thf('50', plain,
% 0.40/0.59      (![X14 : $i, X15 : $i]:
% 0.40/0.59         ((k1_enumset1 @ X14 @ X14 @ X15) = (k2_tarski @ X14 @ X15))),
% 0.40/0.59      inference('cnf', [status(esa)], [t70_enumset1])).
% 0.40/0.59  thf('51', plain,
% 0.40/0.59      (![X7 : $i, X8 : $i, X9 : $i, X10 : $i, X11 : $i]:
% 0.40/0.59         (~ (r2_hidden @ X11 @ X10)
% 0.40/0.59          | ~ (zip_tseitin_0 @ X11 @ X7 @ X8 @ X9)
% 0.40/0.59          | ((X10) != (k1_enumset1 @ X9 @ X8 @ X7)))),
% 0.40/0.59      inference('cnf', [status(esa)], [zf_stmt_8])).
% 0.40/0.59  thf('52', plain,
% 0.40/0.59      (![X7 : $i, X8 : $i, X9 : $i, X11 : $i]:
% 0.40/0.59         (~ (zip_tseitin_0 @ X11 @ X7 @ X8 @ X9)
% 0.40/0.59          | ~ (r2_hidden @ X11 @ (k1_enumset1 @ X9 @ X8 @ X7)))),
% 0.40/0.59      inference('simplify', [status(thm)], ['51'])).
% 0.40/0.59  thf('53', plain,
% 0.40/0.59      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.40/0.59         (~ (r2_hidden @ X2 @ (k2_tarski @ X1 @ X0))
% 0.40/0.59          | ~ (zip_tseitin_0 @ X2 @ X0 @ X1 @ X1))),
% 0.40/0.59      inference('sup-', [status(thm)], ['50', '52'])).
% 0.40/0.59  thf('54', plain,
% 0.40/0.59      (![X0 : $i, X1 : $i]:
% 0.40/0.59         (~ (r2_hidden @ X1 @ (k1_tarski @ X0))
% 0.40/0.59          | ~ (zip_tseitin_0 @ X1 @ X0 @ X0 @ X0))),
% 0.40/0.59      inference('sup-', [status(thm)], ['49', '53'])).
% 0.40/0.59  thf('55', plain,
% 0.40/0.59      (~ (zip_tseitin_0 @ (k1_funct_1 @ sk_D_2 @ sk_C_1) @ sk_B @ sk_B @ sk_B)),
% 0.40/0.59      inference('sup-', [status(thm)], ['48', '54'])).
% 0.40/0.59  thf('56', plain,
% 0.40/0.59      ((((k1_funct_1 @ sk_D_2 @ sk_C_1) = (sk_B))
% 0.40/0.59        | ((k1_funct_1 @ sk_D_2 @ sk_C_1) = (sk_B))
% 0.40/0.59        | ((k1_funct_1 @ sk_D_2 @ sk_C_1) = (sk_B)))),
% 0.40/0.59      inference('sup-', [status(thm)], ['0', '55'])).
% 0.40/0.59  thf('57', plain, (((k1_funct_1 @ sk_D_2 @ sk_C_1) = (sk_B))),
% 0.40/0.59      inference('simplify', [status(thm)], ['56'])).
% 0.40/0.59  thf('58', plain, (((k1_funct_1 @ sk_D_2 @ sk_C_1) != (sk_B))),
% 0.40/0.59      inference('cnf', [status(esa)], [zf_stmt_1])).
% 0.40/0.59  thf('59', plain, ($false),
% 0.40/0.59      inference('simplify_reflect-', [status(thm)], ['57', '58'])).
% 0.40/0.59  
% 0.40/0.59  % SZS output end Refutation
% 0.40/0.59  
% 0.40/0.60  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
