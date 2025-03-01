%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.DoJLwr23UV

% Computer   : n021.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:52:50 EST 2020

% Result     : Theorem 1.79s
% Output     : Refutation 1.79s
% Verified   : 
% Statistics : Number of formulae       :  144 ( 653 expanded)
%              Number of leaves         :   44 ( 198 expanded)
%              Depth                    :   16
%              Number of atoms          :  970 (7241 expanded)
%              Number of equality atoms :   73 ( 237 expanded)
%              Maximal formula depth    :   13 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(sk_C_type,type,(
    sk_C: $i > $i > $i )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(k1_relat_1_type,type,(
    k1_relat_1: $i > $i )).

thf(v1_funct_1_type,type,(
    v1_funct_1: $i > $o )).

thf(v1_funct_2_type,type,(
    v1_funct_2: $i > $i > $i > $o )).

thf(k2_relat_1_type,type,(
    k2_relat_1: $i > $i )).

thf(zip_tseitin_4_type,type,(
    zip_tseitin_4: $i > $i > $o )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(zip_tseitin_0_type,type,(
    zip_tseitin_0: $i > $o )).

thf(zip_tseitin_1_type,type,(
    zip_tseitin_1: $i > $i > $i > $o )).

thf(zip_tseitin_3_type,type,(
    zip_tseitin_3: $i > $i > $o )).

thf(zip_tseitin_5_type,type,(
    zip_tseitin_5: $i > $i > $i > $o )).

thf(k1_relset_1_type,type,(
    k1_relset_1: $i > $i > $i > $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(k2_zfmisc_1_type,type,(
    k2_zfmisc_1: $i > $i > $i )).

thf(zip_tseitin_2_type,type,(
    zip_tseitin_2: $i > $i > $i > $o )).

thf(t4_funct_2,conjecture,(
    ! [A: $i,B: $i] :
      ( ( ( v1_relat_1 @ B )
        & ( v1_funct_1 @ B ) )
     => ( ( r1_tarski @ ( k2_relat_1 @ B ) @ A )
       => ( ( v1_funct_1 @ B )
          & ( v1_funct_2 @ B @ ( k1_relat_1 @ B ) @ A )
          & ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( k1_relat_1 @ B ) @ A ) ) ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i] :
        ( ( ( v1_relat_1 @ B )
          & ( v1_funct_1 @ B ) )
       => ( ( r1_tarski @ ( k2_relat_1 @ B ) @ A )
         => ( ( v1_funct_1 @ B )
            & ( v1_funct_2 @ B @ ( k1_relat_1 @ B ) @ A )
            & ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( k1_relat_1 @ B ) @ A ) ) ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t4_funct_2])).

thf('0',plain,
    ( ~ ( v1_funct_1 @ sk_B )
    | ~ ( v1_funct_2 @ sk_B @ ( k1_relat_1 @ sk_B ) @ sk_A )
    | ~ ( m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( k1_relat_1 @ sk_B ) @ sk_A ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,
    ( ~ ( v1_funct_2 @ sk_B @ ( k1_relat_1 @ sk_B ) @ sk_A )
   <= ~ ( v1_funct_2 @ sk_B @ ( k1_relat_1 @ sk_B ) @ sk_A ) ),
    inference(split,[status(esa)],['0'])).

thf('2',plain,(
    v1_funct_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('3',plain,
    ( ~ ( v1_funct_1 @ sk_B )
   <= ~ ( v1_funct_1 @ sk_B ) ),
    inference(split,[status(esa)],['0'])).

thf('4',plain,(
    v1_funct_1 @ sk_B ),
    inference('sup-',[status(thm)],['2','3'])).

thf('5',plain,(
    r1_tarski @ ( k2_relat_1 @ sk_B ) @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(d10_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( A = B )
    <=> ( ( r1_tarski @ A @ B )
        & ( r1_tarski @ B @ A ) ) ) )).

thf('6',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r1_tarski @ X0 @ X1 )
      | ( X0 != X1 ) ) ),
    inference(cnf,[status(esa)],[d10_xboole_0])).

thf('7',plain,(
    ! [X1: $i] :
      ( r1_tarski @ X1 @ X1 ) ),
    inference(simplify,[status(thm)],['6'])).

thf(t11_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( v1_relat_1 @ C )
     => ( ( ( r1_tarski @ ( k1_relat_1 @ C ) @ A )
          & ( r1_tarski @ ( k2_relat_1 @ C ) @ B ) )
       => ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) ) )).

thf('8',plain,(
    ! [X35: $i,X36: $i,X37: $i] :
      ( ~ ( r1_tarski @ ( k1_relat_1 @ X35 ) @ X36 )
      | ~ ( r1_tarski @ ( k2_relat_1 @ X35 ) @ X37 )
      | ( m1_subset_1 @ X35 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X36 @ X37 ) ) )
      | ~ ( v1_relat_1 @ X35 ) ) ),
    inference(cnf,[status(esa)],[t11_relset_1])).

thf('9',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v1_relat_1 @ X0 )
      | ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( k1_relat_1 @ X0 ) @ X1 ) ) )
      | ~ ( r1_tarski @ ( k2_relat_1 @ X0 ) @ X1 ) ) ),
    inference('sup-',[status(thm)],['7','8'])).

thf('10',plain,
    ( ( m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( k1_relat_1 @ sk_B ) @ sk_A ) ) )
    | ~ ( v1_relat_1 @ sk_B ) ),
    inference('sup-',[status(thm)],['5','9'])).

thf('11',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('12',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( k1_relat_1 @ sk_B ) @ sk_A ) ) ),
    inference(demod,[status(thm)],['10','11'])).

thf('13',plain,
    ( ~ ( m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( k1_relat_1 @ sk_B ) @ sk_A ) ) )
   <= ~ ( m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( k1_relat_1 @ sk_B ) @ sk_A ) ) ) ),
    inference(split,[status(esa)],['0'])).

thf('14',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( k1_relat_1 @ sk_B ) @ sk_A ) ) ),
    inference('sup-',[status(thm)],['12','13'])).

thf('15',plain,
    ( ~ ( v1_funct_2 @ sk_B @ ( k1_relat_1 @ sk_B ) @ sk_A )
    | ~ ( m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( k1_relat_1 @ sk_B ) @ sk_A ) ) )
    | ~ ( v1_funct_1 @ sk_B ) ),
    inference(split,[status(esa)],['0'])).

thf('16',plain,(
    ~ ( v1_funct_2 @ sk_B @ ( k1_relat_1 @ sk_B ) @ sk_A ) ),
    inference('sat_resolution*',[status(thm)],['4','14','15'])).

thf('17',plain,(
    ~ ( v1_funct_2 @ sk_B @ ( k1_relat_1 @ sk_B ) @ sk_A ) ),
    inference(simpl_trail,[status(thm)],['1','16'])).

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
     => ( zip_tseitin_4 @ B @ A ) ) )).

thf('18',plain,(
    ! [X38: $i,X39: $i] :
      ( ( zip_tseitin_4 @ X38 @ X39 )
      | ( X38 = k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_1])).

thf('19',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( k1_relat_1 @ sk_B ) @ sk_A ) ) ),
    inference(demod,[status(thm)],['10','11'])).

thf(zf_stmt_2,type,(
    zip_tseitin_5: $i > $i > $i > $o )).

thf(zf_stmt_3,axiom,(
    ! [C: $i,B: $i,A: $i] :
      ( ( zip_tseitin_5 @ C @ B @ A )
     => ( ( v1_funct_2 @ C @ A @ B )
      <=> ( A
          = ( k1_relset_1 @ A @ B @ C ) ) ) ) )).

thf(zf_stmt_4,type,(
    zip_tseitin_4: $i > $i > $o )).

thf(zf_stmt_5,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( ( zip_tseitin_4 @ B @ A )
         => ( zip_tseitin_5 @ C @ B @ A ) )
        & ( ( B = k1_xboole_0 )
         => ( ( A = k1_xboole_0 )
            | ( ( v1_funct_2 @ C @ A @ B )
            <=> ( C = k1_xboole_0 ) ) ) ) ) ) )).

thf('20',plain,(
    ! [X43: $i,X44: $i,X45: $i] :
      ( ~ ( zip_tseitin_4 @ X43 @ X44 )
      | ( zip_tseitin_5 @ X45 @ X43 @ X44 )
      | ~ ( m1_subset_1 @ X45 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X44 @ X43 ) ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_5])).

thf('21',plain,
    ( ( zip_tseitin_5 @ sk_B @ sk_A @ ( k1_relat_1 @ sk_B ) )
    | ~ ( zip_tseitin_4 @ sk_A @ ( k1_relat_1 @ sk_B ) ) ),
    inference('sup-',[status(thm)],['19','20'])).

thf('22',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( k1_relat_1 @ sk_B ) @ sk_A ) ) ),
    inference(demod,[status(thm)],['10','11'])).

thf(redefinition_k1_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( k1_relset_1 @ A @ B @ C )
        = ( k1_relat_1 @ C ) ) ) )).

thf('23',plain,(
    ! [X32: $i,X33: $i,X34: $i] :
      ( ( ( k1_relset_1 @ X33 @ X34 @ X32 )
        = ( k1_relat_1 @ X32 ) )
      | ~ ( m1_subset_1 @ X32 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X33 @ X34 ) ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k1_relset_1])).

thf('24',plain,
    ( ( k1_relset_1 @ ( k1_relat_1 @ sk_B ) @ sk_A @ sk_B )
    = ( k1_relat_1 @ sk_B ) ),
    inference('sup-',[status(thm)],['22','23'])).

thf('25',plain,(
    ! [X40: $i,X41: $i,X42: $i] :
      ( ( X40
       != ( k1_relset_1 @ X40 @ X41 @ X42 ) )
      | ( v1_funct_2 @ X42 @ X40 @ X41 )
      | ~ ( zip_tseitin_5 @ X42 @ X41 @ X40 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_3])).

thf('26',plain,
    ( ( ( k1_relat_1 @ sk_B )
     != ( k1_relat_1 @ sk_B ) )
    | ~ ( zip_tseitin_5 @ sk_B @ sk_A @ ( k1_relat_1 @ sk_B ) )
    | ( v1_funct_2 @ sk_B @ ( k1_relat_1 @ sk_B ) @ sk_A ) ),
    inference('sup-',[status(thm)],['24','25'])).

thf('27',plain,
    ( ( v1_funct_2 @ sk_B @ ( k1_relat_1 @ sk_B ) @ sk_A )
    | ~ ( zip_tseitin_5 @ sk_B @ sk_A @ ( k1_relat_1 @ sk_B ) ) ),
    inference(simplify,[status(thm)],['26'])).

thf('28',plain,(
    ~ ( v1_funct_2 @ sk_B @ ( k1_relat_1 @ sk_B ) @ sk_A ) ),
    inference(simpl_trail,[status(thm)],['1','16'])).

thf('29',plain,(
    ~ ( zip_tseitin_5 @ sk_B @ sk_A @ ( k1_relat_1 @ sk_B ) ) ),
    inference(clc,[status(thm)],['27','28'])).

thf('30',plain,(
    ~ ( zip_tseitin_4 @ sk_A @ ( k1_relat_1 @ sk_B ) ) ),
    inference(clc,[status(thm)],['21','29'])).

thf('31',plain,(
    sk_A = k1_xboole_0 ),
    inference('sup-',[status(thm)],['18','30'])).

thf('32',plain,(
    ~ ( v1_funct_2 @ sk_B @ ( k1_relat_1 @ sk_B ) @ k1_xboole_0 ) ),
    inference(demod,[status(thm)],['17','31'])).

thf('33',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( k1_relat_1 @ sk_B ) @ sk_A ) ) ),
    inference(demod,[status(thm)],['10','11'])).

thf(t3_subset,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ A @ ( k1_zfmisc_1 @ B ) )
    <=> ( r1_tarski @ A @ B ) ) )).

thf('34',plain,(
    ! [X11: $i,X12: $i] :
      ( ( r1_tarski @ X11 @ X12 )
      | ~ ( m1_subset_1 @ X11 @ ( k1_zfmisc_1 @ X12 ) ) ) ),
    inference(cnf,[status(esa)],[t3_subset])).

thf('35',plain,(
    r1_tarski @ sk_B @ ( k2_zfmisc_1 @ ( k1_relat_1 @ sk_B ) @ sk_A ) ),
    inference('sup-',[status(thm)],['33','34'])).

thf('36',plain,(
    ! [X0: $i,X2: $i] :
      ( ( X0 = X2 )
      | ~ ( r1_tarski @ X2 @ X0 )
      | ~ ( r1_tarski @ X0 @ X2 ) ) ),
    inference(cnf,[status(esa)],[d10_xboole_0])).

thf('37',plain,
    ( ~ ( r1_tarski @ ( k2_zfmisc_1 @ ( k1_relat_1 @ sk_B ) @ sk_A ) @ sk_B )
    | ( ( k2_zfmisc_1 @ ( k1_relat_1 @ sk_B ) @ sk_A )
      = sk_B ) ),
    inference('sup-',[status(thm)],['35','36'])).

thf('38',plain,(
    sk_A = k1_xboole_0 ),
    inference('sup-',[status(thm)],['18','30'])).

thf(t113_zfmisc_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( k2_zfmisc_1 @ A @ B )
        = k1_xboole_0 )
    <=> ( ( A = k1_xboole_0 )
        | ( B = k1_xboole_0 ) ) ) )).

thf('39',plain,(
    ! [X9: $i,X10: $i] :
      ( ( ( k2_zfmisc_1 @ X9 @ X10 )
        = k1_xboole_0 )
      | ( X10 != k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[t113_zfmisc_1])).

thf('40',plain,(
    ! [X9: $i] :
      ( ( k2_zfmisc_1 @ X9 @ k1_xboole_0 )
      = k1_xboole_0 ) ),
    inference(simplify,[status(thm)],['39'])).

thf('41',plain,(
    sk_A = k1_xboole_0 ),
    inference('sup-',[status(thm)],['18','30'])).

thf('42',plain,(
    ! [X9: $i] :
      ( ( k2_zfmisc_1 @ X9 @ k1_xboole_0 )
      = k1_xboole_0 ) ),
    inference(simplify,[status(thm)],['39'])).

thf('43',plain,
    ( ~ ( r1_tarski @ k1_xboole_0 @ sk_B )
    | ( k1_xboole_0 = sk_B ) ),
    inference(demod,[status(thm)],['37','38','40','41','42'])).

thf(t18_funct_1,axiom,(
    ! [A: $i,B: $i] :
      ~ ( ! [C: $i] :
            ( ( ( v1_funct_1 @ C )
              & ( v1_relat_1 @ C ) )
           => ~ ( ( r1_tarski @ ( k2_relat_1 @ C ) @ A )
                & ( B
                  = ( k1_relat_1 @ C ) ) ) )
        & ~ ( ( B != k1_xboole_0 )
            & ( A = k1_xboole_0 ) ) ) )).

thf(zf_stmt_6,axiom,(
    ! [C: $i,B: $i,A: $i] :
      ( ( ( zip_tseitin_0 @ C )
       => ~ ( zip_tseitin_1 @ C @ B @ A ) )
     => ( zip_tseitin_2 @ C @ B @ A ) ) )).

thf('44',plain,(
    ! [X25: $i,X26: $i,X27: $i] :
      ( ( zip_tseitin_2 @ X25 @ X26 @ X27 )
      | ( zip_tseitin_1 @ X25 @ X26 @ X27 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_6])).

thf('45',plain,(
    ! [X25: $i,X26: $i,X27: $i] :
      ( ( zip_tseitin_2 @ X25 @ X26 @ X27 )
      | ( zip_tseitin_0 @ X25 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_6])).

thf(zf_stmt_7,type,(
    zip_tseitin_3: $i > $i > $o )).

thf(zf_stmt_8,axiom,(
    ! [B: $i,A: $i] :
      ( ( zip_tseitin_3 @ B @ A )
     => ( ( A = k1_xboole_0 )
        & ( B != k1_xboole_0 ) ) ) )).

thf(zf_stmt_9,type,(
    zip_tseitin_2: $i > $i > $i > $o )).

thf(zf_stmt_10,type,(
    zip_tseitin_1: $i > $i > $i > $o )).

thf(zf_stmt_11,axiom,(
    ! [C: $i,B: $i,A: $i] :
      ( ( zip_tseitin_1 @ C @ B @ A )
     => ( ( B
          = ( k1_relat_1 @ C ) )
        & ( r1_tarski @ ( k2_relat_1 @ C ) @ A ) ) ) )).

thf(zf_stmt_12,type,(
    zip_tseitin_0: $i > $o )).

thf(zf_stmt_13,axiom,(
    ! [C: $i] :
      ( ( zip_tseitin_0 @ C )
     => ( ( v1_relat_1 @ C )
        & ( v1_funct_1 @ C ) ) ) )).

thf(zf_stmt_14,axiom,(
    ! [A: $i,B: $i] :
      ~ ( ~ ( zip_tseitin_3 @ B @ A )
        & ! [C: $i] :
            ( zip_tseitin_2 @ C @ B @ A ) ) )).

thf('46',plain,(
    ! [X30: $i,X31: $i] :
      ( ( zip_tseitin_3 @ X30 @ X31 )
      | ~ ( zip_tseitin_2 @ ( sk_C @ X30 @ X31 ) @ X30 @ X31 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_14])).

thf('47',plain,(
    ! [X0: $i,X1: $i] :
      ( ( zip_tseitin_0 @ ( sk_C @ X1 @ X0 ) )
      | ( zip_tseitin_3 @ X1 @ X0 ) ) ),
    inference('sup-',[status(thm)],['45','46'])).

thf('48',plain,(
    ! [X21: $i] :
      ( ( v1_relat_1 @ X21 )
      | ~ ( zip_tseitin_0 @ X21 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_13])).

thf('49',plain,(
    ! [X25: $i,X26: $i,X27: $i] :
      ( ( zip_tseitin_2 @ X25 @ X26 @ X27 )
      | ( zip_tseitin_1 @ X25 @ X26 @ X27 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_6])).

thf('50',plain,(
    ! [X30: $i,X31: $i] :
      ( ( zip_tseitin_3 @ X30 @ X31 )
      | ~ ( zip_tseitin_2 @ ( sk_C @ X30 @ X31 ) @ X30 @ X31 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_14])).

thf('51',plain,(
    ! [X0: $i,X1: $i] :
      ( ( zip_tseitin_1 @ ( sk_C @ X1 @ X0 ) @ X1 @ X0 )
      | ( zip_tseitin_3 @ X1 @ X0 ) ) ),
    inference('sup-',[status(thm)],['49','50'])).

thf('52',plain,(
    ! [X22: $i,X23: $i,X24: $i] :
      ( ( X23
        = ( k1_relat_1 @ X22 ) )
      | ~ ( zip_tseitin_1 @ X22 @ X23 @ X24 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_11])).

thf('53',plain,(
    ! [X0: $i,X1: $i] :
      ( ( zip_tseitin_3 @ X1 @ X0 )
      | ( X1
        = ( k1_relat_1 @ ( sk_C @ X1 @ X0 ) ) ) ) ),
    inference('sup-',[status(thm)],['51','52'])).

thf(t64_relat_1,axiom,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ( ( ( ( k1_relat_1 @ A )
            = k1_xboole_0 )
          | ( ( k2_relat_1 @ A )
            = k1_xboole_0 ) )
       => ( A = k1_xboole_0 ) ) ) )).

thf('54',plain,(
    ! [X20: $i] :
      ( ( ( k1_relat_1 @ X20 )
       != k1_xboole_0 )
      | ( X20 = k1_xboole_0 )
      | ~ ( v1_relat_1 @ X20 ) ) ),
    inference(cnf,[status(esa)],[t64_relat_1])).

thf('55',plain,(
    ! [X0: $i,X1: $i] :
      ( ( X0 != k1_xboole_0 )
      | ( zip_tseitin_3 @ X0 @ X1 )
      | ~ ( v1_relat_1 @ ( sk_C @ X0 @ X1 ) )
      | ( ( sk_C @ X0 @ X1 )
        = k1_xboole_0 ) ) ),
    inference('sup-',[status(thm)],['53','54'])).

thf('56',plain,(
    ! [X1: $i] :
      ( ( ( sk_C @ k1_xboole_0 @ X1 )
        = k1_xboole_0 )
      | ~ ( v1_relat_1 @ ( sk_C @ k1_xboole_0 @ X1 ) )
      | ( zip_tseitin_3 @ k1_xboole_0 @ X1 ) ) ),
    inference(simplify,[status(thm)],['55'])).

thf('57',plain,(
    ! [X28: $i,X29: $i] :
      ( ( X29 != k1_xboole_0 )
      | ~ ( zip_tseitin_3 @ X29 @ X28 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_8])).

thf('58',plain,(
    ! [X28: $i] :
      ~ ( zip_tseitin_3 @ k1_xboole_0 @ X28 ) ),
    inference(simplify,[status(thm)],['57'])).

thf('59',plain,(
    ! [X1: $i] :
      ( ~ ( v1_relat_1 @ ( sk_C @ k1_xboole_0 @ X1 ) )
      | ( ( sk_C @ k1_xboole_0 @ X1 )
        = k1_xboole_0 ) ) ),
    inference(clc,[status(thm)],['56','58'])).

thf('60',plain,(
    ! [X0: $i] :
      ( ~ ( zip_tseitin_0 @ ( sk_C @ k1_xboole_0 @ X0 ) )
      | ( ( sk_C @ k1_xboole_0 @ X0 )
        = k1_xboole_0 ) ) ),
    inference('sup-',[status(thm)],['48','59'])).

thf('61',plain,(
    ! [X0: $i] :
      ( ( zip_tseitin_3 @ k1_xboole_0 @ X0 )
      | ( ( sk_C @ k1_xboole_0 @ X0 )
        = k1_xboole_0 ) ) ),
    inference('sup-',[status(thm)],['47','60'])).

thf('62',plain,(
    ! [X28: $i] :
      ~ ( zip_tseitin_3 @ k1_xboole_0 @ X28 ) ),
    inference(simplify,[status(thm)],['57'])).

thf('63',plain,(
    ! [X0: $i] :
      ( ( sk_C @ k1_xboole_0 @ X0 )
      = k1_xboole_0 ) ),
    inference(clc,[status(thm)],['61','62'])).

thf('64',plain,(
    ! [X30: $i,X31: $i] :
      ( ( zip_tseitin_3 @ X30 @ X31 )
      | ~ ( zip_tseitin_2 @ ( sk_C @ X30 @ X31 ) @ X30 @ X31 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_14])).

thf('65',plain,(
    ! [X0: $i] :
      ( ~ ( zip_tseitin_2 @ k1_xboole_0 @ k1_xboole_0 @ X0 )
      | ( zip_tseitin_3 @ k1_xboole_0 @ X0 ) ) ),
    inference('sup-',[status(thm)],['63','64'])).

thf('66',plain,(
    ! [X28: $i] :
      ~ ( zip_tseitin_3 @ k1_xboole_0 @ X28 ) ),
    inference(simplify,[status(thm)],['57'])).

thf('67',plain,(
    ! [X0: $i] :
      ~ ( zip_tseitin_2 @ k1_xboole_0 @ k1_xboole_0 @ X0 ) ),
    inference(clc,[status(thm)],['65','66'])).

thf('68',plain,(
    ! [X0: $i] :
      ( zip_tseitin_1 @ k1_xboole_0 @ k1_xboole_0 @ X0 ) ),
    inference('sup-',[status(thm)],['44','67'])).

thf('69',plain,(
    ! [X22: $i,X23: $i,X24: $i] :
      ( ( r1_tarski @ ( k2_relat_1 @ X22 ) @ X24 )
      | ~ ( zip_tseitin_1 @ X22 @ X23 @ X24 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_11])).

thf('70',plain,(
    ! [X0: $i] :
      ( r1_tarski @ ( k2_relat_1 @ k1_xboole_0 ) @ X0 ) ),
    inference('sup-',[status(thm)],['68','69'])).

thf(t60_relat_1,axiom,
    ( ( ( k2_relat_1 @ k1_xboole_0 )
      = k1_xboole_0 )
    & ( ( k1_relat_1 @ k1_xboole_0 )
      = k1_xboole_0 ) )).

thf('71',plain,
    ( ( k2_relat_1 @ k1_xboole_0 )
    = k1_xboole_0 ),
    inference(cnf,[status(esa)],[t60_relat_1])).

thf('72',plain,(
    ! [X0: $i] :
      ( r1_tarski @ k1_xboole_0 @ X0 ) ),
    inference(demod,[status(thm)],['70','71'])).

thf('73',plain,(
    k1_xboole_0 = sk_B ),
    inference(demod,[status(thm)],['43','72'])).

thf('74',plain,(
    k1_xboole_0 = sk_B ),
    inference(demod,[status(thm)],['43','72'])).

thf('75',plain,
    ( ( k1_relat_1 @ k1_xboole_0 )
    = k1_xboole_0 ),
    inference(cnf,[status(esa)],[t60_relat_1])).

thf('76',plain,(
    ! [X1: $i] :
      ( r1_tarski @ X1 @ X1 ) ),
    inference(simplify,[status(thm)],['6'])).

thf('77',plain,(
    ! [X11: $i,X13: $i] :
      ( ( m1_subset_1 @ X11 @ ( k1_zfmisc_1 @ X13 ) )
      | ~ ( r1_tarski @ X11 @ X13 ) ) ),
    inference(cnf,[status(esa)],[t3_subset])).

thf('78',plain,(
    ! [X0: $i] :
      ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ X0 ) ) ),
    inference('sup-',[status(thm)],['76','77'])).

thf('79',plain,(
    ! [X9: $i,X10: $i] :
      ( ( ( k2_zfmisc_1 @ X9 @ X10 )
        = k1_xboole_0 )
      | ( X9 != k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[t113_zfmisc_1])).

thf('80',plain,(
    ! [X10: $i] :
      ( ( k2_zfmisc_1 @ k1_xboole_0 @ X10 )
      = k1_xboole_0 ) ),
    inference(simplify,[status(thm)],['79'])).

thf('81',plain,(
    ! [X32: $i,X33: $i,X34: $i] :
      ( ( ( k1_relset_1 @ X33 @ X34 @ X32 )
        = ( k1_relat_1 @ X32 ) )
      | ~ ( m1_subset_1 @ X32 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X33 @ X34 ) ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k1_relset_1])).

thf('82',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( m1_subset_1 @ X1 @ ( k1_zfmisc_1 @ k1_xboole_0 ) )
      | ( ( k1_relset_1 @ k1_xboole_0 @ X0 @ X1 )
        = ( k1_relat_1 @ X1 ) ) ) ),
    inference('sup-',[status(thm)],['80','81'])).

thf('83',plain,(
    ! [X0: $i] :
      ( ( k1_relset_1 @ k1_xboole_0 @ X0 @ k1_xboole_0 )
      = ( k1_relat_1 @ k1_xboole_0 ) ) ),
    inference('sup-',[status(thm)],['78','82'])).

thf('84',plain,
    ( ( k1_relat_1 @ k1_xboole_0 )
    = k1_xboole_0 ),
    inference(cnf,[status(esa)],[t60_relat_1])).

thf('85',plain,(
    ! [X0: $i] :
      ( ( k1_relset_1 @ k1_xboole_0 @ X0 @ k1_xboole_0 )
      = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['83','84'])).

thf('86',plain,(
    ! [X40: $i,X41: $i,X42: $i] :
      ( ( X40
       != ( k1_relset_1 @ X40 @ X41 @ X42 ) )
      | ( v1_funct_2 @ X42 @ X40 @ X41 )
      | ~ ( zip_tseitin_5 @ X42 @ X41 @ X40 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_3])).

thf('87',plain,(
    ! [X0: $i] :
      ( ( k1_xboole_0 != k1_xboole_0 )
      | ~ ( zip_tseitin_5 @ k1_xboole_0 @ X0 @ k1_xboole_0 )
      | ( v1_funct_2 @ k1_xboole_0 @ k1_xboole_0 @ X0 ) ) ),
    inference('sup-',[status(thm)],['85','86'])).

thf('88',plain,(
    ! [X0: $i] :
      ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ X0 ) ) ),
    inference('sup-',[status(thm)],['76','77'])).

thf('89',plain,(
    ! [X10: $i] :
      ( ( k2_zfmisc_1 @ k1_xboole_0 @ X10 )
      = k1_xboole_0 ) ),
    inference(simplify,[status(thm)],['79'])).

thf('90',plain,(
    ! [X43: $i,X44: $i,X45: $i] :
      ( ~ ( zip_tseitin_4 @ X43 @ X44 )
      | ( zip_tseitin_5 @ X45 @ X43 @ X44 )
      | ~ ( m1_subset_1 @ X45 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X44 @ X43 ) ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_5])).

thf('91',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( m1_subset_1 @ X1 @ ( k1_zfmisc_1 @ k1_xboole_0 ) )
      | ( zip_tseitin_5 @ X1 @ X0 @ k1_xboole_0 )
      | ~ ( zip_tseitin_4 @ X0 @ k1_xboole_0 ) ) ),
    inference('sup-',[status(thm)],['89','90'])).

thf('92',plain,(
    ! [X38: $i,X39: $i] :
      ( ( zip_tseitin_4 @ X38 @ X39 )
      | ( X39 != k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_1])).

thf('93',plain,(
    ! [X38: $i] :
      ( zip_tseitin_4 @ X38 @ k1_xboole_0 ) ),
    inference(simplify,[status(thm)],['92'])).

thf('94',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( m1_subset_1 @ X1 @ ( k1_zfmisc_1 @ k1_xboole_0 ) )
      | ( zip_tseitin_5 @ X1 @ X0 @ k1_xboole_0 ) ) ),
    inference(demod,[status(thm)],['91','93'])).

thf('95',plain,(
    ! [X0: $i] :
      ( zip_tseitin_5 @ k1_xboole_0 @ X0 @ k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['88','94'])).

thf('96',plain,(
    ! [X0: $i] :
      ( ( k1_xboole_0 != k1_xboole_0 )
      | ( v1_funct_2 @ k1_xboole_0 @ k1_xboole_0 @ X0 ) ) ),
    inference(demod,[status(thm)],['87','95'])).

thf('97',plain,(
    ! [X0: $i] :
      ( v1_funct_2 @ k1_xboole_0 @ k1_xboole_0 @ X0 ) ),
    inference(simplify,[status(thm)],['96'])).

thf('98',plain,(
    $false ),
    inference(demod,[status(thm)],['32','73','74','75','97'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.DoJLwr23UV
% 0.13/0.34  % Computer   : n021.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 16:36:04 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running portfolio for 600 s
% 0.13/0.34  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.13/0.34  % Number of cores: 8
% 0.13/0.35  % Python version: Python 3.6.8
% 0.13/0.35  % Running in FO mode
% 1.79/2.02  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 1.79/2.02  % Solved by: fo/fo7.sh
% 1.79/2.02  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 1.79/2.02  % done 1616 iterations in 1.562s
% 1.79/2.02  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 1.79/2.02  % SZS output start Refutation
% 1.79/2.02  thf(sk_C_type, type, sk_C: $i > $i > $i).
% 1.79/2.02  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 1.79/2.02  thf(k1_relat_1_type, type, k1_relat_1: $i > $i).
% 1.79/2.02  thf(v1_funct_1_type, type, v1_funct_1: $i > $o).
% 1.79/2.02  thf(v1_funct_2_type, type, v1_funct_2: $i > $i > $i > $o).
% 1.79/2.02  thf(k2_relat_1_type, type, k2_relat_1: $i > $i).
% 1.79/2.02  thf(zip_tseitin_4_type, type, zip_tseitin_4: $i > $i > $o).
% 1.79/2.02  thf(sk_A_type, type, sk_A: $i).
% 1.79/2.02  thf(sk_B_type, type, sk_B: $i).
% 1.79/2.02  thf(zip_tseitin_0_type, type, zip_tseitin_0: $i > $o).
% 1.79/2.02  thf(zip_tseitin_1_type, type, zip_tseitin_1: $i > $i > $i > $o).
% 1.79/2.02  thf(zip_tseitin_3_type, type, zip_tseitin_3: $i > $i > $o).
% 1.79/2.02  thf(zip_tseitin_5_type, type, zip_tseitin_5: $i > $i > $i > $o).
% 1.79/2.02  thf(k1_relset_1_type, type, k1_relset_1: $i > $i > $i > $i).
% 1.79/2.02  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 1.79/2.02  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 1.79/2.02  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 1.79/2.02  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 1.79/2.02  thf(k2_zfmisc_1_type, type, k2_zfmisc_1: $i > $i > $i).
% 1.79/2.02  thf(zip_tseitin_2_type, type, zip_tseitin_2: $i > $i > $i > $o).
% 1.79/2.02  thf(t4_funct_2, conjecture,
% 1.79/2.02    (![A:$i,B:$i]:
% 1.79/2.02     ( ( ( v1_relat_1 @ B ) & ( v1_funct_1 @ B ) ) =>
% 1.79/2.02       ( ( r1_tarski @ ( k2_relat_1 @ B ) @ A ) =>
% 1.79/2.02         ( ( v1_funct_1 @ B ) & ( v1_funct_2 @ B @ ( k1_relat_1 @ B ) @ A ) & 
% 1.79/2.02           ( m1_subset_1 @
% 1.79/2.02             B @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( k1_relat_1 @ B ) @ A ) ) ) ) ) ))).
% 1.79/2.02  thf(zf_stmt_0, negated_conjecture,
% 1.79/2.02    (~( ![A:$i,B:$i]:
% 1.79/2.02        ( ( ( v1_relat_1 @ B ) & ( v1_funct_1 @ B ) ) =>
% 1.79/2.02          ( ( r1_tarski @ ( k2_relat_1 @ B ) @ A ) =>
% 1.79/2.02            ( ( v1_funct_1 @ B ) & 
% 1.79/2.02              ( v1_funct_2 @ B @ ( k1_relat_1 @ B ) @ A ) & 
% 1.79/2.02              ( m1_subset_1 @
% 1.79/2.02                B @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( k1_relat_1 @ B ) @ A ) ) ) ) ) ) )),
% 1.79/2.02    inference('cnf.neg', [status(esa)], [t4_funct_2])).
% 1.79/2.02  thf('0', plain,
% 1.79/2.02      ((~ (v1_funct_1 @ sk_B)
% 1.79/2.02        | ~ (v1_funct_2 @ sk_B @ (k1_relat_1 @ sk_B) @ sk_A)
% 1.79/2.02        | ~ (m1_subset_1 @ sk_B @ 
% 1.79/2.02             (k1_zfmisc_1 @ (k2_zfmisc_1 @ (k1_relat_1 @ sk_B) @ sk_A))))),
% 1.79/2.02      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.79/2.02  thf('1', plain,
% 1.79/2.02      ((~ (v1_funct_2 @ sk_B @ (k1_relat_1 @ sk_B) @ sk_A))
% 1.79/2.02         <= (~ ((v1_funct_2 @ sk_B @ (k1_relat_1 @ sk_B) @ sk_A)))),
% 1.79/2.02      inference('split', [status(esa)], ['0'])).
% 1.79/2.02  thf('2', plain, ((v1_funct_1 @ sk_B)),
% 1.79/2.02      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.79/2.02  thf('3', plain, ((~ (v1_funct_1 @ sk_B)) <= (~ ((v1_funct_1 @ sk_B)))),
% 1.79/2.02      inference('split', [status(esa)], ['0'])).
% 1.79/2.02  thf('4', plain, (((v1_funct_1 @ sk_B))),
% 1.79/2.02      inference('sup-', [status(thm)], ['2', '3'])).
% 1.79/2.02  thf('5', plain, ((r1_tarski @ (k2_relat_1 @ sk_B) @ sk_A)),
% 1.79/2.02      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.79/2.02  thf(d10_xboole_0, axiom,
% 1.79/2.02    (![A:$i,B:$i]:
% 1.79/2.02     ( ( ( A ) = ( B ) ) <=> ( ( r1_tarski @ A @ B ) & ( r1_tarski @ B @ A ) ) ))).
% 1.79/2.02  thf('6', plain,
% 1.79/2.02      (![X0 : $i, X1 : $i]: ((r1_tarski @ X0 @ X1) | ((X0) != (X1)))),
% 1.79/2.02      inference('cnf', [status(esa)], [d10_xboole_0])).
% 1.79/2.02  thf('7', plain, (![X1 : $i]: (r1_tarski @ X1 @ X1)),
% 1.79/2.02      inference('simplify', [status(thm)], ['6'])).
% 1.79/2.02  thf(t11_relset_1, axiom,
% 1.79/2.02    (![A:$i,B:$i,C:$i]:
% 1.79/2.02     ( ( v1_relat_1 @ C ) =>
% 1.79/2.02       ( ( ( r1_tarski @ ( k1_relat_1 @ C ) @ A ) & 
% 1.79/2.02           ( r1_tarski @ ( k2_relat_1 @ C ) @ B ) ) =>
% 1.79/2.02         ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) ))).
% 1.79/2.02  thf('8', plain,
% 1.79/2.02      (![X35 : $i, X36 : $i, X37 : $i]:
% 1.79/2.02         (~ (r1_tarski @ (k1_relat_1 @ X35) @ X36)
% 1.79/2.02          | ~ (r1_tarski @ (k2_relat_1 @ X35) @ X37)
% 1.79/2.02          | (m1_subset_1 @ X35 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X36 @ X37)))
% 1.79/2.02          | ~ (v1_relat_1 @ X35))),
% 1.79/2.02      inference('cnf', [status(esa)], [t11_relset_1])).
% 1.79/2.02  thf('9', plain,
% 1.79/2.02      (![X0 : $i, X1 : $i]:
% 1.79/2.02         (~ (v1_relat_1 @ X0)
% 1.79/2.02          | (m1_subset_1 @ X0 @ 
% 1.79/2.02             (k1_zfmisc_1 @ (k2_zfmisc_1 @ (k1_relat_1 @ X0) @ X1)))
% 1.79/2.02          | ~ (r1_tarski @ (k2_relat_1 @ X0) @ X1))),
% 1.79/2.02      inference('sup-', [status(thm)], ['7', '8'])).
% 1.79/2.02  thf('10', plain,
% 1.79/2.02      (((m1_subset_1 @ sk_B @ 
% 1.79/2.02         (k1_zfmisc_1 @ (k2_zfmisc_1 @ (k1_relat_1 @ sk_B) @ sk_A)))
% 1.79/2.02        | ~ (v1_relat_1 @ sk_B))),
% 1.79/2.02      inference('sup-', [status(thm)], ['5', '9'])).
% 1.79/2.02  thf('11', plain, ((v1_relat_1 @ sk_B)),
% 1.79/2.02      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.79/2.02  thf('12', plain,
% 1.79/2.02      ((m1_subset_1 @ sk_B @ 
% 1.79/2.02        (k1_zfmisc_1 @ (k2_zfmisc_1 @ (k1_relat_1 @ sk_B) @ sk_A)))),
% 1.79/2.02      inference('demod', [status(thm)], ['10', '11'])).
% 1.79/2.02  thf('13', plain,
% 1.79/2.02      ((~ (m1_subset_1 @ sk_B @ 
% 1.79/2.02           (k1_zfmisc_1 @ (k2_zfmisc_1 @ (k1_relat_1 @ sk_B) @ sk_A))))
% 1.79/2.02         <= (~
% 1.79/2.02             ((m1_subset_1 @ sk_B @ 
% 1.79/2.02               (k1_zfmisc_1 @ (k2_zfmisc_1 @ (k1_relat_1 @ sk_B) @ sk_A)))))),
% 1.79/2.02      inference('split', [status(esa)], ['0'])).
% 1.79/2.02  thf('14', plain,
% 1.79/2.02      (((m1_subset_1 @ sk_B @ 
% 1.79/2.02         (k1_zfmisc_1 @ (k2_zfmisc_1 @ (k1_relat_1 @ sk_B) @ sk_A))))),
% 1.79/2.02      inference('sup-', [status(thm)], ['12', '13'])).
% 1.79/2.02  thf('15', plain,
% 1.79/2.02      (~ ((v1_funct_2 @ sk_B @ (k1_relat_1 @ sk_B) @ sk_A)) | 
% 1.79/2.02       ~
% 1.79/2.02       ((m1_subset_1 @ sk_B @ 
% 1.79/2.02         (k1_zfmisc_1 @ (k2_zfmisc_1 @ (k1_relat_1 @ sk_B) @ sk_A)))) | 
% 1.79/2.02       ~ ((v1_funct_1 @ sk_B))),
% 1.79/2.02      inference('split', [status(esa)], ['0'])).
% 1.79/2.02  thf('16', plain, (~ ((v1_funct_2 @ sk_B @ (k1_relat_1 @ sk_B) @ sk_A))),
% 1.79/2.02      inference('sat_resolution*', [status(thm)], ['4', '14', '15'])).
% 1.79/2.02  thf('17', plain, (~ (v1_funct_2 @ sk_B @ (k1_relat_1 @ sk_B) @ sk_A)),
% 1.79/2.02      inference('simpl_trail', [status(thm)], ['1', '16'])).
% 1.79/2.02  thf(d1_funct_2, axiom,
% 1.79/2.02    (![A:$i,B:$i,C:$i]:
% 1.79/2.02     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 1.79/2.02       ( ( ( ( B ) = ( k1_xboole_0 ) ) =>
% 1.79/2.02           ( ( ( v1_funct_2 @ C @ A @ B ) <=> ( ( C ) = ( k1_xboole_0 ) ) ) | 
% 1.79/2.02             ( ( A ) = ( k1_xboole_0 ) ) ) ) & 
% 1.79/2.02         ( ( ( ( B ) = ( k1_xboole_0 ) ) => ( ( A ) = ( k1_xboole_0 ) ) ) =>
% 1.79/2.02           ( ( v1_funct_2 @ C @ A @ B ) <=>
% 1.79/2.02             ( ( A ) = ( k1_relset_1 @ A @ B @ C ) ) ) ) ) ))).
% 1.79/2.02  thf(zf_stmt_1, axiom,
% 1.79/2.02    (![B:$i,A:$i]:
% 1.79/2.02     ( ( ( ( B ) = ( k1_xboole_0 ) ) => ( ( A ) = ( k1_xboole_0 ) ) ) =>
% 1.79/2.02       ( zip_tseitin_4 @ B @ A ) ))).
% 1.79/2.02  thf('18', plain,
% 1.79/2.02      (![X38 : $i, X39 : $i]:
% 1.79/2.02         ((zip_tseitin_4 @ X38 @ X39) | ((X38) = (k1_xboole_0)))),
% 1.79/2.02      inference('cnf', [status(esa)], [zf_stmt_1])).
% 1.79/2.02  thf('19', plain,
% 1.79/2.02      ((m1_subset_1 @ sk_B @ 
% 1.79/2.02        (k1_zfmisc_1 @ (k2_zfmisc_1 @ (k1_relat_1 @ sk_B) @ sk_A)))),
% 1.79/2.02      inference('demod', [status(thm)], ['10', '11'])).
% 1.79/2.02  thf(zf_stmt_2, type, zip_tseitin_5 : $i > $i > $i > $o).
% 1.79/2.02  thf(zf_stmt_3, axiom,
% 1.79/2.02    (![C:$i,B:$i,A:$i]:
% 1.79/2.02     ( ( zip_tseitin_5 @ C @ B @ A ) =>
% 1.79/2.02       ( ( v1_funct_2 @ C @ A @ B ) <=> ( ( A ) = ( k1_relset_1 @ A @ B @ C ) ) ) ))).
% 1.79/2.02  thf(zf_stmt_4, type, zip_tseitin_4 : $i > $i > $o).
% 1.79/2.02  thf(zf_stmt_5, axiom,
% 1.79/2.02    (![A:$i,B:$i,C:$i]:
% 1.79/2.02     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 1.79/2.02       ( ( ( zip_tseitin_4 @ B @ A ) => ( zip_tseitin_5 @ C @ B @ A ) ) & 
% 1.79/2.02         ( ( ( B ) = ( k1_xboole_0 ) ) =>
% 1.79/2.02           ( ( ( A ) = ( k1_xboole_0 ) ) | 
% 1.79/2.02             ( ( v1_funct_2 @ C @ A @ B ) <=> ( ( C ) = ( k1_xboole_0 ) ) ) ) ) ) ))).
% 1.79/2.02  thf('20', plain,
% 1.79/2.02      (![X43 : $i, X44 : $i, X45 : $i]:
% 1.79/2.02         (~ (zip_tseitin_4 @ X43 @ X44)
% 1.79/2.02          | (zip_tseitin_5 @ X45 @ X43 @ X44)
% 1.79/2.02          | ~ (m1_subset_1 @ X45 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X44 @ X43))))),
% 1.79/2.02      inference('cnf', [status(esa)], [zf_stmt_5])).
% 1.79/2.02  thf('21', plain,
% 1.79/2.02      (((zip_tseitin_5 @ sk_B @ sk_A @ (k1_relat_1 @ sk_B))
% 1.79/2.02        | ~ (zip_tseitin_4 @ sk_A @ (k1_relat_1 @ sk_B)))),
% 1.79/2.02      inference('sup-', [status(thm)], ['19', '20'])).
% 1.79/2.02  thf('22', plain,
% 1.79/2.02      ((m1_subset_1 @ sk_B @ 
% 1.79/2.02        (k1_zfmisc_1 @ (k2_zfmisc_1 @ (k1_relat_1 @ sk_B) @ sk_A)))),
% 1.79/2.02      inference('demod', [status(thm)], ['10', '11'])).
% 1.79/2.02  thf(redefinition_k1_relset_1, axiom,
% 1.79/2.02    (![A:$i,B:$i,C:$i]:
% 1.79/2.02     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 1.79/2.02       ( ( k1_relset_1 @ A @ B @ C ) = ( k1_relat_1 @ C ) ) ))).
% 1.79/2.02  thf('23', plain,
% 1.79/2.02      (![X32 : $i, X33 : $i, X34 : $i]:
% 1.79/2.02         (((k1_relset_1 @ X33 @ X34 @ X32) = (k1_relat_1 @ X32))
% 1.79/2.02          | ~ (m1_subset_1 @ X32 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X33 @ X34))))),
% 1.79/2.02      inference('cnf', [status(esa)], [redefinition_k1_relset_1])).
% 1.79/2.02  thf('24', plain,
% 1.79/2.02      (((k1_relset_1 @ (k1_relat_1 @ sk_B) @ sk_A @ sk_B) = (k1_relat_1 @ sk_B))),
% 1.79/2.02      inference('sup-', [status(thm)], ['22', '23'])).
% 1.79/2.02  thf('25', plain,
% 1.79/2.02      (![X40 : $i, X41 : $i, X42 : $i]:
% 1.79/2.02         (((X40) != (k1_relset_1 @ X40 @ X41 @ X42))
% 1.79/2.02          | (v1_funct_2 @ X42 @ X40 @ X41)
% 1.79/2.02          | ~ (zip_tseitin_5 @ X42 @ X41 @ X40))),
% 1.79/2.02      inference('cnf', [status(esa)], [zf_stmt_3])).
% 1.79/2.02  thf('26', plain,
% 1.79/2.02      ((((k1_relat_1 @ sk_B) != (k1_relat_1 @ sk_B))
% 1.79/2.02        | ~ (zip_tseitin_5 @ sk_B @ sk_A @ (k1_relat_1 @ sk_B))
% 1.79/2.02        | (v1_funct_2 @ sk_B @ (k1_relat_1 @ sk_B) @ sk_A))),
% 1.79/2.02      inference('sup-', [status(thm)], ['24', '25'])).
% 1.79/2.02  thf('27', plain,
% 1.79/2.02      (((v1_funct_2 @ sk_B @ (k1_relat_1 @ sk_B) @ sk_A)
% 1.79/2.02        | ~ (zip_tseitin_5 @ sk_B @ sk_A @ (k1_relat_1 @ sk_B)))),
% 1.79/2.02      inference('simplify', [status(thm)], ['26'])).
% 1.79/2.02  thf('28', plain, (~ (v1_funct_2 @ sk_B @ (k1_relat_1 @ sk_B) @ sk_A)),
% 1.79/2.02      inference('simpl_trail', [status(thm)], ['1', '16'])).
% 1.79/2.02  thf('29', plain, (~ (zip_tseitin_5 @ sk_B @ sk_A @ (k1_relat_1 @ sk_B))),
% 1.79/2.02      inference('clc', [status(thm)], ['27', '28'])).
% 1.79/2.02  thf('30', plain, (~ (zip_tseitin_4 @ sk_A @ (k1_relat_1 @ sk_B))),
% 1.79/2.02      inference('clc', [status(thm)], ['21', '29'])).
% 1.79/2.02  thf('31', plain, (((sk_A) = (k1_xboole_0))),
% 1.79/2.02      inference('sup-', [status(thm)], ['18', '30'])).
% 1.79/2.02  thf('32', plain, (~ (v1_funct_2 @ sk_B @ (k1_relat_1 @ sk_B) @ k1_xboole_0)),
% 1.79/2.02      inference('demod', [status(thm)], ['17', '31'])).
% 1.79/2.02  thf('33', plain,
% 1.79/2.02      ((m1_subset_1 @ sk_B @ 
% 1.79/2.02        (k1_zfmisc_1 @ (k2_zfmisc_1 @ (k1_relat_1 @ sk_B) @ sk_A)))),
% 1.79/2.02      inference('demod', [status(thm)], ['10', '11'])).
% 1.79/2.02  thf(t3_subset, axiom,
% 1.79/2.02    (![A:$i,B:$i]:
% 1.79/2.02     ( ( m1_subset_1 @ A @ ( k1_zfmisc_1 @ B ) ) <=> ( r1_tarski @ A @ B ) ))).
% 1.79/2.02  thf('34', plain,
% 1.79/2.02      (![X11 : $i, X12 : $i]:
% 1.79/2.02         ((r1_tarski @ X11 @ X12) | ~ (m1_subset_1 @ X11 @ (k1_zfmisc_1 @ X12)))),
% 1.79/2.02      inference('cnf', [status(esa)], [t3_subset])).
% 1.79/2.02  thf('35', plain,
% 1.79/2.02      ((r1_tarski @ sk_B @ (k2_zfmisc_1 @ (k1_relat_1 @ sk_B) @ sk_A))),
% 1.79/2.02      inference('sup-', [status(thm)], ['33', '34'])).
% 1.79/2.02  thf('36', plain,
% 1.79/2.02      (![X0 : $i, X2 : $i]:
% 1.79/2.02         (((X0) = (X2)) | ~ (r1_tarski @ X2 @ X0) | ~ (r1_tarski @ X0 @ X2))),
% 1.79/2.02      inference('cnf', [status(esa)], [d10_xboole_0])).
% 1.79/2.02  thf('37', plain,
% 1.79/2.02      ((~ (r1_tarski @ (k2_zfmisc_1 @ (k1_relat_1 @ sk_B) @ sk_A) @ sk_B)
% 1.79/2.02        | ((k2_zfmisc_1 @ (k1_relat_1 @ sk_B) @ sk_A) = (sk_B)))),
% 1.79/2.02      inference('sup-', [status(thm)], ['35', '36'])).
% 1.79/2.02  thf('38', plain, (((sk_A) = (k1_xboole_0))),
% 1.79/2.02      inference('sup-', [status(thm)], ['18', '30'])).
% 1.79/2.02  thf(t113_zfmisc_1, axiom,
% 1.79/2.02    (![A:$i,B:$i]:
% 1.79/2.02     ( ( ( k2_zfmisc_1 @ A @ B ) = ( k1_xboole_0 ) ) <=>
% 1.79/2.02       ( ( ( A ) = ( k1_xboole_0 ) ) | ( ( B ) = ( k1_xboole_0 ) ) ) ))).
% 1.79/2.02  thf('39', plain,
% 1.79/2.02      (![X9 : $i, X10 : $i]:
% 1.79/2.02         (((k2_zfmisc_1 @ X9 @ X10) = (k1_xboole_0)) | ((X10) != (k1_xboole_0)))),
% 1.79/2.02      inference('cnf', [status(esa)], [t113_zfmisc_1])).
% 1.79/2.02  thf('40', plain,
% 1.79/2.02      (![X9 : $i]: ((k2_zfmisc_1 @ X9 @ k1_xboole_0) = (k1_xboole_0))),
% 1.79/2.02      inference('simplify', [status(thm)], ['39'])).
% 1.79/2.02  thf('41', plain, (((sk_A) = (k1_xboole_0))),
% 1.79/2.02      inference('sup-', [status(thm)], ['18', '30'])).
% 1.79/2.02  thf('42', plain,
% 1.79/2.02      (![X9 : $i]: ((k2_zfmisc_1 @ X9 @ k1_xboole_0) = (k1_xboole_0))),
% 1.79/2.02      inference('simplify', [status(thm)], ['39'])).
% 1.79/2.02  thf('43', plain,
% 1.79/2.02      ((~ (r1_tarski @ k1_xboole_0 @ sk_B) | ((k1_xboole_0) = (sk_B)))),
% 1.79/2.02      inference('demod', [status(thm)], ['37', '38', '40', '41', '42'])).
% 1.79/2.02  thf(t18_funct_1, axiom,
% 1.79/2.02    (![A:$i,B:$i]:
% 1.79/2.02     ( ~( ( ![C:$i]:
% 1.79/2.02            ( ( ( v1_funct_1 @ C ) & ( v1_relat_1 @ C ) ) =>
% 1.79/2.02              ( ~( ( r1_tarski @ ( k2_relat_1 @ C ) @ A ) & 
% 1.79/2.02                   ( ( B ) = ( k1_relat_1 @ C ) ) ) ) ) ) & 
% 1.79/2.02          ( ~( ( ( B ) != ( k1_xboole_0 ) ) & ( ( A ) = ( k1_xboole_0 ) ) ) ) ) ))).
% 1.79/2.02  thf(zf_stmt_6, axiom,
% 1.79/2.02    (![C:$i,B:$i,A:$i]:
% 1.79/2.02     ( ( ( zip_tseitin_0 @ C ) => ( ~( zip_tseitin_1 @ C @ B @ A ) ) ) =>
% 1.79/2.02       ( zip_tseitin_2 @ C @ B @ A ) ))).
% 1.79/2.02  thf('44', plain,
% 1.79/2.02      (![X25 : $i, X26 : $i, X27 : $i]:
% 1.79/2.02         ((zip_tseitin_2 @ X25 @ X26 @ X27) | (zip_tseitin_1 @ X25 @ X26 @ X27))),
% 1.79/2.02      inference('cnf', [status(esa)], [zf_stmt_6])).
% 1.79/2.02  thf('45', plain,
% 1.79/2.02      (![X25 : $i, X26 : $i, X27 : $i]:
% 1.79/2.02         ((zip_tseitin_2 @ X25 @ X26 @ X27) | (zip_tseitin_0 @ X25))),
% 1.79/2.02      inference('cnf', [status(esa)], [zf_stmt_6])).
% 1.79/2.02  thf(zf_stmt_7, type, zip_tseitin_3 : $i > $i > $o).
% 1.79/2.02  thf(zf_stmt_8, axiom,
% 1.79/2.02    (![B:$i,A:$i]:
% 1.79/2.02     ( ( zip_tseitin_3 @ B @ A ) =>
% 1.79/2.02       ( ( ( A ) = ( k1_xboole_0 ) ) & ( ( B ) != ( k1_xboole_0 ) ) ) ))).
% 1.79/2.02  thf(zf_stmt_9, type, zip_tseitin_2 : $i > $i > $i > $o).
% 1.79/2.02  thf(zf_stmt_10, type, zip_tseitin_1 : $i > $i > $i > $o).
% 1.79/2.02  thf(zf_stmt_11, axiom,
% 1.79/2.02    (![C:$i,B:$i,A:$i]:
% 1.79/2.02     ( ( zip_tseitin_1 @ C @ B @ A ) =>
% 1.79/2.02       ( ( ( B ) = ( k1_relat_1 @ C ) ) & 
% 1.79/2.02         ( r1_tarski @ ( k2_relat_1 @ C ) @ A ) ) ))).
% 1.79/2.02  thf(zf_stmt_12, type, zip_tseitin_0 : $i > $o).
% 1.79/2.02  thf(zf_stmt_13, axiom,
% 1.79/2.02    (![C:$i]:
% 1.79/2.02     ( ( zip_tseitin_0 @ C ) => ( ( v1_relat_1 @ C ) & ( v1_funct_1 @ C ) ) ))).
% 1.79/2.02  thf(zf_stmt_14, axiom,
% 1.79/2.02    (![A:$i,B:$i]:
% 1.79/2.02     ( ~( ( ~( zip_tseitin_3 @ B @ A ) ) & 
% 1.79/2.02          ( ![C:$i]: ( zip_tseitin_2 @ C @ B @ A ) ) ) ))).
% 1.79/2.02  thf('46', plain,
% 1.79/2.02      (![X30 : $i, X31 : $i]:
% 1.79/2.02         ((zip_tseitin_3 @ X30 @ X31)
% 1.79/2.02          | ~ (zip_tseitin_2 @ (sk_C @ X30 @ X31) @ X30 @ X31))),
% 1.79/2.02      inference('cnf', [status(esa)], [zf_stmt_14])).
% 1.79/2.02  thf('47', plain,
% 1.79/2.02      (![X0 : $i, X1 : $i]:
% 1.79/2.02         ((zip_tseitin_0 @ (sk_C @ X1 @ X0)) | (zip_tseitin_3 @ X1 @ X0))),
% 1.79/2.02      inference('sup-', [status(thm)], ['45', '46'])).
% 1.79/2.02  thf('48', plain,
% 1.79/2.02      (![X21 : $i]: ((v1_relat_1 @ X21) | ~ (zip_tseitin_0 @ X21))),
% 1.79/2.02      inference('cnf', [status(esa)], [zf_stmt_13])).
% 1.79/2.02  thf('49', plain,
% 1.79/2.02      (![X25 : $i, X26 : $i, X27 : $i]:
% 1.79/2.02         ((zip_tseitin_2 @ X25 @ X26 @ X27) | (zip_tseitin_1 @ X25 @ X26 @ X27))),
% 1.79/2.02      inference('cnf', [status(esa)], [zf_stmt_6])).
% 1.79/2.02  thf('50', plain,
% 1.79/2.02      (![X30 : $i, X31 : $i]:
% 1.79/2.02         ((zip_tseitin_3 @ X30 @ X31)
% 1.79/2.02          | ~ (zip_tseitin_2 @ (sk_C @ X30 @ X31) @ X30 @ X31))),
% 1.79/2.02      inference('cnf', [status(esa)], [zf_stmt_14])).
% 1.79/2.02  thf('51', plain,
% 1.79/2.02      (![X0 : $i, X1 : $i]:
% 1.79/2.02         ((zip_tseitin_1 @ (sk_C @ X1 @ X0) @ X1 @ X0)
% 1.79/2.02          | (zip_tseitin_3 @ X1 @ X0))),
% 1.79/2.02      inference('sup-', [status(thm)], ['49', '50'])).
% 1.79/2.02  thf('52', plain,
% 1.79/2.02      (![X22 : $i, X23 : $i, X24 : $i]:
% 1.79/2.02         (((X23) = (k1_relat_1 @ X22)) | ~ (zip_tseitin_1 @ X22 @ X23 @ X24))),
% 1.79/2.02      inference('cnf', [status(esa)], [zf_stmt_11])).
% 1.79/2.02  thf('53', plain,
% 1.79/2.02      (![X0 : $i, X1 : $i]:
% 1.79/2.02         ((zip_tseitin_3 @ X1 @ X0) | ((X1) = (k1_relat_1 @ (sk_C @ X1 @ X0))))),
% 1.79/2.02      inference('sup-', [status(thm)], ['51', '52'])).
% 1.79/2.02  thf(t64_relat_1, axiom,
% 1.79/2.02    (![A:$i]:
% 1.79/2.02     ( ( v1_relat_1 @ A ) =>
% 1.79/2.02       ( ( ( ( k1_relat_1 @ A ) = ( k1_xboole_0 ) ) | 
% 1.79/2.02           ( ( k2_relat_1 @ A ) = ( k1_xboole_0 ) ) ) =>
% 1.79/2.02         ( ( A ) = ( k1_xboole_0 ) ) ) ))).
% 1.79/2.02  thf('54', plain,
% 1.79/2.02      (![X20 : $i]:
% 1.79/2.02         (((k1_relat_1 @ X20) != (k1_xboole_0))
% 1.79/2.02          | ((X20) = (k1_xboole_0))
% 1.79/2.02          | ~ (v1_relat_1 @ X20))),
% 1.79/2.02      inference('cnf', [status(esa)], [t64_relat_1])).
% 1.79/2.02  thf('55', plain,
% 1.79/2.02      (![X0 : $i, X1 : $i]:
% 1.79/2.02         (((X0) != (k1_xboole_0))
% 1.79/2.02          | (zip_tseitin_3 @ X0 @ X1)
% 1.79/2.02          | ~ (v1_relat_1 @ (sk_C @ X0 @ X1))
% 1.79/2.02          | ((sk_C @ X0 @ X1) = (k1_xboole_0)))),
% 1.79/2.02      inference('sup-', [status(thm)], ['53', '54'])).
% 1.79/2.02  thf('56', plain,
% 1.79/2.02      (![X1 : $i]:
% 1.79/2.02         (((sk_C @ k1_xboole_0 @ X1) = (k1_xboole_0))
% 1.79/2.02          | ~ (v1_relat_1 @ (sk_C @ k1_xboole_0 @ X1))
% 1.79/2.02          | (zip_tseitin_3 @ k1_xboole_0 @ X1))),
% 1.79/2.02      inference('simplify', [status(thm)], ['55'])).
% 1.79/2.02  thf('57', plain,
% 1.79/2.02      (![X28 : $i, X29 : $i]:
% 1.79/2.02         (((X29) != (k1_xboole_0)) | ~ (zip_tseitin_3 @ X29 @ X28))),
% 1.79/2.02      inference('cnf', [status(esa)], [zf_stmt_8])).
% 1.79/2.02  thf('58', plain, (![X28 : $i]: ~ (zip_tseitin_3 @ k1_xboole_0 @ X28)),
% 1.79/2.02      inference('simplify', [status(thm)], ['57'])).
% 1.79/2.02  thf('59', plain,
% 1.79/2.02      (![X1 : $i]:
% 1.79/2.02         (~ (v1_relat_1 @ (sk_C @ k1_xboole_0 @ X1))
% 1.79/2.02          | ((sk_C @ k1_xboole_0 @ X1) = (k1_xboole_0)))),
% 1.79/2.02      inference('clc', [status(thm)], ['56', '58'])).
% 1.79/2.02  thf('60', plain,
% 1.79/2.02      (![X0 : $i]:
% 1.79/2.02         (~ (zip_tseitin_0 @ (sk_C @ k1_xboole_0 @ X0))
% 1.79/2.02          | ((sk_C @ k1_xboole_0 @ X0) = (k1_xboole_0)))),
% 1.79/2.02      inference('sup-', [status(thm)], ['48', '59'])).
% 1.79/2.02  thf('61', plain,
% 1.79/2.02      (![X0 : $i]:
% 1.79/2.02         ((zip_tseitin_3 @ k1_xboole_0 @ X0)
% 1.79/2.02          | ((sk_C @ k1_xboole_0 @ X0) = (k1_xboole_0)))),
% 1.79/2.02      inference('sup-', [status(thm)], ['47', '60'])).
% 1.79/2.02  thf('62', plain, (![X28 : $i]: ~ (zip_tseitin_3 @ k1_xboole_0 @ X28)),
% 1.79/2.02      inference('simplify', [status(thm)], ['57'])).
% 1.79/2.02  thf('63', plain, (![X0 : $i]: ((sk_C @ k1_xboole_0 @ X0) = (k1_xboole_0))),
% 1.79/2.02      inference('clc', [status(thm)], ['61', '62'])).
% 1.79/2.02  thf('64', plain,
% 1.79/2.02      (![X30 : $i, X31 : $i]:
% 1.79/2.02         ((zip_tseitin_3 @ X30 @ X31)
% 1.79/2.02          | ~ (zip_tseitin_2 @ (sk_C @ X30 @ X31) @ X30 @ X31))),
% 1.79/2.02      inference('cnf', [status(esa)], [zf_stmt_14])).
% 1.79/2.02  thf('65', plain,
% 1.79/2.02      (![X0 : $i]:
% 1.79/2.02         (~ (zip_tseitin_2 @ k1_xboole_0 @ k1_xboole_0 @ X0)
% 1.79/2.02          | (zip_tseitin_3 @ k1_xboole_0 @ X0))),
% 1.79/2.02      inference('sup-', [status(thm)], ['63', '64'])).
% 1.79/2.02  thf('66', plain, (![X28 : $i]: ~ (zip_tseitin_3 @ k1_xboole_0 @ X28)),
% 1.79/2.02      inference('simplify', [status(thm)], ['57'])).
% 1.79/2.02  thf('67', plain,
% 1.79/2.02      (![X0 : $i]: ~ (zip_tseitin_2 @ k1_xboole_0 @ k1_xboole_0 @ X0)),
% 1.79/2.02      inference('clc', [status(thm)], ['65', '66'])).
% 1.79/2.02  thf('68', plain,
% 1.79/2.02      (![X0 : $i]: (zip_tseitin_1 @ k1_xboole_0 @ k1_xboole_0 @ X0)),
% 1.79/2.02      inference('sup-', [status(thm)], ['44', '67'])).
% 1.79/2.02  thf('69', plain,
% 1.79/2.02      (![X22 : $i, X23 : $i, X24 : $i]:
% 1.79/2.02         ((r1_tarski @ (k2_relat_1 @ X22) @ X24)
% 1.79/2.02          | ~ (zip_tseitin_1 @ X22 @ X23 @ X24))),
% 1.79/2.02      inference('cnf', [status(esa)], [zf_stmt_11])).
% 1.79/2.02  thf('70', plain, (![X0 : $i]: (r1_tarski @ (k2_relat_1 @ k1_xboole_0) @ X0)),
% 1.79/2.02      inference('sup-', [status(thm)], ['68', '69'])).
% 1.79/2.02  thf(t60_relat_1, axiom,
% 1.79/2.02    (( ( k2_relat_1 @ k1_xboole_0 ) = ( k1_xboole_0 ) ) & 
% 1.79/2.02     ( ( k1_relat_1 @ k1_xboole_0 ) = ( k1_xboole_0 ) ))).
% 1.79/2.02  thf('71', plain, (((k2_relat_1 @ k1_xboole_0) = (k1_xboole_0))),
% 1.79/2.02      inference('cnf', [status(esa)], [t60_relat_1])).
% 1.79/2.02  thf('72', plain, (![X0 : $i]: (r1_tarski @ k1_xboole_0 @ X0)),
% 1.79/2.02      inference('demod', [status(thm)], ['70', '71'])).
% 1.79/2.02  thf('73', plain, (((k1_xboole_0) = (sk_B))),
% 1.79/2.02      inference('demod', [status(thm)], ['43', '72'])).
% 1.79/2.02  thf('74', plain, (((k1_xboole_0) = (sk_B))),
% 1.79/2.02      inference('demod', [status(thm)], ['43', '72'])).
% 1.79/2.02  thf('75', plain, (((k1_relat_1 @ k1_xboole_0) = (k1_xboole_0))),
% 1.79/2.02      inference('cnf', [status(esa)], [t60_relat_1])).
% 1.79/2.02  thf('76', plain, (![X1 : $i]: (r1_tarski @ X1 @ X1)),
% 1.79/2.02      inference('simplify', [status(thm)], ['6'])).
% 1.79/2.02  thf('77', plain,
% 1.79/2.02      (![X11 : $i, X13 : $i]:
% 1.79/2.02         ((m1_subset_1 @ X11 @ (k1_zfmisc_1 @ X13)) | ~ (r1_tarski @ X11 @ X13))),
% 1.79/2.02      inference('cnf', [status(esa)], [t3_subset])).
% 1.79/2.02  thf('78', plain, (![X0 : $i]: (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ X0))),
% 1.79/2.02      inference('sup-', [status(thm)], ['76', '77'])).
% 1.79/2.02  thf('79', plain,
% 1.79/2.02      (![X9 : $i, X10 : $i]:
% 1.79/2.02         (((k2_zfmisc_1 @ X9 @ X10) = (k1_xboole_0)) | ((X9) != (k1_xboole_0)))),
% 1.79/2.02      inference('cnf', [status(esa)], [t113_zfmisc_1])).
% 1.79/2.02  thf('80', plain,
% 1.79/2.02      (![X10 : $i]: ((k2_zfmisc_1 @ k1_xboole_0 @ X10) = (k1_xboole_0))),
% 1.79/2.02      inference('simplify', [status(thm)], ['79'])).
% 1.79/2.02  thf('81', plain,
% 1.79/2.02      (![X32 : $i, X33 : $i, X34 : $i]:
% 1.79/2.02         (((k1_relset_1 @ X33 @ X34 @ X32) = (k1_relat_1 @ X32))
% 1.79/2.02          | ~ (m1_subset_1 @ X32 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X33 @ X34))))),
% 1.79/2.02      inference('cnf', [status(esa)], [redefinition_k1_relset_1])).
% 1.79/2.02  thf('82', plain,
% 1.79/2.02      (![X0 : $i, X1 : $i]:
% 1.79/2.02         (~ (m1_subset_1 @ X1 @ (k1_zfmisc_1 @ k1_xboole_0))
% 1.79/2.02          | ((k1_relset_1 @ k1_xboole_0 @ X0 @ X1) = (k1_relat_1 @ X1)))),
% 1.79/2.02      inference('sup-', [status(thm)], ['80', '81'])).
% 1.79/2.02  thf('83', plain,
% 1.79/2.02      (![X0 : $i]:
% 1.79/2.02         ((k1_relset_1 @ k1_xboole_0 @ X0 @ k1_xboole_0)
% 1.79/2.02           = (k1_relat_1 @ k1_xboole_0))),
% 1.79/2.02      inference('sup-', [status(thm)], ['78', '82'])).
% 1.79/2.02  thf('84', plain, (((k1_relat_1 @ k1_xboole_0) = (k1_xboole_0))),
% 1.79/2.02      inference('cnf', [status(esa)], [t60_relat_1])).
% 1.79/2.02  thf('85', plain,
% 1.79/2.02      (![X0 : $i]:
% 1.79/2.02         ((k1_relset_1 @ k1_xboole_0 @ X0 @ k1_xboole_0) = (k1_xboole_0))),
% 1.79/2.02      inference('demod', [status(thm)], ['83', '84'])).
% 1.79/2.02  thf('86', plain,
% 1.79/2.02      (![X40 : $i, X41 : $i, X42 : $i]:
% 1.79/2.02         (((X40) != (k1_relset_1 @ X40 @ X41 @ X42))
% 1.79/2.02          | (v1_funct_2 @ X42 @ X40 @ X41)
% 1.79/2.02          | ~ (zip_tseitin_5 @ X42 @ X41 @ X40))),
% 1.79/2.02      inference('cnf', [status(esa)], [zf_stmt_3])).
% 1.79/2.02  thf('87', plain,
% 1.79/2.02      (![X0 : $i]:
% 1.79/2.02         (((k1_xboole_0) != (k1_xboole_0))
% 1.79/2.02          | ~ (zip_tseitin_5 @ k1_xboole_0 @ X0 @ k1_xboole_0)
% 1.79/2.02          | (v1_funct_2 @ k1_xboole_0 @ k1_xboole_0 @ X0))),
% 1.79/2.02      inference('sup-', [status(thm)], ['85', '86'])).
% 1.79/2.02  thf('88', plain, (![X0 : $i]: (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ X0))),
% 1.79/2.02      inference('sup-', [status(thm)], ['76', '77'])).
% 1.79/2.02  thf('89', plain,
% 1.79/2.02      (![X10 : $i]: ((k2_zfmisc_1 @ k1_xboole_0 @ X10) = (k1_xboole_0))),
% 1.79/2.02      inference('simplify', [status(thm)], ['79'])).
% 1.79/2.02  thf('90', plain,
% 1.79/2.02      (![X43 : $i, X44 : $i, X45 : $i]:
% 1.79/2.02         (~ (zip_tseitin_4 @ X43 @ X44)
% 1.79/2.02          | (zip_tseitin_5 @ X45 @ X43 @ X44)
% 1.79/2.02          | ~ (m1_subset_1 @ X45 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X44 @ X43))))),
% 1.79/2.02      inference('cnf', [status(esa)], [zf_stmt_5])).
% 1.79/2.02  thf('91', plain,
% 1.79/2.02      (![X0 : $i, X1 : $i]:
% 1.79/2.02         (~ (m1_subset_1 @ X1 @ (k1_zfmisc_1 @ k1_xboole_0))
% 1.79/2.02          | (zip_tseitin_5 @ X1 @ X0 @ k1_xboole_0)
% 1.79/2.02          | ~ (zip_tseitin_4 @ X0 @ k1_xboole_0))),
% 1.79/2.02      inference('sup-', [status(thm)], ['89', '90'])).
% 1.79/2.02  thf('92', plain,
% 1.79/2.02      (![X38 : $i, X39 : $i]:
% 1.79/2.02         ((zip_tseitin_4 @ X38 @ X39) | ((X39) != (k1_xboole_0)))),
% 1.79/2.02      inference('cnf', [status(esa)], [zf_stmt_1])).
% 1.79/2.02  thf('93', plain, (![X38 : $i]: (zip_tseitin_4 @ X38 @ k1_xboole_0)),
% 1.79/2.02      inference('simplify', [status(thm)], ['92'])).
% 1.79/2.02  thf('94', plain,
% 1.79/2.02      (![X0 : $i, X1 : $i]:
% 1.79/2.02         (~ (m1_subset_1 @ X1 @ (k1_zfmisc_1 @ k1_xboole_0))
% 1.79/2.02          | (zip_tseitin_5 @ X1 @ X0 @ k1_xboole_0))),
% 1.79/2.02      inference('demod', [status(thm)], ['91', '93'])).
% 1.79/2.02  thf('95', plain,
% 1.79/2.02      (![X0 : $i]: (zip_tseitin_5 @ k1_xboole_0 @ X0 @ k1_xboole_0)),
% 1.79/2.02      inference('sup-', [status(thm)], ['88', '94'])).
% 1.79/2.02  thf('96', plain,
% 1.79/2.02      (![X0 : $i]:
% 1.79/2.02         (((k1_xboole_0) != (k1_xboole_0))
% 1.79/2.02          | (v1_funct_2 @ k1_xboole_0 @ k1_xboole_0 @ X0))),
% 1.79/2.02      inference('demod', [status(thm)], ['87', '95'])).
% 1.79/2.02  thf('97', plain, (![X0 : $i]: (v1_funct_2 @ k1_xboole_0 @ k1_xboole_0 @ X0)),
% 1.79/2.02      inference('simplify', [status(thm)], ['96'])).
% 1.79/2.02  thf('98', plain, ($false),
% 1.79/2.02      inference('demod', [status(thm)], ['32', '73', '74', '75', '97'])).
% 1.79/2.02  
% 1.79/2.02  % SZS output end Refutation
% 1.79/2.02  
% 1.79/2.03  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
