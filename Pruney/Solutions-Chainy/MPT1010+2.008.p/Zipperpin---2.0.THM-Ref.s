%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.4NwkCXEI1f

% Computer   : n009.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:57:14 EST 2020

% Result     : Theorem 0.46s
% Output     : Refutation 0.46s
% Verified   : 
% Statistics : Number of formulae       :  108 ( 131 expanded)
%              Number of leaves         :   47 (  60 expanded)
%              Depth                    :   16
%              Number of atoms          :  764 (1181 expanded)
%              Number of equality atoms :   50 (  72 expanded)
%              Maximal formula depth    :   13 (   7 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(zip_tseitin_2_type,type,(
    zip_tseitin_2: $i > $i > $i > $o )).

thf(sk_D_2_type,type,(
    sk_D_2: $i )).

thf(v1_funct_2_type,type,(
    v1_funct_2: $i > $i > $i > $o )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(k1_enumset1_type,type,(
    k1_enumset1: $i > $i > $i > $i )).

thf(k1_tarski_type,type,(
    k1_tarski: $i > $i )).

thf(zip_tseitin_0_type,type,(
    zip_tseitin_0: $i > $i > $i > $i > $o )).

thf(k1_funct_1_type,type,(
    k1_funct_1: $i > $i > $i )).

thf(k1_relset_1_type,type,(
    k1_relset_1: $i > $i > $i > $i )).

thf(v4_relat_1_type,type,(
    v4_relat_1: $i > $i > $o )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(k2_tarski_type,type,(
    k2_tarski: $i > $i > $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(k1_relat_1_type,type,(
    k1_relat_1: $i > $i )).

thf(sk_C_1_type,type,(
    sk_C_1: $i )).

thf(v1_funct_1_type,type,(
    v1_funct_1: $i > $o )).

thf(v5_relat_1_type,type,(
    v5_relat_1: $i > $i > $o )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(k2_zfmisc_1_type,type,(
    k2_zfmisc_1: $i > $i > $i )).

thf(k2_relat_1_type,type,(
    k2_relat_1: $i > $i )).

thf(zip_tseitin_1_type,type,(
    zip_tseitin_1: $i > $i > $o )).

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
    ! [X47: $i,X48: $i,X49: $i] :
      ( ~ ( v1_funct_2 @ X49 @ X47 @ X48 )
      | ( X47
        = ( k1_relset_1 @ X47 @ X48 @ X49 ) )
      | ~ ( zip_tseitin_2 @ X49 @ X48 @ X47 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_2])).

thf('4',plain,
    ( ~ ( zip_tseitin_2 @ sk_D_2 @ ( k1_tarski @ sk_B ) @ sk_A )
    | ( sk_A
      = ( k1_relset_1 @ sk_A @ ( k1_tarski @ sk_B ) @ sk_D_2 ) ) ),
    inference('sup-',[status(thm)],['2','3'])).

thf(zf_stmt_3,axiom,(
    ! [B: $i,A: $i] :
      ( ( ( B = k1_xboole_0 )
       => ( A = k1_xboole_0 ) )
     => ( zip_tseitin_1 @ B @ A ) ) )).

thf('5',plain,(
    ! [X45: $i,X46: $i] :
      ( ( zip_tseitin_1 @ X45 @ X46 )
      | ( X45 = k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_3])).

thf(t2_xboole_1,axiom,(
    ! [A: $i] :
      ( r1_tarski @ k1_xboole_0 @ A ) )).

thf('6',plain,(
    ! [X0: $i] :
      ( r1_tarski @ k1_xboole_0 @ X0 ) ),
    inference(cnf,[status(esa)],[t2_xboole_1])).

thf('7',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( r1_tarski @ X0 @ X1 )
      | ( zip_tseitin_1 @ X0 @ X2 ) ) ),
    inference('sup+',[status(thm)],['5','6'])).

thf('8',plain,(
    m1_subset_1 @ sk_D_2 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ ( k1_tarski @ sk_B ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_1])).

thf(zf_stmt_4,type,(
    zip_tseitin_2: $i > $i > $i > $o )).

thf(zf_stmt_5,type,(
    zip_tseitin_1: $i > $i > $o )).

thf(zf_stmt_6,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( ( zip_tseitin_1 @ B @ A )
         => ( zip_tseitin_2 @ C @ B @ A ) )
        & ( ( B = k1_xboole_0 )
         => ( ( A = k1_xboole_0 )
            | ( ( v1_funct_2 @ C @ A @ B )
            <=> ( C = k1_xboole_0 ) ) ) ) ) ) )).

thf('9',plain,(
    ! [X50: $i,X51: $i,X52: $i] :
      ( ~ ( zip_tseitin_1 @ X50 @ X51 )
      | ( zip_tseitin_2 @ X52 @ X50 @ X51 )
      | ~ ( m1_subset_1 @ X52 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X51 @ X50 ) ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_6])).

thf('10',plain,
    ( ( zip_tseitin_2 @ sk_D_2 @ ( k1_tarski @ sk_B ) @ sk_A )
    | ~ ( zip_tseitin_1 @ ( k1_tarski @ sk_B ) @ sk_A ) ),
    inference('sup-',[status(thm)],['8','9'])).

thf('11',plain,(
    ! [X0: $i] :
      ( ( r1_tarski @ ( k1_tarski @ sk_B ) @ X0 )
      | ( zip_tseitin_2 @ sk_D_2 @ ( k1_tarski @ sk_B ) @ sk_A ) ) ),
    inference('sup-',[status(thm)],['7','10'])).

thf(t69_enumset1,axiom,(
    ! [A: $i] :
      ( ( k2_tarski @ A @ A )
      = ( k1_tarski @ A ) ) )).

thf('12',plain,(
    ! [X13: $i] :
      ( ( k2_tarski @ X13 @ X13 )
      = ( k1_tarski @ X13 ) ) ),
    inference(cnf,[status(esa)],[t69_enumset1])).

thf(t70_enumset1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k1_enumset1 @ A @ A @ B )
      = ( k2_tarski @ A @ B ) ) )).

thf('13',plain,(
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

thf('14',plain,(
    ! [X6: $i,X7: $i,X8: $i,X9: $i,X10: $i] :
      ( ( zip_tseitin_0 @ X6 @ X7 @ X8 @ X9 )
      | ( r2_hidden @ X6 @ X10 )
      | ( X10
       != ( k1_enumset1 @ X9 @ X8 @ X7 ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_8])).

thf('15',plain,(
    ! [X6: $i,X7: $i,X8: $i,X9: $i] :
      ( ( r2_hidden @ X6 @ ( k1_enumset1 @ X9 @ X8 @ X7 ) )
      | ( zip_tseitin_0 @ X6 @ X7 @ X8 @ X9 ) ) ),
    inference(simplify,[status(thm)],['14'])).

thf(t7_ordinal1,axiom,(
    ! [A: $i,B: $i] :
      ~ ( ( r2_hidden @ A @ B )
        & ( r1_tarski @ B @ A ) ) )).

thf('16',plain,(
    ! [X34: $i,X35: $i] :
      ( ~ ( r2_hidden @ X34 @ X35 )
      | ~ ( r1_tarski @ X35 @ X34 ) ) ),
    inference(cnf,[status(esa)],[t7_ordinal1])).

thf('17',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i] :
      ( ( zip_tseitin_0 @ X3 @ X0 @ X1 @ X2 )
      | ~ ( r1_tarski @ ( k1_enumset1 @ X2 @ X1 @ X0 ) @ X3 ) ) ),
    inference('sup-',[status(thm)],['15','16'])).

thf('18',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( r1_tarski @ ( k2_tarski @ X1 @ X0 ) @ X2 )
      | ( zip_tseitin_0 @ X2 @ X0 @ X1 @ X1 ) ) ),
    inference('sup-',[status(thm)],['13','17'])).

thf('19',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( r1_tarski @ ( k1_tarski @ X0 ) @ X1 )
      | ( zip_tseitin_0 @ X1 @ X0 @ X0 @ X0 ) ) ),
    inference('sup-',[status(thm)],['12','18'])).

thf('20',plain,(
    ! [X0: $i] :
      ( ( zip_tseitin_2 @ sk_D_2 @ ( k1_tarski @ sk_B ) @ sk_A )
      | ( zip_tseitin_0 @ X0 @ sk_B @ sk_B @ sk_B ) ) ),
    inference('sup-',[status(thm)],['11','19'])).

thf('21',plain,(
    ! [X1: $i,X2: $i,X3: $i,X4: $i] :
      ( ( X2 != X1 )
      | ~ ( zip_tseitin_0 @ X2 @ X3 @ X4 @ X1 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('22',plain,(
    ! [X1: $i,X3: $i,X4: $i] :
      ~ ( zip_tseitin_0 @ X1 @ X3 @ X4 @ X1 ) ),
    inference(simplify,[status(thm)],['21'])).

thf('23',plain,(
    zip_tseitin_2 @ sk_D_2 @ ( k1_tarski @ sk_B ) @ sk_A ),
    inference('sup-',[status(thm)],['20','22'])).

thf('24',plain,(
    m1_subset_1 @ sk_D_2 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ ( k1_tarski @ sk_B ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_1])).

thf(redefinition_k1_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( k1_relset_1 @ A @ B @ C )
        = ( k1_relat_1 @ C ) ) ) )).

thf('25',plain,(
    ! [X42: $i,X43: $i,X44: $i] :
      ( ( ( k1_relset_1 @ X43 @ X44 @ X42 )
        = ( k1_relat_1 @ X42 ) )
      | ~ ( m1_subset_1 @ X42 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X43 @ X44 ) ) ) ) ),
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
    ! [X28: $i,X30: $i,X32: $i,X33: $i] :
      ( ( X30
       != ( k2_relat_1 @ X28 ) )
      | ( r2_hidden @ X32 @ X30 )
      | ~ ( r2_hidden @ X33 @ ( k1_relat_1 @ X28 ) )
      | ( X32
       != ( k1_funct_1 @ X28 @ X33 ) )
      | ~ ( v1_funct_1 @ X28 )
      | ~ ( v1_relat_1 @ X28 ) ) ),
    inference(cnf,[status(esa)],[d5_funct_1])).

thf('29',plain,(
    ! [X28: $i,X33: $i] :
      ( ~ ( v1_relat_1 @ X28 )
      | ~ ( v1_funct_1 @ X28 )
      | ~ ( r2_hidden @ X33 @ ( k1_relat_1 @ X28 ) )
      | ( r2_hidden @ ( k1_funct_1 @ X28 @ X33 ) @ ( k2_relat_1 @ X28 ) ) ) ),
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

thf(cc1_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( v1_relat_1 @ C ) ) )).

thf('33',plain,(
    ! [X36: $i,X37: $i,X38: $i] :
      ( ( v1_relat_1 @ X36 )
      | ~ ( m1_subset_1 @ X36 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X37 @ X38 ) ) ) ) ),
    inference(cnf,[status(esa)],[cc1_relset_1])).

thf('34',plain,(
    v1_relat_1 @ sk_D_2 ),
    inference('sup-',[status(thm)],['32','33'])).

thf('35',plain,(
    ! [X0: $i] :
      ( ~ ( r2_hidden @ X0 @ sk_A )
      | ( r2_hidden @ ( k1_funct_1 @ sk_D_2 @ X0 ) @ ( k2_relat_1 @ sk_D_2 ) ) ) ),
    inference(demod,[status(thm)],['30','31','34'])).

thf('36',plain,(
    r2_hidden @ ( k1_funct_1 @ sk_D_2 @ sk_C_1 ) @ ( k2_relat_1 @ sk_D_2 ) ),
    inference('sup-',[status(thm)],['1','35'])).

thf('37',plain,(
    m1_subset_1 @ sk_D_2 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ ( k1_tarski @ sk_B ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_1])).

thf(cc2_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( v4_relat_1 @ C @ A )
        & ( v5_relat_1 @ C @ B ) ) ) )).

thf('38',plain,(
    ! [X39: $i,X40: $i,X41: $i] :
      ( ( v5_relat_1 @ X39 @ X41 )
      | ~ ( m1_subset_1 @ X39 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X40 @ X41 ) ) ) ) ),
    inference(cnf,[status(esa)],[cc2_relset_1])).

thf('39',plain,(
    v5_relat_1 @ sk_D_2 @ ( k1_tarski @ sk_B ) ),
    inference('sup-',[status(thm)],['37','38'])).

thf(d19_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( ( v5_relat_1 @ B @ A )
      <=> ( r1_tarski @ ( k2_relat_1 @ B ) @ A ) ) ) )).

thf('40',plain,(
    ! [X25: $i,X26: $i] :
      ( ~ ( v5_relat_1 @ X25 @ X26 )
      | ( r1_tarski @ ( k2_relat_1 @ X25 ) @ X26 )
      | ~ ( v1_relat_1 @ X25 ) ) ),
    inference(cnf,[status(esa)],[d19_relat_1])).

thf('41',plain,
    ( ~ ( v1_relat_1 @ sk_D_2 )
    | ( r1_tarski @ ( k2_relat_1 @ sk_D_2 ) @ ( k1_tarski @ sk_B ) ) ),
    inference('sup-',[status(thm)],['39','40'])).

thf('42',plain,(
    v1_relat_1 @ sk_D_2 ),
    inference('sup-',[status(thm)],['32','33'])).

thf('43',plain,(
    r1_tarski @ ( k2_relat_1 @ sk_D_2 ) @ ( k1_tarski @ sk_B ) ),
    inference(demod,[status(thm)],['41','42'])).

thf(t3_subset,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ A @ ( k1_zfmisc_1 @ B ) )
    <=> ( r1_tarski @ A @ B ) ) )).

thf('44',plain,(
    ! [X22: $i,X24: $i] :
      ( ( m1_subset_1 @ X22 @ ( k1_zfmisc_1 @ X24 ) )
      | ~ ( r1_tarski @ X22 @ X24 ) ) ),
    inference(cnf,[status(esa)],[t3_subset])).

thf('45',plain,(
    m1_subset_1 @ ( k2_relat_1 @ sk_D_2 ) @ ( k1_zfmisc_1 @ ( k1_tarski @ sk_B ) ) ),
    inference('sup-',[status(thm)],['43','44'])).

thf(l3_subset_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) )
     => ! [C: $i] :
          ( ( r2_hidden @ C @ B )
         => ( r2_hidden @ C @ A ) ) ) )).

thf('46',plain,(
    ! [X19: $i,X20: $i,X21: $i] :
      ( ~ ( r2_hidden @ X19 @ X20 )
      | ( r2_hidden @ X19 @ X21 )
      | ~ ( m1_subset_1 @ X20 @ ( k1_zfmisc_1 @ X21 ) ) ) ),
    inference(cnf,[status(esa)],[l3_subset_1])).

thf('47',plain,(
    ! [X0: $i] :
      ( ( r2_hidden @ X0 @ ( k1_tarski @ sk_B ) )
      | ~ ( r2_hidden @ X0 @ ( k2_relat_1 @ sk_D_2 ) ) ) ),
    inference('sup-',[status(thm)],['45','46'])).

thf('48',plain,(
    r2_hidden @ ( k1_funct_1 @ sk_D_2 @ sk_C_1 ) @ ( k1_tarski @ sk_B ) ),
    inference('sup-',[status(thm)],['36','47'])).

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
% 0.02/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.02/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.4NwkCXEI1f
% 0.13/0.34  % Computer   : n009.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 19:52:41 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running portfolio for 600 s
% 0.13/0.34  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.13/0.34  % Number of cores: 8
% 0.13/0.34  % Python version: Python 3.6.8
% 0.13/0.34  % Running in FO mode
% 0.46/0.63  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.46/0.63  % Solved by: fo/fo7.sh
% 0.46/0.63  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.46/0.63  % done 253 iterations in 0.188s
% 0.46/0.63  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.46/0.63  % SZS output start Refutation
% 0.46/0.63  thf(zip_tseitin_2_type, type, zip_tseitin_2: $i > $i > $i > $o).
% 0.46/0.63  thf(sk_D_2_type, type, sk_D_2: $i).
% 0.46/0.63  thf(v1_funct_2_type, type, v1_funct_2: $i > $i > $i > $o).
% 0.46/0.63  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.46/0.63  thf(k1_enumset1_type, type, k1_enumset1: $i > $i > $i > $i).
% 0.46/0.63  thf(k1_tarski_type, type, k1_tarski: $i > $i).
% 0.46/0.63  thf(zip_tseitin_0_type, type, zip_tseitin_0: $i > $i > $i > $i > $o).
% 0.46/0.63  thf(k1_funct_1_type, type, k1_funct_1: $i > $i > $i).
% 0.46/0.63  thf(k1_relset_1_type, type, k1_relset_1: $i > $i > $i > $i).
% 0.46/0.63  thf(v4_relat_1_type, type, v4_relat_1: $i > $i > $o).
% 0.46/0.63  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.46/0.63  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.46/0.63  thf(k2_tarski_type, type, k2_tarski: $i > $i > $i).
% 0.46/0.63  thf(sk_B_type, type, sk_B: $i).
% 0.46/0.63  thf(k1_relat_1_type, type, k1_relat_1: $i > $i).
% 0.46/0.63  thf(sk_C_1_type, type, sk_C_1: $i).
% 0.46/0.63  thf(v1_funct_1_type, type, v1_funct_1: $i > $o).
% 0.46/0.63  thf(v5_relat_1_type, type, v5_relat_1: $i > $i > $o).
% 0.46/0.63  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.46/0.63  thf(sk_A_type, type, sk_A: $i).
% 0.46/0.63  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.46/0.63  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.46/0.63  thf(k2_zfmisc_1_type, type, k2_zfmisc_1: $i > $i > $i).
% 0.46/0.63  thf(k2_relat_1_type, type, k2_relat_1: $i > $i).
% 0.46/0.63  thf(zip_tseitin_1_type, type, zip_tseitin_1: $i > $i > $o).
% 0.46/0.63  thf(d1_enumset1, axiom,
% 0.46/0.63    (![A:$i,B:$i,C:$i,D:$i]:
% 0.46/0.63     ( ( ( D ) = ( k1_enumset1 @ A @ B @ C ) ) <=>
% 0.46/0.63       ( ![E:$i]:
% 0.46/0.63         ( ( r2_hidden @ E @ D ) <=>
% 0.46/0.63           ( ~( ( ( E ) != ( C ) ) & ( ( E ) != ( B ) ) & ( ( E ) != ( A ) ) ) ) ) ) ))).
% 0.46/0.63  thf(zf_stmt_0, axiom,
% 0.46/0.63    (![E:$i,C:$i,B:$i,A:$i]:
% 0.46/0.63     ( ( zip_tseitin_0 @ E @ C @ B @ A ) <=>
% 0.46/0.63       ( ( ( E ) != ( A ) ) & ( ( E ) != ( B ) ) & ( ( E ) != ( C ) ) ) ))).
% 0.46/0.63  thf('0', plain,
% 0.46/0.63      (![X2 : $i, X3 : $i, X4 : $i, X5 : $i]:
% 0.46/0.63         ((zip_tseitin_0 @ X2 @ X3 @ X4 @ X5)
% 0.46/0.63          | ((X2) = (X3))
% 0.46/0.63          | ((X2) = (X4))
% 0.46/0.63          | ((X2) = (X5)))),
% 0.46/0.63      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.46/0.63  thf(t65_funct_2, conjecture,
% 0.46/0.63    (![A:$i,B:$i,C:$i,D:$i]:
% 0.46/0.63     ( ( ( v1_funct_1 @ D ) & ( v1_funct_2 @ D @ A @ ( k1_tarski @ B ) ) & 
% 0.46/0.63         ( m1_subset_1 @
% 0.46/0.63           D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ ( k1_tarski @ B ) ) ) ) ) =>
% 0.46/0.63       ( ( r2_hidden @ C @ A ) => ( ( k1_funct_1 @ D @ C ) = ( B ) ) ) ))).
% 0.46/0.63  thf(zf_stmt_1, negated_conjecture,
% 0.46/0.63    (~( ![A:$i,B:$i,C:$i,D:$i]:
% 0.46/0.63        ( ( ( v1_funct_1 @ D ) & ( v1_funct_2 @ D @ A @ ( k1_tarski @ B ) ) & 
% 0.46/0.63            ( m1_subset_1 @
% 0.46/0.63              D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ ( k1_tarski @ B ) ) ) ) ) =>
% 0.46/0.63          ( ( r2_hidden @ C @ A ) => ( ( k1_funct_1 @ D @ C ) = ( B ) ) ) ) )),
% 0.46/0.63    inference('cnf.neg', [status(esa)], [t65_funct_2])).
% 0.46/0.63  thf('1', plain, ((r2_hidden @ sk_C_1 @ sk_A)),
% 0.46/0.63      inference('cnf', [status(esa)], [zf_stmt_1])).
% 0.46/0.63  thf('2', plain, ((v1_funct_2 @ sk_D_2 @ sk_A @ (k1_tarski @ sk_B))),
% 0.46/0.63      inference('cnf', [status(esa)], [zf_stmt_1])).
% 0.46/0.63  thf(d1_funct_2, axiom,
% 0.46/0.63    (![A:$i,B:$i,C:$i]:
% 0.46/0.63     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.46/0.63       ( ( ( ( B ) = ( k1_xboole_0 ) ) =>
% 0.46/0.63           ( ( ( v1_funct_2 @ C @ A @ B ) <=> ( ( C ) = ( k1_xboole_0 ) ) ) | 
% 0.46/0.63             ( ( A ) = ( k1_xboole_0 ) ) ) ) & 
% 0.46/0.63         ( ( ( ( B ) = ( k1_xboole_0 ) ) => ( ( A ) = ( k1_xboole_0 ) ) ) =>
% 0.46/0.63           ( ( v1_funct_2 @ C @ A @ B ) <=>
% 0.46/0.63             ( ( A ) = ( k1_relset_1 @ A @ B @ C ) ) ) ) ) ))).
% 0.46/0.63  thf(zf_stmt_2, axiom,
% 0.46/0.63    (![C:$i,B:$i,A:$i]:
% 0.46/0.63     ( ( zip_tseitin_2 @ C @ B @ A ) =>
% 0.46/0.63       ( ( v1_funct_2 @ C @ A @ B ) <=> ( ( A ) = ( k1_relset_1 @ A @ B @ C ) ) ) ))).
% 0.46/0.63  thf('3', plain,
% 0.46/0.63      (![X47 : $i, X48 : $i, X49 : $i]:
% 0.46/0.63         (~ (v1_funct_2 @ X49 @ X47 @ X48)
% 0.46/0.63          | ((X47) = (k1_relset_1 @ X47 @ X48 @ X49))
% 0.46/0.63          | ~ (zip_tseitin_2 @ X49 @ X48 @ X47))),
% 0.46/0.63      inference('cnf', [status(esa)], [zf_stmt_2])).
% 0.46/0.63  thf('4', plain,
% 0.46/0.63      ((~ (zip_tseitin_2 @ sk_D_2 @ (k1_tarski @ sk_B) @ sk_A)
% 0.46/0.63        | ((sk_A) = (k1_relset_1 @ sk_A @ (k1_tarski @ sk_B) @ sk_D_2)))),
% 0.46/0.63      inference('sup-', [status(thm)], ['2', '3'])).
% 0.46/0.63  thf(zf_stmt_3, axiom,
% 0.46/0.63    (![B:$i,A:$i]:
% 0.46/0.63     ( ( ( ( B ) = ( k1_xboole_0 ) ) => ( ( A ) = ( k1_xboole_0 ) ) ) =>
% 0.46/0.63       ( zip_tseitin_1 @ B @ A ) ))).
% 0.46/0.63  thf('5', plain,
% 0.46/0.63      (![X45 : $i, X46 : $i]:
% 0.46/0.63         ((zip_tseitin_1 @ X45 @ X46) | ((X45) = (k1_xboole_0)))),
% 0.46/0.63      inference('cnf', [status(esa)], [zf_stmt_3])).
% 0.46/0.63  thf(t2_xboole_1, axiom, (![A:$i]: ( r1_tarski @ k1_xboole_0 @ A ))).
% 0.46/0.63  thf('6', plain, (![X0 : $i]: (r1_tarski @ k1_xboole_0 @ X0)),
% 0.46/0.63      inference('cnf', [status(esa)], [t2_xboole_1])).
% 0.46/0.63  thf('7', plain,
% 0.46/0.63      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.46/0.63         ((r1_tarski @ X0 @ X1) | (zip_tseitin_1 @ X0 @ X2))),
% 0.46/0.63      inference('sup+', [status(thm)], ['5', '6'])).
% 0.46/0.63  thf('8', plain,
% 0.46/0.63      ((m1_subset_1 @ sk_D_2 @ 
% 0.46/0.63        (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ (k1_tarski @ sk_B))))),
% 0.46/0.63      inference('cnf', [status(esa)], [zf_stmt_1])).
% 0.46/0.63  thf(zf_stmt_4, type, zip_tseitin_2 : $i > $i > $i > $o).
% 0.46/0.63  thf(zf_stmt_5, type, zip_tseitin_1 : $i > $i > $o).
% 0.46/0.63  thf(zf_stmt_6, axiom,
% 0.46/0.63    (![A:$i,B:$i,C:$i]:
% 0.46/0.63     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.46/0.63       ( ( ( zip_tseitin_1 @ B @ A ) => ( zip_tseitin_2 @ C @ B @ A ) ) & 
% 0.46/0.63         ( ( ( B ) = ( k1_xboole_0 ) ) =>
% 0.46/0.63           ( ( ( A ) = ( k1_xboole_0 ) ) | 
% 0.46/0.63             ( ( v1_funct_2 @ C @ A @ B ) <=> ( ( C ) = ( k1_xboole_0 ) ) ) ) ) ) ))).
% 0.46/0.63  thf('9', plain,
% 0.46/0.63      (![X50 : $i, X51 : $i, X52 : $i]:
% 0.46/0.63         (~ (zip_tseitin_1 @ X50 @ X51)
% 0.46/0.63          | (zip_tseitin_2 @ X52 @ X50 @ X51)
% 0.46/0.63          | ~ (m1_subset_1 @ X52 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X51 @ X50))))),
% 0.46/0.63      inference('cnf', [status(esa)], [zf_stmt_6])).
% 0.46/0.63  thf('10', plain,
% 0.46/0.63      (((zip_tseitin_2 @ sk_D_2 @ (k1_tarski @ sk_B) @ sk_A)
% 0.46/0.63        | ~ (zip_tseitin_1 @ (k1_tarski @ sk_B) @ sk_A))),
% 0.46/0.63      inference('sup-', [status(thm)], ['8', '9'])).
% 0.46/0.63  thf('11', plain,
% 0.46/0.63      (![X0 : $i]:
% 0.46/0.63         ((r1_tarski @ (k1_tarski @ sk_B) @ X0)
% 0.46/0.63          | (zip_tseitin_2 @ sk_D_2 @ (k1_tarski @ sk_B) @ sk_A))),
% 0.46/0.63      inference('sup-', [status(thm)], ['7', '10'])).
% 0.46/0.63  thf(t69_enumset1, axiom,
% 0.46/0.63    (![A:$i]: ( ( k2_tarski @ A @ A ) = ( k1_tarski @ A ) ))).
% 0.46/0.63  thf('12', plain,
% 0.46/0.63      (![X13 : $i]: ((k2_tarski @ X13 @ X13) = (k1_tarski @ X13))),
% 0.46/0.63      inference('cnf', [status(esa)], [t69_enumset1])).
% 0.46/0.63  thf(t70_enumset1, axiom,
% 0.46/0.63    (![A:$i,B:$i]: ( ( k1_enumset1 @ A @ A @ B ) = ( k2_tarski @ A @ B ) ))).
% 0.46/0.63  thf('13', plain,
% 0.46/0.63      (![X14 : $i, X15 : $i]:
% 0.46/0.63         ((k1_enumset1 @ X14 @ X14 @ X15) = (k2_tarski @ X14 @ X15))),
% 0.46/0.63      inference('cnf', [status(esa)], [t70_enumset1])).
% 0.46/0.63  thf(zf_stmt_7, type, zip_tseitin_0 : $i > $i > $i > $i > $o).
% 0.46/0.63  thf(zf_stmt_8, axiom,
% 0.46/0.63    (![A:$i,B:$i,C:$i,D:$i]:
% 0.46/0.63     ( ( ( D ) = ( k1_enumset1 @ A @ B @ C ) ) <=>
% 0.46/0.63       ( ![E:$i]:
% 0.46/0.63         ( ( r2_hidden @ E @ D ) <=> ( ~( zip_tseitin_0 @ E @ C @ B @ A ) ) ) ) ))).
% 0.46/0.63  thf('14', plain,
% 0.46/0.63      (![X6 : $i, X7 : $i, X8 : $i, X9 : $i, X10 : $i]:
% 0.46/0.63         ((zip_tseitin_0 @ X6 @ X7 @ X8 @ X9)
% 0.46/0.63          | (r2_hidden @ X6 @ X10)
% 0.46/0.63          | ((X10) != (k1_enumset1 @ X9 @ X8 @ X7)))),
% 0.46/0.63      inference('cnf', [status(esa)], [zf_stmt_8])).
% 0.46/0.63  thf('15', plain,
% 0.46/0.63      (![X6 : $i, X7 : $i, X8 : $i, X9 : $i]:
% 0.46/0.63         ((r2_hidden @ X6 @ (k1_enumset1 @ X9 @ X8 @ X7))
% 0.46/0.63          | (zip_tseitin_0 @ X6 @ X7 @ X8 @ X9))),
% 0.46/0.63      inference('simplify', [status(thm)], ['14'])).
% 0.46/0.63  thf(t7_ordinal1, axiom,
% 0.46/0.63    (![A:$i,B:$i]: ( ~( ( r2_hidden @ A @ B ) & ( r1_tarski @ B @ A ) ) ))).
% 0.46/0.63  thf('16', plain,
% 0.46/0.63      (![X34 : $i, X35 : $i]:
% 0.46/0.63         (~ (r2_hidden @ X34 @ X35) | ~ (r1_tarski @ X35 @ X34))),
% 0.46/0.63      inference('cnf', [status(esa)], [t7_ordinal1])).
% 0.46/0.63  thf('17', plain,
% 0.46/0.63      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 0.46/0.63         ((zip_tseitin_0 @ X3 @ X0 @ X1 @ X2)
% 0.46/0.63          | ~ (r1_tarski @ (k1_enumset1 @ X2 @ X1 @ X0) @ X3))),
% 0.46/0.63      inference('sup-', [status(thm)], ['15', '16'])).
% 0.46/0.63  thf('18', plain,
% 0.46/0.63      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.46/0.63         (~ (r1_tarski @ (k2_tarski @ X1 @ X0) @ X2)
% 0.46/0.63          | (zip_tseitin_0 @ X2 @ X0 @ X1 @ X1))),
% 0.46/0.63      inference('sup-', [status(thm)], ['13', '17'])).
% 0.46/0.63  thf('19', plain,
% 0.46/0.63      (![X0 : $i, X1 : $i]:
% 0.46/0.63         (~ (r1_tarski @ (k1_tarski @ X0) @ X1)
% 0.46/0.63          | (zip_tseitin_0 @ X1 @ X0 @ X0 @ X0))),
% 0.46/0.63      inference('sup-', [status(thm)], ['12', '18'])).
% 0.46/0.63  thf('20', plain,
% 0.46/0.63      (![X0 : $i]:
% 0.46/0.63         ((zip_tseitin_2 @ sk_D_2 @ (k1_tarski @ sk_B) @ sk_A)
% 0.46/0.63          | (zip_tseitin_0 @ X0 @ sk_B @ sk_B @ sk_B))),
% 0.46/0.63      inference('sup-', [status(thm)], ['11', '19'])).
% 0.46/0.63  thf('21', plain,
% 0.46/0.63      (![X1 : $i, X2 : $i, X3 : $i, X4 : $i]:
% 0.46/0.63         (((X2) != (X1)) | ~ (zip_tseitin_0 @ X2 @ X3 @ X4 @ X1))),
% 0.46/0.63      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.46/0.63  thf('22', plain,
% 0.46/0.63      (![X1 : $i, X3 : $i, X4 : $i]: ~ (zip_tseitin_0 @ X1 @ X3 @ X4 @ X1)),
% 0.46/0.63      inference('simplify', [status(thm)], ['21'])).
% 0.46/0.63  thf('23', plain, ((zip_tseitin_2 @ sk_D_2 @ (k1_tarski @ sk_B) @ sk_A)),
% 0.46/0.63      inference('sup-', [status(thm)], ['20', '22'])).
% 0.46/0.63  thf('24', plain,
% 0.46/0.63      ((m1_subset_1 @ sk_D_2 @ 
% 0.46/0.63        (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ (k1_tarski @ sk_B))))),
% 0.46/0.63      inference('cnf', [status(esa)], [zf_stmt_1])).
% 0.46/0.63  thf(redefinition_k1_relset_1, axiom,
% 0.46/0.63    (![A:$i,B:$i,C:$i]:
% 0.46/0.63     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.46/0.63       ( ( k1_relset_1 @ A @ B @ C ) = ( k1_relat_1 @ C ) ) ))).
% 0.46/0.63  thf('25', plain,
% 0.46/0.63      (![X42 : $i, X43 : $i, X44 : $i]:
% 0.46/0.63         (((k1_relset_1 @ X43 @ X44 @ X42) = (k1_relat_1 @ X42))
% 0.46/0.63          | ~ (m1_subset_1 @ X42 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X43 @ X44))))),
% 0.46/0.63      inference('cnf', [status(esa)], [redefinition_k1_relset_1])).
% 0.46/0.63  thf('26', plain,
% 0.46/0.63      (((k1_relset_1 @ sk_A @ (k1_tarski @ sk_B) @ sk_D_2)
% 0.46/0.63         = (k1_relat_1 @ sk_D_2))),
% 0.46/0.63      inference('sup-', [status(thm)], ['24', '25'])).
% 0.46/0.63  thf('27', plain, (((sk_A) = (k1_relat_1 @ sk_D_2))),
% 0.46/0.63      inference('demod', [status(thm)], ['4', '23', '26'])).
% 0.46/0.63  thf(d5_funct_1, axiom,
% 0.46/0.63    (![A:$i]:
% 0.46/0.63     ( ( ( v1_relat_1 @ A ) & ( v1_funct_1 @ A ) ) =>
% 0.46/0.63       ( ![B:$i]:
% 0.46/0.63         ( ( ( B ) = ( k2_relat_1 @ A ) ) <=>
% 0.46/0.63           ( ![C:$i]:
% 0.46/0.63             ( ( r2_hidden @ C @ B ) <=>
% 0.46/0.63               ( ?[D:$i]:
% 0.46/0.63                 ( ( ( C ) = ( k1_funct_1 @ A @ D ) ) & 
% 0.46/0.63                   ( r2_hidden @ D @ ( k1_relat_1 @ A ) ) ) ) ) ) ) ) ))).
% 0.46/0.63  thf('28', plain,
% 0.46/0.63      (![X28 : $i, X30 : $i, X32 : $i, X33 : $i]:
% 0.46/0.63         (((X30) != (k2_relat_1 @ X28))
% 0.46/0.63          | (r2_hidden @ X32 @ X30)
% 0.46/0.63          | ~ (r2_hidden @ X33 @ (k1_relat_1 @ X28))
% 0.46/0.63          | ((X32) != (k1_funct_1 @ X28 @ X33))
% 0.46/0.63          | ~ (v1_funct_1 @ X28)
% 0.46/0.63          | ~ (v1_relat_1 @ X28))),
% 0.46/0.63      inference('cnf', [status(esa)], [d5_funct_1])).
% 0.46/0.63  thf('29', plain,
% 0.46/0.63      (![X28 : $i, X33 : $i]:
% 0.46/0.63         (~ (v1_relat_1 @ X28)
% 0.46/0.63          | ~ (v1_funct_1 @ X28)
% 0.46/0.63          | ~ (r2_hidden @ X33 @ (k1_relat_1 @ X28))
% 0.46/0.63          | (r2_hidden @ (k1_funct_1 @ X28 @ X33) @ (k2_relat_1 @ X28)))),
% 0.46/0.63      inference('simplify', [status(thm)], ['28'])).
% 0.46/0.63  thf('30', plain,
% 0.46/0.63      (![X0 : $i]:
% 0.46/0.63         (~ (r2_hidden @ X0 @ sk_A)
% 0.46/0.63          | (r2_hidden @ (k1_funct_1 @ sk_D_2 @ X0) @ (k2_relat_1 @ sk_D_2))
% 0.46/0.63          | ~ (v1_funct_1 @ sk_D_2)
% 0.46/0.63          | ~ (v1_relat_1 @ sk_D_2))),
% 0.46/0.63      inference('sup-', [status(thm)], ['27', '29'])).
% 0.46/0.63  thf('31', plain, ((v1_funct_1 @ sk_D_2)),
% 0.46/0.63      inference('cnf', [status(esa)], [zf_stmt_1])).
% 0.46/0.63  thf('32', plain,
% 0.46/0.63      ((m1_subset_1 @ sk_D_2 @ 
% 0.46/0.63        (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ (k1_tarski @ sk_B))))),
% 0.46/0.63      inference('cnf', [status(esa)], [zf_stmt_1])).
% 0.46/0.63  thf(cc1_relset_1, axiom,
% 0.46/0.63    (![A:$i,B:$i,C:$i]:
% 0.46/0.63     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.46/0.63       ( v1_relat_1 @ C ) ))).
% 0.46/0.63  thf('33', plain,
% 0.46/0.63      (![X36 : $i, X37 : $i, X38 : $i]:
% 0.46/0.63         ((v1_relat_1 @ X36)
% 0.46/0.63          | ~ (m1_subset_1 @ X36 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X37 @ X38))))),
% 0.46/0.63      inference('cnf', [status(esa)], [cc1_relset_1])).
% 0.46/0.63  thf('34', plain, ((v1_relat_1 @ sk_D_2)),
% 0.46/0.63      inference('sup-', [status(thm)], ['32', '33'])).
% 0.46/0.63  thf('35', plain,
% 0.46/0.63      (![X0 : $i]:
% 0.46/0.63         (~ (r2_hidden @ X0 @ sk_A)
% 0.46/0.63          | (r2_hidden @ (k1_funct_1 @ sk_D_2 @ X0) @ (k2_relat_1 @ sk_D_2)))),
% 0.46/0.63      inference('demod', [status(thm)], ['30', '31', '34'])).
% 0.46/0.63  thf('36', plain,
% 0.46/0.63      ((r2_hidden @ (k1_funct_1 @ sk_D_2 @ sk_C_1) @ (k2_relat_1 @ sk_D_2))),
% 0.46/0.63      inference('sup-', [status(thm)], ['1', '35'])).
% 0.46/0.63  thf('37', plain,
% 0.46/0.63      ((m1_subset_1 @ sk_D_2 @ 
% 0.46/0.63        (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ (k1_tarski @ sk_B))))),
% 0.46/0.63      inference('cnf', [status(esa)], [zf_stmt_1])).
% 0.46/0.63  thf(cc2_relset_1, axiom,
% 0.46/0.63    (![A:$i,B:$i,C:$i]:
% 0.46/0.63     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.46/0.63       ( ( v4_relat_1 @ C @ A ) & ( v5_relat_1 @ C @ B ) ) ))).
% 0.46/0.63  thf('38', plain,
% 0.46/0.63      (![X39 : $i, X40 : $i, X41 : $i]:
% 0.46/0.63         ((v5_relat_1 @ X39 @ X41)
% 0.46/0.63          | ~ (m1_subset_1 @ X39 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X40 @ X41))))),
% 0.46/0.63      inference('cnf', [status(esa)], [cc2_relset_1])).
% 0.46/0.63  thf('39', plain, ((v5_relat_1 @ sk_D_2 @ (k1_tarski @ sk_B))),
% 0.46/0.63      inference('sup-', [status(thm)], ['37', '38'])).
% 0.46/0.63  thf(d19_relat_1, axiom,
% 0.46/0.63    (![A:$i,B:$i]:
% 0.46/0.63     ( ( v1_relat_1 @ B ) =>
% 0.46/0.63       ( ( v5_relat_1 @ B @ A ) <=> ( r1_tarski @ ( k2_relat_1 @ B ) @ A ) ) ))).
% 0.46/0.63  thf('40', plain,
% 0.46/0.63      (![X25 : $i, X26 : $i]:
% 0.46/0.63         (~ (v5_relat_1 @ X25 @ X26)
% 0.46/0.63          | (r1_tarski @ (k2_relat_1 @ X25) @ X26)
% 0.46/0.63          | ~ (v1_relat_1 @ X25))),
% 0.46/0.63      inference('cnf', [status(esa)], [d19_relat_1])).
% 0.46/0.63  thf('41', plain,
% 0.46/0.63      ((~ (v1_relat_1 @ sk_D_2)
% 0.46/0.63        | (r1_tarski @ (k2_relat_1 @ sk_D_2) @ (k1_tarski @ sk_B)))),
% 0.46/0.63      inference('sup-', [status(thm)], ['39', '40'])).
% 0.46/0.63  thf('42', plain, ((v1_relat_1 @ sk_D_2)),
% 0.46/0.63      inference('sup-', [status(thm)], ['32', '33'])).
% 0.46/0.63  thf('43', plain, ((r1_tarski @ (k2_relat_1 @ sk_D_2) @ (k1_tarski @ sk_B))),
% 0.46/0.63      inference('demod', [status(thm)], ['41', '42'])).
% 0.46/0.63  thf(t3_subset, axiom,
% 0.46/0.63    (![A:$i,B:$i]:
% 0.46/0.63     ( ( m1_subset_1 @ A @ ( k1_zfmisc_1 @ B ) ) <=> ( r1_tarski @ A @ B ) ))).
% 0.46/0.63  thf('44', plain,
% 0.46/0.63      (![X22 : $i, X24 : $i]:
% 0.46/0.63         ((m1_subset_1 @ X22 @ (k1_zfmisc_1 @ X24)) | ~ (r1_tarski @ X22 @ X24))),
% 0.46/0.63      inference('cnf', [status(esa)], [t3_subset])).
% 0.46/0.63  thf('45', plain,
% 0.46/0.63      ((m1_subset_1 @ (k2_relat_1 @ sk_D_2) @ 
% 0.46/0.63        (k1_zfmisc_1 @ (k1_tarski @ sk_B)))),
% 0.46/0.63      inference('sup-', [status(thm)], ['43', '44'])).
% 0.46/0.63  thf(l3_subset_1, axiom,
% 0.46/0.63    (![A:$i,B:$i]:
% 0.46/0.63     ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) ) =>
% 0.46/0.63       ( ![C:$i]: ( ( r2_hidden @ C @ B ) => ( r2_hidden @ C @ A ) ) ) ))).
% 0.46/0.63  thf('46', plain,
% 0.46/0.63      (![X19 : $i, X20 : $i, X21 : $i]:
% 0.46/0.63         (~ (r2_hidden @ X19 @ X20)
% 0.46/0.63          | (r2_hidden @ X19 @ X21)
% 0.46/0.63          | ~ (m1_subset_1 @ X20 @ (k1_zfmisc_1 @ X21)))),
% 0.46/0.63      inference('cnf', [status(esa)], [l3_subset_1])).
% 0.46/0.63  thf('47', plain,
% 0.46/0.63      (![X0 : $i]:
% 0.46/0.63         ((r2_hidden @ X0 @ (k1_tarski @ sk_B))
% 0.46/0.63          | ~ (r2_hidden @ X0 @ (k2_relat_1 @ sk_D_2)))),
% 0.46/0.63      inference('sup-', [status(thm)], ['45', '46'])).
% 0.46/0.63  thf('48', plain,
% 0.46/0.63      ((r2_hidden @ (k1_funct_1 @ sk_D_2 @ sk_C_1) @ (k1_tarski @ sk_B))),
% 0.46/0.63      inference('sup-', [status(thm)], ['36', '47'])).
% 0.46/0.63  thf('49', plain,
% 0.46/0.63      (![X13 : $i]: ((k2_tarski @ X13 @ X13) = (k1_tarski @ X13))),
% 0.46/0.63      inference('cnf', [status(esa)], [t69_enumset1])).
% 0.46/0.63  thf('50', plain,
% 0.46/0.63      (![X14 : $i, X15 : $i]:
% 0.46/0.63         ((k1_enumset1 @ X14 @ X14 @ X15) = (k2_tarski @ X14 @ X15))),
% 0.46/0.63      inference('cnf', [status(esa)], [t70_enumset1])).
% 0.46/0.63  thf('51', plain,
% 0.46/0.63      (![X7 : $i, X8 : $i, X9 : $i, X10 : $i, X11 : $i]:
% 0.46/0.63         (~ (r2_hidden @ X11 @ X10)
% 0.46/0.63          | ~ (zip_tseitin_0 @ X11 @ X7 @ X8 @ X9)
% 0.46/0.63          | ((X10) != (k1_enumset1 @ X9 @ X8 @ X7)))),
% 0.46/0.63      inference('cnf', [status(esa)], [zf_stmt_8])).
% 0.46/0.63  thf('52', plain,
% 0.46/0.63      (![X7 : $i, X8 : $i, X9 : $i, X11 : $i]:
% 0.46/0.63         (~ (zip_tseitin_0 @ X11 @ X7 @ X8 @ X9)
% 0.46/0.63          | ~ (r2_hidden @ X11 @ (k1_enumset1 @ X9 @ X8 @ X7)))),
% 0.46/0.63      inference('simplify', [status(thm)], ['51'])).
% 0.46/0.63  thf('53', plain,
% 0.46/0.63      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.46/0.63         (~ (r2_hidden @ X2 @ (k2_tarski @ X1 @ X0))
% 0.46/0.63          | ~ (zip_tseitin_0 @ X2 @ X0 @ X1 @ X1))),
% 0.46/0.63      inference('sup-', [status(thm)], ['50', '52'])).
% 0.46/0.63  thf('54', plain,
% 0.46/0.63      (![X0 : $i, X1 : $i]:
% 0.46/0.63         (~ (r2_hidden @ X1 @ (k1_tarski @ X0))
% 0.46/0.63          | ~ (zip_tseitin_0 @ X1 @ X0 @ X0 @ X0))),
% 0.46/0.63      inference('sup-', [status(thm)], ['49', '53'])).
% 0.46/0.63  thf('55', plain,
% 0.46/0.63      (~ (zip_tseitin_0 @ (k1_funct_1 @ sk_D_2 @ sk_C_1) @ sk_B @ sk_B @ sk_B)),
% 0.46/0.63      inference('sup-', [status(thm)], ['48', '54'])).
% 0.46/0.63  thf('56', plain,
% 0.46/0.63      ((((k1_funct_1 @ sk_D_2 @ sk_C_1) = (sk_B))
% 0.46/0.63        | ((k1_funct_1 @ sk_D_2 @ sk_C_1) = (sk_B))
% 0.46/0.63        | ((k1_funct_1 @ sk_D_2 @ sk_C_1) = (sk_B)))),
% 0.46/0.63      inference('sup-', [status(thm)], ['0', '55'])).
% 0.46/0.63  thf('57', plain, (((k1_funct_1 @ sk_D_2 @ sk_C_1) = (sk_B))),
% 0.46/0.63      inference('simplify', [status(thm)], ['56'])).
% 0.46/0.63  thf('58', plain, (((k1_funct_1 @ sk_D_2 @ sk_C_1) != (sk_B))),
% 0.46/0.63      inference('cnf', [status(esa)], [zf_stmt_1])).
% 0.46/0.63  thf('59', plain, ($false),
% 0.46/0.63      inference('simplify_reflect-', [status(thm)], ['57', '58'])).
% 0.46/0.63  
% 0.46/0.63  % SZS output end Refutation
% 0.46/0.63  
% 0.46/0.64  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
