%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.ZB3EadfhG5

% Computer   : n006.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:54:16 EST 2020

% Result     : Theorem 0.18s
% Output     : Refutation 0.18s
% Verified   : 
% Statistics : Number of formulae       :  124 ( 309 expanded)
%              Number of leaves         :   42 ( 108 expanded)
%              Depth                    :   15
%              Number of atoms          : 1061 (6318 expanded)
%              Number of equality atoms :   42 (  74 expanded)
%              Maximal formula depth    :   19 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(sk_C_type,type,(
    sk_C: $i )).

thf(v4_relat_1_type,type,(
    v4_relat_1: $i > $i > $o )).

thf(v5_relat_1_type,type,(
    v5_relat_1: $i > $i > $o )).

thf(k2_relat_1_type,type,(
    k2_relat_1: $i > $i )).

thf(v1_funct_1_type,type,(
    v1_funct_1: $i > $o )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(v1_xboole_0_type,type,(
    v1_xboole_0: $i > $o )).

thf(k6_partfun1_type,type,(
    k6_partfun1: $i > $i )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(r2_relset_1_type,type,(
    r2_relset_1: $i > $i > $i > $i > $o )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(v2_funct_2_type,type,(
    v2_funct_2: $i > $i > $o )).

thf(k3_mcart_1_type,type,(
    k3_mcart_1: $i > $i > $i > $i )).

thf(k6_relat_1_type,type,(
    k6_relat_1: $i > $i )).

thf(v1_funct_2_type,type,(
    v1_funct_2: $i > $i > $i > $o )).

thf(k1_partfun1_type,type,(
    k1_partfun1: $i > $i > $i > $i > $i > $i > $i )).

thf(sk_B_type,type,(
    sk_B: $i > $i )).

thf(k2_relset_1_type,type,(
    k2_relset_1: $i > $i > $i > $i )).

thf(k2_zfmisc_1_type,type,(
    k2_zfmisc_1: $i > $i > $i )).

thf(sk_B_1_type,type,(
    sk_B_1: $i )).

thf(v2_funct_1_type,type,(
    v2_funct_1: $i > $o )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(sk_D_type,type,(
    sk_D: $i )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(t29_funct_2,conjecture,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( v1_funct_1 @ C )
        & ( v1_funct_2 @ C @ A @ B )
        & ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) )
     => ! [D: $i] :
          ( ( ( v1_funct_1 @ D )
            & ( v1_funct_2 @ D @ B @ A )
            & ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ A ) ) ) )
         => ( ( r2_relset_1 @ A @ A @ ( k1_partfun1 @ A @ B @ B @ A @ C @ D ) @ ( k6_partfun1 @ A ) )
           => ( ( v2_funct_1 @ C )
              & ( v2_funct_2 @ D @ A ) ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i] :
        ( ( ( v1_funct_1 @ C )
          & ( v1_funct_2 @ C @ A @ B )
          & ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) )
       => ! [D: $i] :
            ( ( ( v1_funct_1 @ D )
              & ( v1_funct_2 @ D @ B @ A )
              & ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ A ) ) ) )
           => ( ( r2_relset_1 @ A @ A @ ( k1_partfun1 @ A @ B @ B @ A @ C @ D ) @ ( k6_partfun1 @ A ) )
             => ( ( v2_funct_1 @ C )
                & ( v2_funct_2 @ D @ A ) ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t29_funct_2])).

thf('0',plain,
    ( ~ ( v2_funct_1 @ sk_C )
    | ~ ( v2_funct_2 @ sk_D @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,
    ( ~ ( v2_funct_1 @ sk_C )
   <= ~ ( v2_funct_1 @ sk_C ) ),
    inference(split,[status(esa)],['0'])).

thf('2',plain,(
    r2_relset_1 @ sk_A @ sk_A @ ( k1_partfun1 @ sk_A @ sk_B_1 @ sk_B_1 @ sk_A @ sk_C @ sk_D ) @ ( k6_partfun1 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('3',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B_1 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t24_funct_2,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( v1_funct_1 @ C )
        & ( v1_funct_2 @ C @ A @ B )
        & ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) )
     => ! [D: $i] :
          ( ( ( v1_funct_1 @ D )
            & ( v1_funct_2 @ D @ B @ A )
            & ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ A ) ) ) )
         => ( ( r2_relset_1 @ B @ B @ ( k1_partfun1 @ B @ A @ A @ B @ D @ C ) @ ( k6_partfun1 @ B ) )
           => ( ( k2_relset_1 @ A @ B @ C )
              = B ) ) ) ) )).

thf('4',plain,(
    ! [X35: $i,X36: $i,X37: $i,X38: $i] :
      ( ~ ( v1_funct_1 @ X35 )
      | ~ ( v1_funct_2 @ X35 @ X36 @ X37 )
      | ~ ( m1_subset_1 @ X35 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X36 @ X37 ) ) )
      | ~ ( r2_relset_1 @ X36 @ X36 @ ( k1_partfun1 @ X36 @ X37 @ X37 @ X36 @ X35 @ X38 ) @ ( k6_partfun1 @ X36 ) )
      | ( ( k2_relset_1 @ X37 @ X36 @ X38 )
        = X36 )
      | ~ ( m1_subset_1 @ X38 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X37 @ X36 ) ) )
      | ~ ( v1_funct_2 @ X38 @ X37 @ X36 )
      | ~ ( v1_funct_1 @ X38 ) ) ),
    inference(cnf,[status(esa)],[t24_funct_2])).

thf('5',plain,(
    ! [X0: $i] :
      ( ~ ( v1_funct_1 @ X0 )
      | ~ ( v1_funct_2 @ X0 @ sk_B_1 @ sk_A )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B_1 @ sk_A ) ) )
      | ( ( k2_relset_1 @ sk_B_1 @ sk_A @ X0 )
        = sk_A )
      | ~ ( r2_relset_1 @ sk_A @ sk_A @ ( k1_partfun1 @ sk_A @ sk_B_1 @ sk_B_1 @ sk_A @ sk_C @ X0 ) @ ( k6_partfun1 @ sk_A ) )
      | ~ ( v1_funct_2 @ sk_C @ sk_A @ sk_B_1 )
      | ~ ( v1_funct_1 @ sk_C ) ) ),
    inference('sup-',[status(thm)],['3','4'])).

thf('6',plain,(
    v1_funct_2 @ sk_C @ sk_A @ sk_B_1 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('7',plain,(
    v1_funct_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('8',plain,(
    ! [X0: $i] :
      ( ~ ( v1_funct_1 @ X0 )
      | ~ ( v1_funct_2 @ X0 @ sk_B_1 @ sk_A )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B_1 @ sk_A ) ) )
      | ( ( k2_relset_1 @ sk_B_1 @ sk_A @ X0 )
        = sk_A )
      | ~ ( r2_relset_1 @ sk_A @ sk_A @ ( k1_partfun1 @ sk_A @ sk_B_1 @ sk_B_1 @ sk_A @ sk_C @ X0 ) @ ( k6_partfun1 @ sk_A ) ) ) ),
    inference(demod,[status(thm)],['5','6','7'])).

thf('9',plain,
    ( ( ( k2_relset_1 @ sk_B_1 @ sk_A @ sk_D )
      = sk_A )
    | ~ ( m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B_1 @ sk_A ) ) )
    | ~ ( v1_funct_2 @ sk_D @ sk_B_1 @ sk_A )
    | ~ ( v1_funct_1 @ sk_D ) ),
    inference('sup-',[status(thm)],['2','8'])).

thf('10',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B_1 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(redefinition_k2_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( k2_relset_1 @ A @ B @ C )
        = ( k2_relat_1 @ C ) ) ) )).

thf('11',plain,(
    ! [X14: $i,X15: $i,X16: $i] :
      ( ( ( k2_relset_1 @ X15 @ X16 @ X14 )
        = ( k2_relat_1 @ X14 ) )
      | ~ ( m1_subset_1 @ X14 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X15 @ X16 ) ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k2_relset_1])).

thf('12',plain,
    ( ( k2_relset_1 @ sk_B_1 @ sk_A @ sk_D )
    = ( k2_relat_1 @ sk_D ) ),
    inference('sup-',[status(thm)],['10','11'])).

thf('13',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B_1 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('14',plain,(
    v1_funct_2 @ sk_D @ sk_B_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('15',plain,(
    v1_funct_1 @ sk_D ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('16',plain,
    ( ( k2_relat_1 @ sk_D )
    = sk_A ),
    inference(demod,[status(thm)],['9','12','13','14','15'])).

thf(d3_funct_2,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( v1_relat_1 @ B )
        & ( v5_relat_1 @ B @ A ) )
     => ( ( v2_funct_2 @ B @ A )
      <=> ( ( k2_relat_1 @ B )
          = A ) ) ) )).

thf('17',plain,(
    ! [X26: $i,X27: $i] :
      ( ( ( k2_relat_1 @ X27 )
       != X26 )
      | ( v2_funct_2 @ X27 @ X26 )
      | ~ ( v5_relat_1 @ X27 @ X26 )
      | ~ ( v1_relat_1 @ X27 ) ) ),
    inference(cnf,[status(esa)],[d3_funct_2])).

thf('18',plain,(
    ! [X27: $i] :
      ( ~ ( v1_relat_1 @ X27 )
      | ~ ( v5_relat_1 @ X27 @ ( k2_relat_1 @ X27 ) )
      | ( v2_funct_2 @ X27 @ ( k2_relat_1 @ X27 ) ) ) ),
    inference(simplify,[status(thm)],['17'])).

thf('19',plain,
    ( ~ ( v5_relat_1 @ sk_D @ sk_A )
    | ( v2_funct_2 @ sk_D @ ( k2_relat_1 @ sk_D ) )
    | ~ ( v1_relat_1 @ sk_D ) ),
    inference('sup-',[status(thm)],['16','18'])).

thf('20',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B_1 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(cc2_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( v4_relat_1 @ C @ A )
        & ( v5_relat_1 @ C @ B ) ) ) )).

thf('21',plain,(
    ! [X11: $i,X12: $i,X13: $i] :
      ( ( v5_relat_1 @ X11 @ X13 )
      | ~ ( m1_subset_1 @ X11 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X12 @ X13 ) ) ) ) ),
    inference(cnf,[status(esa)],[cc2_relset_1])).

thf('22',plain,(
    v5_relat_1 @ sk_D @ sk_A ),
    inference('sup-',[status(thm)],['20','21'])).

thf('23',plain,
    ( ( k2_relat_1 @ sk_D )
    = sk_A ),
    inference(demod,[status(thm)],['9','12','13','14','15'])).

thf('24',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B_1 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(cc1_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( v1_relat_1 @ C ) ) )).

thf('25',plain,(
    ! [X8: $i,X9: $i,X10: $i] :
      ( ( v1_relat_1 @ X8 )
      | ~ ( m1_subset_1 @ X8 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X9 @ X10 ) ) ) ) ),
    inference(cnf,[status(esa)],[cc1_relset_1])).

thf('26',plain,(
    v1_relat_1 @ sk_D ),
    inference('sup-',[status(thm)],['24','25'])).

thf('27',plain,(
    v2_funct_2 @ sk_D @ sk_A ),
    inference(demod,[status(thm)],['19','22','23','26'])).

thf('28',plain,
    ( ~ ( v2_funct_2 @ sk_D @ sk_A )
   <= ~ ( v2_funct_2 @ sk_D @ sk_A ) ),
    inference(split,[status(esa)],['0'])).

thf('29',plain,(
    v2_funct_2 @ sk_D @ sk_A ),
    inference('sup-',[status(thm)],['27','28'])).

thf('30',plain,
    ( ~ ( v2_funct_1 @ sk_C )
    | ~ ( v2_funct_2 @ sk_D @ sk_A ) ),
    inference(split,[status(esa)],['0'])).

thf('31',plain,(
    ~ ( v2_funct_1 @ sk_C ) ),
    inference('sat_resolution*',[status(thm)],['29','30'])).

thf('32',plain,(
    ~ ( v2_funct_1 @ sk_C ) ),
    inference(simpl_trail,[status(thm)],['1','31'])).

thf(t29_mcart_1,axiom,(
    ! [A: $i] :
      ~ ( ( A != k1_xboole_0 )
        & ! [B: $i] :
            ~ ( ( r2_hidden @ B @ A )
              & ! [C: $i,D: $i,E: $i] :
                  ~ ( ( ( r2_hidden @ C @ A )
                      | ( r2_hidden @ D @ A ) )
                    & ( B
                      = ( k3_mcart_1 @ C @ D @ E ) ) ) ) ) )).

thf('33',plain,(
    ! [X22: $i] :
      ( ( X22 = k1_xboole_0 )
      | ( r2_hidden @ ( sk_B @ X22 ) @ X22 ) ) ),
    inference(cnf,[status(esa)],[t29_mcart_1])).

thf('34',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B_1 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t5_subset,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ~ ( ( r2_hidden @ A @ B )
        & ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ C ) )
        & ( v1_xboole_0 @ C ) ) )).

thf('35',plain,(
    ! [X3: $i,X4: $i,X5: $i] :
      ( ~ ( r2_hidden @ X3 @ X4 )
      | ~ ( v1_xboole_0 @ X5 )
      | ~ ( m1_subset_1 @ X4 @ ( k1_zfmisc_1 @ X5 ) ) ) ),
    inference(cnf,[status(esa)],[t5_subset])).

thf('36',plain,(
    ! [X0: $i] :
      ( ~ ( v1_xboole_0 @ ( k2_zfmisc_1 @ sk_A @ sk_B_1 ) )
      | ~ ( r2_hidden @ X0 @ sk_C ) ) ),
    inference('sup-',[status(thm)],['34','35'])).

thf('37',plain,(
    r2_relset_1 @ sk_A @ sk_A @ ( k1_partfun1 @ sk_A @ sk_B_1 @ sk_B_1 @ sk_A @ sk_C @ sk_D ) @ ( k6_partfun1 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('38',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B_1 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('39',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B_1 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(dt_k1_partfun1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i,E: $i,F: $i] :
      ( ( ( v1_funct_1 @ E )
        & ( m1_subset_1 @ E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
        & ( v1_funct_1 @ F )
        & ( m1_subset_1 @ F @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ D ) ) ) )
     => ( ( v1_funct_1 @ ( k1_partfun1 @ A @ B @ C @ D @ E @ F ) )
        & ( m1_subset_1 @ ( k1_partfun1 @ A @ B @ C @ D @ E @ F ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ D ) ) ) ) ) )).

thf('40',plain,(
    ! [X28: $i,X29: $i,X30: $i,X31: $i,X32: $i,X33: $i] :
      ( ~ ( m1_subset_1 @ X28 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X29 @ X30 ) ) )
      | ~ ( v1_funct_1 @ X28 )
      | ~ ( v1_funct_1 @ X31 )
      | ~ ( m1_subset_1 @ X31 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X32 @ X33 ) ) )
      | ( m1_subset_1 @ ( k1_partfun1 @ X29 @ X30 @ X32 @ X33 @ X28 @ X31 ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X29 @ X33 ) ) ) ) ),
    inference(cnf,[status(esa)],[dt_k1_partfun1])).

thf('41',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( m1_subset_1 @ ( k1_partfun1 @ sk_A @ sk_B_1 @ X2 @ X0 @ sk_C @ X1 ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ X0 ) ) )
      | ~ ( m1_subset_1 @ X1 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X2 @ X0 ) ) )
      | ~ ( v1_funct_1 @ X1 )
      | ~ ( v1_funct_1 @ sk_C ) ) ),
    inference('sup-',[status(thm)],['39','40'])).

thf('42',plain,(
    v1_funct_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('43',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( m1_subset_1 @ ( k1_partfun1 @ sk_A @ sk_B_1 @ X2 @ X0 @ sk_C @ X1 ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ X0 ) ) )
      | ~ ( m1_subset_1 @ X1 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X2 @ X0 ) ) )
      | ~ ( v1_funct_1 @ X1 ) ) ),
    inference(demod,[status(thm)],['41','42'])).

thf('44',plain,
    ( ~ ( v1_funct_1 @ sk_D )
    | ( m1_subset_1 @ ( k1_partfun1 @ sk_A @ sk_B_1 @ sk_B_1 @ sk_A @ sk_C @ sk_D ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_A ) ) ) ),
    inference('sup-',[status(thm)],['38','43'])).

thf('45',plain,(
    v1_funct_1 @ sk_D ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('46',plain,(
    m1_subset_1 @ ( k1_partfun1 @ sk_A @ sk_B_1 @ sk_B_1 @ sk_A @ sk_C @ sk_D ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_A ) ) ),
    inference(demod,[status(thm)],['44','45'])).

thf(redefinition_r2_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
        & ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) )
     => ( ( r2_relset_1 @ A @ B @ C @ D )
      <=> ( C = D ) ) ) )).

thf('47',plain,(
    ! [X17: $i,X18: $i,X19: $i,X20: $i] :
      ( ~ ( m1_subset_1 @ X17 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X18 @ X19 ) ) )
      | ~ ( m1_subset_1 @ X20 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X18 @ X19 ) ) )
      | ( X17 = X20 )
      | ~ ( r2_relset_1 @ X18 @ X19 @ X17 @ X20 ) ) ),
    inference(cnf,[status(esa)],[redefinition_r2_relset_1])).

thf('48',plain,(
    ! [X0: $i] :
      ( ~ ( r2_relset_1 @ sk_A @ sk_A @ ( k1_partfun1 @ sk_A @ sk_B_1 @ sk_B_1 @ sk_A @ sk_C @ sk_D ) @ X0 )
      | ( ( k1_partfun1 @ sk_A @ sk_B_1 @ sk_B_1 @ sk_A @ sk_C @ sk_D )
        = X0 )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_A ) ) ) ) ),
    inference('sup-',[status(thm)],['46','47'])).

thf('49',plain,
    ( ~ ( m1_subset_1 @ ( k6_partfun1 @ sk_A ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_A ) ) )
    | ( ( k1_partfun1 @ sk_A @ sk_B_1 @ sk_B_1 @ sk_A @ sk_C @ sk_D )
      = ( k6_partfun1 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['37','48'])).

thf(t29_relset_1,axiom,(
    ! [A: $i] :
      ( m1_subset_1 @ ( k6_relat_1 @ A ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ A ) ) ) )).

thf('50',plain,(
    ! [X21: $i] :
      ( m1_subset_1 @ ( k6_relat_1 @ X21 ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X21 @ X21 ) ) ) ),
    inference(cnf,[status(esa)],[t29_relset_1])).

thf(redefinition_k6_partfun1,axiom,(
    ! [A: $i] :
      ( ( k6_partfun1 @ A )
      = ( k6_relat_1 @ A ) ) )).

thf('51',plain,(
    ! [X34: $i] :
      ( ( k6_partfun1 @ X34 )
      = ( k6_relat_1 @ X34 ) ) ),
    inference(cnf,[status(esa)],[redefinition_k6_partfun1])).

thf('52',plain,(
    ! [X21: $i] :
      ( m1_subset_1 @ ( k6_partfun1 @ X21 ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X21 @ X21 ) ) ) ),
    inference(demod,[status(thm)],['50','51'])).

thf('53',plain,
    ( ( k1_partfun1 @ sk_A @ sk_B_1 @ sk_B_1 @ sk_A @ sk_C @ sk_D )
    = ( k6_partfun1 @ sk_A ) ),
    inference(demod,[status(thm)],['49','52'])).

thf('54',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B_1 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t26_funct_2,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( ( v1_funct_1 @ D )
        & ( v1_funct_2 @ D @ A @ B )
        & ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) )
     => ! [E: $i] :
          ( ( ( v1_funct_1 @ E )
            & ( v1_funct_2 @ E @ B @ C )
            & ( m1_subset_1 @ E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ C ) ) ) )
         => ( ( v2_funct_1 @ ( k1_partfun1 @ A @ B @ B @ C @ D @ E ) )
           => ( ( ( C = k1_xboole_0 )
                & ( B != k1_xboole_0 ) )
              | ( v2_funct_1 @ D ) ) ) ) ) )).

thf('55',plain,(
    ! [X39: $i,X40: $i,X41: $i,X42: $i,X43: $i] :
      ( ~ ( v1_funct_1 @ X39 )
      | ~ ( v1_funct_2 @ X39 @ X40 @ X41 )
      | ~ ( m1_subset_1 @ X39 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X40 @ X41 ) ) )
      | ~ ( v2_funct_1 @ ( k1_partfun1 @ X42 @ X40 @ X40 @ X41 @ X43 @ X39 ) )
      | ( v2_funct_1 @ X43 )
      | ( X41 = k1_xboole_0 )
      | ~ ( m1_subset_1 @ X43 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X42 @ X40 ) ) )
      | ~ ( v1_funct_2 @ X43 @ X42 @ X40 )
      | ~ ( v1_funct_1 @ X43 ) ) ),
    inference(cnf,[status(esa)],[t26_funct_2])).

thf('56',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v1_funct_1 @ X0 )
      | ~ ( v1_funct_2 @ X0 @ X1 @ sk_B_1 )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X1 @ sk_B_1 ) ) )
      | ( sk_A = k1_xboole_0 )
      | ( v2_funct_1 @ X0 )
      | ~ ( v2_funct_1 @ ( k1_partfun1 @ X1 @ sk_B_1 @ sk_B_1 @ sk_A @ X0 @ sk_D ) )
      | ~ ( v1_funct_2 @ sk_D @ sk_B_1 @ sk_A )
      | ~ ( v1_funct_1 @ sk_D ) ) ),
    inference('sup-',[status(thm)],['54','55'])).

thf('57',plain,(
    v1_funct_2 @ sk_D @ sk_B_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('58',plain,(
    v1_funct_1 @ sk_D ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('59',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v1_funct_1 @ X0 )
      | ~ ( v1_funct_2 @ X0 @ X1 @ sk_B_1 )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X1 @ sk_B_1 ) ) )
      | ( sk_A = k1_xboole_0 )
      | ( v2_funct_1 @ X0 )
      | ~ ( v2_funct_1 @ ( k1_partfun1 @ X1 @ sk_B_1 @ sk_B_1 @ sk_A @ X0 @ sk_D ) ) ) ),
    inference(demod,[status(thm)],['56','57','58'])).

thf('60',plain,
    ( ~ ( v2_funct_1 @ ( k6_partfun1 @ sk_A ) )
    | ( v2_funct_1 @ sk_C )
    | ( sk_A = k1_xboole_0 )
    | ~ ( m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B_1 ) ) )
    | ~ ( v1_funct_2 @ sk_C @ sk_A @ sk_B_1 )
    | ~ ( v1_funct_1 @ sk_C ) ),
    inference('sup-',[status(thm)],['53','59'])).

thf(fc4_funct_1,axiom,(
    ! [A: $i] :
      ( ( v2_funct_1 @ ( k6_relat_1 @ A ) )
      & ( v1_relat_1 @ ( k6_relat_1 @ A ) ) ) )).

thf('61',plain,(
    ! [X7: $i] :
      ( v2_funct_1 @ ( k6_relat_1 @ X7 ) ) ),
    inference(cnf,[status(esa)],[fc4_funct_1])).

thf('62',plain,(
    ! [X34: $i] :
      ( ( k6_partfun1 @ X34 )
      = ( k6_relat_1 @ X34 ) ) ),
    inference(cnf,[status(esa)],[redefinition_k6_partfun1])).

thf('63',plain,(
    ! [X7: $i] :
      ( v2_funct_1 @ ( k6_partfun1 @ X7 ) ) ),
    inference(demod,[status(thm)],['61','62'])).

thf('64',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B_1 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('65',plain,(
    v1_funct_2 @ sk_C @ sk_A @ sk_B_1 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('66',plain,(
    v1_funct_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('67',plain,
    ( ( v2_funct_1 @ sk_C )
    | ( sk_A = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['60','63','64','65','66'])).

thf('68',plain,(
    ~ ( v2_funct_1 @ sk_C ) ),
    inference(simpl_trail,[status(thm)],['1','31'])).

thf('69',plain,(
    sk_A = k1_xboole_0 ),
    inference(clc,[status(thm)],['67','68'])).

thf(t113_zfmisc_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( k2_zfmisc_1 @ A @ B )
        = k1_xboole_0 )
    <=> ( ( A = k1_xboole_0 )
        | ( B = k1_xboole_0 ) ) ) )).

thf('70',plain,(
    ! [X1: $i,X2: $i] :
      ( ( ( k2_zfmisc_1 @ X1 @ X2 )
        = k1_xboole_0 )
      | ( X1 != k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[t113_zfmisc_1])).

thf('71',plain,(
    ! [X2: $i] :
      ( ( k2_zfmisc_1 @ k1_xboole_0 @ X2 )
      = k1_xboole_0 ) ),
    inference(simplify,[status(thm)],['70'])).

thf(fc1_xboole_0,axiom,(
    v1_xboole_0 @ k1_xboole_0 )).

thf('72',plain,(
    v1_xboole_0 @ k1_xboole_0 ),
    inference(cnf,[status(esa)],[fc1_xboole_0])).

thf('73',plain,(
    ! [X0: $i] :
      ~ ( r2_hidden @ X0 @ sk_C ) ),
    inference(demod,[status(thm)],['36','69','71','72'])).

thf('74',plain,(
    sk_C = k1_xboole_0 ),
    inference('sup-',[status(thm)],['33','73'])).

thf(t81_relat_1,axiom,
    ( ( k6_relat_1 @ k1_xboole_0 )
    = k1_xboole_0 )).

thf('75',plain,
    ( ( k6_relat_1 @ k1_xboole_0 )
    = k1_xboole_0 ),
    inference(cnf,[status(esa)],[t81_relat_1])).

thf('76',plain,(
    ! [X34: $i] :
      ( ( k6_partfun1 @ X34 )
      = ( k6_relat_1 @ X34 ) ) ),
    inference(cnf,[status(esa)],[redefinition_k6_partfun1])).

thf('77',plain,
    ( ( k6_partfun1 @ k1_xboole_0 )
    = k1_xboole_0 ),
    inference(demod,[status(thm)],['75','76'])).

thf('78',plain,(
    ! [X7: $i] :
      ( v2_funct_1 @ ( k6_partfun1 @ X7 ) ) ),
    inference(demod,[status(thm)],['61','62'])).

thf('79',plain,(
    v2_funct_1 @ k1_xboole_0 ),
    inference('sup+',[status(thm)],['77','78'])).

thf('80',plain,(
    $false ),
    inference(demod,[status(thm)],['32','74','79'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.00/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.12  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.ZB3EadfhG5
% 0.12/0.32  % Computer   : n006.cluster.edu
% 0.12/0.32  % Model      : x86_64 x86_64
% 0.12/0.32  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.32  % Memory     : 8042.1875MB
% 0.12/0.32  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.32  % CPULimit   : 60
% 0.12/0.32  % DateTime   : Tue Dec  1 17:45:23 EST 2020
% 0.12/0.32  % CPUTime    : 
% 0.12/0.32  % Running portfolio for 600 s
% 0.12/0.32  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.12/0.32  % Number of cores: 8
% 0.18/0.33  % Python version: Python 3.6.8
% 0.18/0.33  % Running in FO mode
% 0.18/0.57  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.18/0.57  % Solved by: fo/fo7.sh
% 0.18/0.57  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.18/0.57  % done 250 iterations in 0.141s
% 0.18/0.57  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.18/0.57  % SZS output start Refutation
% 0.18/0.57  thf(sk_C_type, type, sk_C: $i).
% 0.18/0.57  thf(v4_relat_1_type, type, v4_relat_1: $i > $i > $o).
% 0.18/0.57  thf(v5_relat_1_type, type, v5_relat_1: $i > $i > $o).
% 0.18/0.57  thf(k2_relat_1_type, type, k2_relat_1: $i > $i).
% 0.18/0.57  thf(v1_funct_1_type, type, v1_funct_1: $i > $o).
% 0.18/0.57  thf(sk_A_type, type, sk_A: $i).
% 0.18/0.57  thf(v1_xboole_0_type, type, v1_xboole_0: $i > $o).
% 0.18/0.57  thf(k6_partfun1_type, type, k6_partfun1: $i > $i).
% 0.18/0.57  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.18/0.57  thf(r2_relset_1_type, type, r2_relset_1: $i > $i > $i > $i > $o).
% 0.18/0.57  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.18/0.57  thf(v2_funct_2_type, type, v2_funct_2: $i > $i > $o).
% 0.18/0.57  thf(k3_mcart_1_type, type, k3_mcart_1: $i > $i > $i > $i).
% 0.18/0.57  thf(k6_relat_1_type, type, k6_relat_1: $i > $i).
% 0.18/0.57  thf(v1_funct_2_type, type, v1_funct_2: $i > $i > $i > $o).
% 0.18/0.57  thf(k1_partfun1_type, type, k1_partfun1: $i > $i > $i > $i > $i > $i > $i).
% 0.18/0.57  thf(sk_B_type, type, sk_B: $i > $i).
% 0.18/0.57  thf(k2_relset_1_type, type, k2_relset_1: $i > $i > $i > $i).
% 0.18/0.57  thf(k2_zfmisc_1_type, type, k2_zfmisc_1: $i > $i > $i).
% 0.18/0.57  thf(sk_B_1_type, type, sk_B_1: $i).
% 0.18/0.57  thf(v2_funct_1_type, type, v2_funct_1: $i > $o).
% 0.18/0.57  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.18/0.57  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.18/0.57  thf(sk_D_type, type, sk_D: $i).
% 0.18/0.57  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.18/0.57  thf(t29_funct_2, conjecture,
% 0.18/0.57    (![A:$i,B:$i,C:$i]:
% 0.18/0.57     ( ( ( v1_funct_1 @ C ) & ( v1_funct_2 @ C @ A @ B ) & 
% 0.18/0.57         ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) =>
% 0.18/0.57       ( ![D:$i]:
% 0.18/0.57         ( ( ( v1_funct_1 @ D ) & ( v1_funct_2 @ D @ B @ A ) & 
% 0.18/0.57             ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ A ) ) ) ) =>
% 0.18/0.57           ( ( r2_relset_1 @
% 0.18/0.57               A @ A @ ( k1_partfun1 @ A @ B @ B @ A @ C @ D ) @ 
% 0.18/0.57               ( k6_partfun1 @ A ) ) =>
% 0.18/0.57             ( ( v2_funct_1 @ C ) & ( v2_funct_2 @ D @ A ) ) ) ) ) ))).
% 0.18/0.57  thf(zf_stmt_0, negated_conjecture,
% 0.18/0.57    (~( ![A:$i,B:$i,C:$i]:
% 0.18/0.57        ( ( ( v1_funct_1 @ C ) & ( v1_funct_2 @ C @ A @ B ) & 
% 0.18/0.57            ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) =>
% 0.18/0.57          ( ![D:$i]:
% 0.18/0.57            ( ( ( v1_funct_1 @ D ) & ( v1_funct_2 @ D @ B @ A ) & 
% 0.18/0.57                ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ A ) ) ) ) =>
% 0.18/0.57              ( ( r2_relset_1 @
% 0.18/0.57                  A @ A @ ( k1_partfun1 @ A @ B @ B @ A @ C @ D ) @ 
% 0.18/0.57                  ( k6_partfun1 @ A ) ) =>
% 0.18/0.57                ( ( v2_funct_1 @ C ) & ( v2_funct_2 @ D @ A ) ) ) ) ) ) )),
% 0.18/0.57    inference('cnf.neg', [status(esa)], [t29_funct_2])).
% 0.18/0.57  thf('0', plain, ((~ (v2_funct_1 @ sk_C) | ~ (v2_funct_2 @ sk_D @ sk_A))),
% 0.18/0.57      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.18/0.57  thf('1', plain, ((~ (v2_funct_1 @ sk_C)) <= (~ ((v2_funct_1 @ sk_C)))),
% 0.18/0.57      inference('split', [status(esa)], ['0'])).
% 0.18/0.57  thf('2', plain,
% 0.18/0.57      ((r2_relset_1 @ sk_A @ sk_A @ 
% 0.18/0.57        (k1_partfun1 @ sk_A @ sk_B_1 @ sk_B_1 @ sk_A @ sk_C @ sk_D) @ 
% 0.18/0.57        (k6_partfun1 @ sk_A))),
% 0.18/0.57      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.18/0.57  thf('3', plain,
% 0.18/0.57      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B_1)))),
% 0.18/0.57      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.18/0.57  thf(t24_funct_2, axiom,
% 0.18/0.57    (![A:$i,B:$i,C:$i]:
% 0.18/0.57     ( ( ( v1_funct_1 @ C ) & ( v1_funct_2 @ C @ A @ B ) & 
% 0.18/0.57         ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) =>
% 0.18/0.57       ( ![D:$i]:
% 0.18/0.57         ( ( ( v1_funct_1 @ D ) & ( v1_funct_2 @ D @ B @ A ) & 
% 0.18/0.57             ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ A ) ) ) ) =>
% 0.18/0.57           ( ( r2_relset_1 @
% 0.18/0.57               B @ B @ ( k1_partfun1 @ B @ A @ A @ B @ D @ C ) @ 
% 0.18/0.57               ( k6_partfun1 @ B ) ) =>
% 0.18/0.57             ( ( k2_relset_1 @ A @ B @ C ) = ( B ) ) ) ) ) ))).
% 0.18/0.57  thf('4', plain,
% 0.18/0.57      (![X35 : $i, X36 : $i, X37 : $i, X38 : $i]:
% 0.18/0.57         (~ (v1_funct_1 @ X35)
% 0.18/0.57          | ~ (v1_funct_2 @ X35 @ X36 @ X37)
% 0.18/0.57          | ~ (m1_subset_1 @ X35 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X36 @ X37)))
% 0.18/0.57          | ~ (r2_relset_1 @ X36 @ X36 @ 
% 0.18/0.57               (k1_partfun1 @ X36 @ X37 @ X37 @ X36 @ X35 @ X38) @ 
% 0.18/0.57               (k6_partfun1 @ X36))
% 0.18/0.57          | ((k2_relset_1 @ X37 @ X36 @ X38) = (X36))
% 0.18/0.57          | ~ (m1_subset_1 @ X38 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X37 @ X36)))
% 0.18/0.57          | ~ (v1_funct_2 @ X38 @ X37 @ X36)
% 0.18/0.57          | ~ (v1_funct_1 @ X38))),
% 0.18/0.57      inference('cnf', [status(esa)], [t24_funct_2])).
% 0.18/0.57  thf('5', plain,
% 0.18/0.57      (![X0 : $i]:
% 0.18/0.57         (~ (v1_funct_1 @ X0)
% 0.18/0.57          | ~ (v1_funct_2 @ X0 @ sk_B_1 @ sk_A)
% 0.18/0.57          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B_1 @ sk_A)))
% 0.18/0.57          | ((k2_relset_1 @ sk_B_1 @ sk_A @ X0) = (sk_A))
% 0.18/0.57          | ~ (r2_relset_1 @ sk_A @ sk_A @ 
% 0.18/0.57               (k1_partfun1 @ sk_A @ sk_B_1 @ sk_B_1 @ sk_A @ sk_C @ X0) @ 
% 0.18/0.57               (k6_partfun1 @ sk_A))
% 0.18/0.57          | ~ (v1_funct_2 @ sk_C @ sk_A @ sk_B_1)
% 0.18/0.57          | ~ (v1_funct_1 @ sk_C))),
% 0.18/0.57      inference('sup-', [status(thm)], ['3', '4'])).
% 0.18/0.57  thf('6', plain, ((v1_funct_2 @ sk_C @ sk_A @ sk_B_1)),
% 0.18/0.57      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.18/0.57  thf('7', plain, ((v1_funct_1 @ sk_C)),
% 0.18/0.57      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.18/0.57  thf('8', plain,
% 0.18/0.57      (![X0 : $i]:
% 0.18/0.57         (~ (v1_funct_1 @ X0)
% 0.18/0.57          | ~ (v1_funct_2 @ X0 @ sk_B_1 @ sk_A)
% 0.18/0.57          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B_1 @ sk_A)))
% 0.18/0.57          | ((k2_relset_1 @ sk_B_1 @ sk_A @ X0) = (sk_A))
% 0.18/0.57          | ~ (r2_relset_1 @ sk_A @ sk_A @ 
% 0.18/0.57               (k1_partfun1 @ sk_A @ sk_B_1 @ sk_B_1 @ sk_A @ sk_C @ X0) @ 
% 0.18/0.57               (k6_partfun1 @ sk_A)))),
% 0.18/0.57      inference('demod', [status(thm)], ['5', '6', '7'])).
% 0.18/0.57  thf('9', plain,
% 0.18/0.57      ((((k2_relset_1 @ sk_B_1 @ sk_A @ sk_D) = (sk_A))
% 0.18/0.57        | ~ (m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B_1 @ sk_A)))
% 0.18/0.57        | ~ (v1_funct_2 @ sk_D @ sk_B_1 @ sk_A)
% 0.18/0.57        | ~ (v1_funct_1 @ sk_D))),
% 0.18/0.57      inference('sup-', [status(thm)], ['2', '8'])).
% 0.18/0.57  thf('10', plain,
% 0.18/0.57      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B_1 @ sk_A)))),
% 0.18/0.57      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.18/0.57  thf(redefinition_k2_relset_1, axiom,
% 0.18/0.57    (![A:$i,B:$i,C:$i]:
% 0.18/0.57     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.18/0.57       ( ( k2_relset_1 @ A @ B @ C ) = ( k2_relat_1 @ C ) ) ))).
% 0.18/0.57  thf('11', plain,
% 0.18/0.57      (![X14 : $i, X15 : $i, X16 : $i]:
% 0.18/0.57         (((k2_relset_1 @ X15 @ X16 @ X14) = (k2_relat_1 @ X14))
% 0.18/0.57          | ~ (m1_subset_1 @ X14 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X15 @ X16))))),
% 0.18/0.57      inference('cnf', [status(esa)], [redefinition_k2_relset_1])).
% 0.18/0.57  thf('12', plain,
% 0.18/0.57      (((k2_relset_1 @ sk_B_1 @ sk_A @ sk_D) = (k2_relat_1 @ sk_D))),
% 0.18/0.57      inference('sup-', [status(thm)], ['10', '11'])).
% 0.18/0.57  thf('13', plain,
% 0.18/0.57      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B_1 @ sk_A)))),
% 0.18/0.57      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.18/0.57  thf('14', plain, ((v1_funct_2 @ sk_D @ sk_B_1 @ sk_A)),
% 0.18/0.57      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.18/0.57  thf('15', plain, ((v1_funct_1 @ sk_D)),
% 0.18/0.57      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.18/0.57  thf('16', plain, (((k2_relat_1 @ sk_D) = (sk_A))),
% 0.18/0.57      inference('demod', [status(thm)], ['9', '12', '13', '14', '15'])).
% 0.18/0.57  thf(d3_funct_2, axiom,
% 0.18/0.57    (![A:$i,B:$i]:
% 0.18/0.57     ( ( ( v1_relat_1 @ B ) & ( v5_relat_1 @ B @ A ) ) =>
% 0.18/0.57       ( ( v2_funct_2 @ B @ A ) <=> ( ( k2_relat_1 @ B ) = ( A ) ) ) ))).
% 0.18/0.57  thf('17', plain,
% 0.18/0.57      (![X26 : $i, X27 : $i]:
% 0.18/0.57         (((k2_relat_1 @ X27) != (X26))
% 0.18/0.57          | (v2_funct_2 @ X27 @ X26)
% 0.18/0.57          | ~ (v5_relat_1 @ X27 @ X26)
% 0.18/0.57          | ~ (v1_relat_1 @ X27))),
% 0.18/0.57      inference('cnf', [status(esa)], [d3_funct_2])).
% 0.18/0.57  thf('18', plain,
% 0.18/0.57      (![X27 : $i]:
% 0.18/0.57         (~ (v1_relat_1 @ X27)
% 0.18/0.57          | ~ (v5_relat_1 @ X27 @ (k2_relat_1 @ X27))
% 0.18/0.57          | (v2_funct_2 @ X27 @ (k2_relat_1 @ X27)))),
% 0.18/0.57      inference('simplify', [status(thm)], ['17'])).
% 0.18/0.57  thf('19', plain,
% 0.18/0.57      ((~ (v5_relat_1 @ sk_D @ sk_A)
% 0.18/0.57        | (v2_funct_2 @ sk_D @ (k2_relat_1 @ sk_D))
% 0.18/0.57        | ~ (v1_relat_1 @ sk_D))),
% 0.18/0.57      inference('sup-', [status(thm)], ['16', '18'])).
% 0.18/0.57  thf('20', plain,
% 0.18/0.57      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B_1 @ sk_A)))),
% 0.18/0.57      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.18/0.57  thf(cc2_relset_1, axiom,
% 0.18/0.57    (![A:$i,B:$i,C:$i]:
% 0.18/0.57     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.18/0.57       ( ( v4_relat_1 @ C @ A ) & ( v5_relat_1 @ C @ B ) ) ))).
% 0.18/0.57  thf('21', plain,
% 0.18/0.57      (![X11 : $i, X12 : $i, X13 : $i]:
% 0.18/0.57         ((v5_relat_1 @ X11 @ X13)
% 0.18/0.57          | ~ (m1_subset_1 @ X11 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X12 @ X13))))),
% 0.18/0.57      inference('cnf', [status(esa)], [cc2_relset_1])).
% 0.18/0.57  thf('22', plain, ((v5_relat_1 @ sk_D @ sk_A)),
% 0.18/0.57      inference('sup-', [status(thm)], ['20', '21'])).
% 0.18/0.57  thf('23', plain, (((k2_relat_1 @ sk_D) = (sk_A))),
% 0.18/0.57      inference('demod', [status(thm)], ['9', '12', '13', '14', '15'])).
% 0.18/0.57  thf('24', plain,
% 0.18/0.57      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B_1 @ sk_A)))),
% 0.18/0.57      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.18/0.57  thf(cc1_relset_1, axiom,
% 0.18/0.57    (![A:$i,B:$i,C:$i]:
% 0.18/0.57     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.18/0.57       ( v1_relat_1 @ C ) ))).
% 0.18/0.57  thf('25', plain,
% 0.18/0.57      (![X8 : $i, X9 : $i, X10 : $i]:
% 0.18/0.57         ((v1_relat_1 @ X8)
% 0.18/0.57          | ~ (m1_subset_1 @ X8 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X9 @ X10))))),
% 0.18/0.57      inference('cnf', [status(esa)], [cc1_relset_1])).
% 0.18/0.57  thf('26', plain, ((v1_relat_1 @ sk_D)),
% 0.18/0.57      inference('sup-', [status(thm)], ['24', '25'])).
% 0.18/0.57  thf('27', plain, ((v2_funct_2 @ sk_D @ sk_A)),
% 0.18/0.57      inference('demod', [status(thm)], ['19', '22', '23', '26'])).
% 0.18/0.57  thf('28', plain,
% 0.18/0.57      ((~ (v2_funct_2 @ sk_D @ sk_A)) <= (~ ((v2_funct_2 @ sk_D @ sk_A)))),
% 0.18/0.57      inference('split', [status(esa)], ['0'])).
% 0.18/0.57  thf('29', plain, (((v2_funct_2 @ sk_D @ sk_A))),
% 0.18/0.57      inference('sup-', [status(thm)], ['27', '28'])).
% 0.18/0.57  thf('30', plain, (~ ((v2_funct_1 @ sk_C)) | ~ ((v2_funct_2 @ sk_D @ sk_A))),
% 0.18/0.57      inference('split', [status(esa)], ['0'])).
% 0.18/0.57  thf('31', plain, (~ ((v2_funct_1 @ sk_C))),
% 0.18/0.57      inference('sat_resolution*', [status(thm)], ['29', '30'])).
% 0.18/0.57  thf('32', plain, (~ (v2_funct_1 @ sk_C)),
% 0.18/0.57      inference('simpl_trail', [status(thm)], ['1', '31'])).
% 0.18/0.57  thf(t29_mcart_1, axiom,
% 0.18/0.57    (![A:$i]:
% 0.18/0.57     ( ~( ( ( A ) != ( k1_xboole_0 ) ) & 
% 0.18/0.57          ( ![B:$i]:
% 0.18/0.57            ( ~( ( r2_hidden @ B @ A ) & 
% 0.18/0.57                 ( ![C:$i,D:$i,E:$i]:
% 0.18/0.57                   ( ~( ( ( r2_hidden @ C @ A ) | ( r2_hidden @ D @ A ) ) & 
% 0.18/0.57                        ( ( B ) = ( k3_mcart_1 @ C @ D @ E ) ) ) ) ) ) ) ) ) ))).
% 0.18/0.57  thf('33', plain,
% 0.18/0.57      (![X22 : $i]:
% 0.18/0.57         (((X22) = (k1_xboole_0)) | (r2_hidden @ (sk_B @ X22) @ X22))),
% 0.18/0.57      inference('cnf', [status(esa)], [t29_mcart_1])).
% 0.18/0.57  thf('34', plain,
% 0.18/0.57      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B_1)))),
% 0.18/0.57      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.18/0.57  thf(t5_subset, axiom,
% 0.18/0.57    (![A:$i,B:$i,C:$i]:
% 0.18/0.57     ( ~( ( r2_hidden @ A @ B ) & ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ C ) ) & 
% 0.18/0.57          ( v1_xboole_0 @ C ) ) ))).
% 0.18/0.57  thf('35', plain,
% 0.18/0.57      (![X3 : $i, X4 : $i, X5 : $i]:
% 0.18/0.57         (~ (r2_hidden @ X3 @ X4)
% 0.18/0.57          | ~ (v1_xboole_0 @ X5)
% 0.18/0.57          | ~ (m1_subset_1 @ X4 @ (k1_zfmisc_1 @ X5)))),
% 0.18/0.57      inference('cnf', [status(esa)], [t5_subset])).
% 0.18/0.57  thf('36', plain,
% 0.18/0.57      (![X0 : $i]:
% 0.18/0.57         (~ (v1_xboole_0 @ (k2_zfmisc_1 @ sk_A @ sk_B_1))
% 0.18/0.57          | ~ (r2_hidden @ X0 @ sk_C))),
% 0.18/0.57      inference('sup-', [status(thm)], ['34', '35'])).
% 0.18/0.57  thf('37', plain,
% 0.18/0.57      ((r2_relset_1 @ sk_A @ sk_A @ 
% 0.18/0.57        (k1_partfun1 @ sk_A @ sk_B_1 @ sk_B_1 @ sk_A @ sk_C @ sk_D) @ 
% 0.18/0.57        (k6_partfun1 @ sk_A))),
% 0.18/0.57      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.18/0.57  thf('38', plain,
% 0.18/0.57      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B_1 @ sk_A)))),
% 0.18/0.57      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.18/0.57  thf('39', plain,
% 0.18/0.57      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B_1)))),
% 0.18/0.57      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.18/0.57  thf(dt_k1_partfun1, axiom,
% 0.18/0.57    (![A:$i,B:$i,C:$i,D:$i,E:$i,F:$i]:
% 0.18/0.57     ( ( ( v1_funct_1 @ E ) & 
% 0.18/0.57         ( m1_subset_1 @ E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) & 
% 0.18/0.57         ( v1_funct_1 @ F ) & 
% 0.18/0.57         ( m1_subset_1 @ F @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ D ) ) ) ) =>
% 0.18/0.57       ( ( v1_funct_1 @ ( k1_partfun1 @ A @ B @ C @ D @ E @ F ) ) & 
% 0.18/0.57         ( m1_subset_1 @
% 0.18/0.57           ( k1_partfun1 @ A @ B @ C @ D @ E @ F ) @ 
% 0.18/0.57           ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ D ) ) ) ) ))).
% 0.18/0.57  thf('40', plain,
% 0.18/0.57      (![X28 : $i, X29 : $i, X30 : $i, X31 : $i, X32 : $i, X33 : $i]:
% 0.18/0.57         (~ (m1_subset_1 @ X28 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X29 @ X30)))
% 0.18/0.57          | ~ (v1_funct_1 @ X28)
% 0.18/0.57          | ~ (v1_funct_1 @ X31)
% 0.18/0.57          | ~ (m1_subset_1 @ X31 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X32 @ X33)))
% 0.18/0.57          | (m1_subset_1 @ (k1_partfun1 @ X29 @ X30 @ X32 @ X33 @ X28 @ X31) @ 
% 0.18/0.57             (k1_zfmisc_1 @ (k2_zfmisc_1 @ X29 @ X33))))),
% 0.18/0.57      inference('cnf', [status(esa)], [dt_k1_partfun1])).
% 0.18/0.57  thf('41', plain,
% 0.18/0.57      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.18/0.57         ((m1_subset_1 @ (k1_partfun1 @ sk_A @ sk_B_1 @ X2 @ X0 @ sk_C @ X1) @ 
% 0.18/0.57           (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ X0)))
% 0.18/0.57          | ~ (m1_subset_1 @ X1 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X2 @ X0)))
% 0.18/0.57          | ~ (v1_funct_1 @ X1)
% 0.18/0.57          | ~ (v1_funct_1 @ sk_C))),
% 0.18/0.57      inference('sup-', [status(thm)], ['39', '40'])).
% 0.18/0.57  thf('42', plain, ((v1_funct_1 @ sk_C)),
% 0.18/0.57      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.18/0.57  thf('43', plain,
% 0.18/0.57      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.18/0.57         ((m1_subset_1 @ (k1_partfun1 @ sk_A @ sk_B_1 @ X2 @ X0 @ sk_C @ X1) @ 
% 0.18/0.57           (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ X0)))
% 0.18/0.57          | ~ (m1_subset_1 @ X1 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X2 @ X0)))
% 0.18/0.57          | ~ (v1_funct_1 @ X1))),
% 0.18/0.57      inference('demod', [status(thm)], ['41', '42'])).
% 0.18/0.57  thf('44', plain,
% 0.18/0.57      ((~ (v1_funct_1 @ sk_D)
% 0.18/0.57        | (m1_subset_1 @ 
% 0.18/0.57           (k1_partfun1 @ sk_A @ sk_B_1 @ sk_B_1 @ sk_A @ sk_C @ sk_D) @ 
% 0.18/0.57           (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_A))))),
% 0.18/0.57      inference('sup-', [status(thm)], ['38', '43'])).
% 0.18/0.57  thf('45', plain, ((v1_funct_1 @ sk_D)),
% 0.18/0.57      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.18/0.57  thf('46', plain,
% 0.18/0.57      ((m1_subset_1 @ 
% 0.18/0.57        (k1_partfun1 @ sk_A @ sk_B_1 @ sk_B_1 @ sk_A @ sk_C @ sk_D) @ 
% 0.18/0.57        (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_A)))),
% 0.18/0.57      inference('demod', [status(thm)], ['44', '45'])).
% 0.18/0.57  thf(redefinition_r2_relset_1, axiom,
% 0.18/0.57    (![A:$i,B:$i,C:$i,D:$i]:
% 0.18/0.57     ( ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) & 
% 0.18/0.57         ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) =>
% 0.18/0.57       ( ( r2_relset_1 @ A @ B @ C @ D ) <=> ( ( C ) = ( D ) ) ) ))).
% 0.18/0.57  thf('47', plain,
% 0.18/0.57      (![X17 : $i, X18 : $i, X19 : $i, X20 : $i]:
% 0.18/0.57         (~ (m1_subset_1 @ X17 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X18 @ X19)))
% 0.18/0.57          | ~ (m1_subset_1 @ X20 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X18 @ X19)))
% 0.18/0.57          | ((X17) = (X20))
% 0.18/0.57          | ~ (r2_relset_1 @ X18 @ X19 @ X17 @ X20))),
% 0.18/0.57      inference('cnf', [status(esa)], [redefinition_r2_relset_1])).
% 0.18/0.57  thf('48', plain,
% 0.18/0.57      (![X0 : $i]:
% 0.18/0.57         (~ (r2_relset_1 @ sk_A @ sk_A @ 
% 0.18/0.57             (k1_partfun1 @ sk_A @ sk_B_1 @ sk_B_1 @ sk_A @ sk_C @ sk_D) @ X0)
% 0.18/0.57          | ((k1_partfun1 @ sk_A @ sk_B_1 @ sk_B_1 @ sk_A @ sk_C @ sk_D) = (X0))
% 0.18/0.57          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_A))))),
% 0.18/0.57      inference('sup-', [status(thm)], ['46', '47'])).
% 0.18/0.57  thf('49', plain,
% 0.18/0.57      ((~ (m1_subset_1 @ (k6_partfun1 @ sk_A) @ 
% 0.18/0.57           (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_A)))
% 0.18/0.57        | ((k1_partfun1 @ sk_A @ sk_B_1 @ sk_B_1 @ sk_A @ sk_C @ sk_D)
% 0.18/0.57            = (k6_partfun1 @ sk_A)))),
% 0.18/0.57      inference('sup-', [status(thm)], ['37', '48'])).
% 0.18/0.57  thf(t29_relset_1, axiom,
% 0.18/0.57    (![A:$i]:
% 0.18/0.57     ( m1_subset_1 @
% 0.18/0.57       ( k6_relat_1 @ A ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ A ) ) ))).
% 0.18/0.57  thf('50', plain,
% 0.18/0.57      (![X21 : $i]:
% 0.18/0.57         (m1_subset_1 @ (k6_relat_1 @ X21) @ 
% 0.18/0.57          (k1_zfmisc_1 @ (k2_zfmisc_1 @ X21 @ X21)))),
% 0.18/0.57      inference('cnf', [status(esa)], [t29_relset_1])).
% 0.18/0.57  thf(redefinition_k6_partfun1, axiom,
% 0.18/0.57    (![A:$i]: ( ( k6_partfun1 @ A ) = ( k6_relat_1 @ A ) ))).
% 0.18/0.57  thf('51', plain, (![X34 : $i]: ((k6_partfun1 @ X34) = (k6_relat_1 @ X34))),
% 0.18/0.57      inference('cnf', [status(esa)], [redefinition_k6_partfun1])).
% 0.18/0.57  thf('52', plain,
% 0.18/0.57      (![X21 : $i]:
% 0.18/0.57         (m1_subset_1 @ (k6_partfun1 @ X21) @ 
% 0.18/0.57          (k1_zfmisc_1 @ (k2_zfmisc_1 @ X21 @ X21)))),
% 0.18/0.57      inference('demod', [status(thm)], ['50', '51'])).
% 0.18/0.57  thf('53', plain,
% 0.18/0.57      (((k1_partfun1 @ sk_A @ sk_B_1 @ sk_B_1 @ sk_A @ sk_C @ sk_D)
% 0.18/0.57         = (k6_partfun1 @ sk_A))),
% 0.18/0.57      inference('demod', [status(thm)], ['49', '52'])).
% 0.18/0.57  thf('54', plain,
% 0.18/0.57      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B_1 @ sk_A)))),
% 0.18/0.57      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.18/0.57  thf(t26_funct_2, axiom,
% 0.18/0.57    (![A:$i,B:$i,C:$i,D:$i]:
% 0.18/0.57     ( ( ( v1_funct_1 @ D ) & ( v1_funct_2 @ D @ A @ B ) & 
% 0.18/0.57         ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) =>
% 0.18/0.57       ( ![E:$i]:
% 0.18/0.57         ( ( ( v1_funct_1 @ E ) & ( v1_funct_2 @ E @ B @ C ) & 
% 0.18/0.57             ( m1_subset_1 @ E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ C ) ) ) ) =>
% 0.18/0.57           ( ( v2_funct_1 @ ( k1_partfun1 @ A @ B @ B @ C @ D @ E ) ) =>
% 0.18/0.57             ( ( ( ( C ) = ( k1_xboole_0 ) ) & ( ( B ) != ( k1_xboole_0 ) ) ) | 
% 0.18/0.57               ( v2_funct_1 @ D ) ) ) ) ) ))).
% 0.18/0.57  thf('55', plain,
% 0.18/0.57      (![X39 : $i, X40 : $i, X41 : $i, X42 : $i, X43 : $i]:
% 0.18/0.57         (~ (v1_funct_1 @ X39)
% 0.18/0.57          | ~ (v1_funct_2 @ X39 @ X40 @ X41)
% 0.18/0.57          | ~ (m1_subset_1 @ X39 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X40 @ X41)))
% 0.18/0.57          | ~ (v2_funct_1 @ (k1_partfun1 @ X42 @ X40 @ X40 @ X41 @ X43 @ X39))
% 0.18/0.57          | (v2_funct_1 @ X43)
% 0.18/0.57          | ((X41) = (k1_xboole_0))
% 0.18/0.57          | ~ (m1_subset_1 @ X43 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X42 @ X40)))
% 0.18/0.57          | ~ (v1_funct_2 @ X43 @ X42 @ X40)
% 0.18/0.57          | ~ (v1_funct_1 @ X43))),
% 0.18/0.57      inference('cnf', [status(esa)], [t26_funct_2])).
% 0.18/0.57  thf('56', plain,
% 0.18/0.57      (![X0 : $i, X1 : $i]:
% 0.18/0.57         (~ (v1_funct_1 @ X0)
% 0.18/0.57          | ~ (v1_funct_2 @ X0 @ X1 @ sk_B_1)
% 0.18/0.57          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X1 @ sk_B_1)))
% 0.18/0.57          | ((sk_A) = (k1_xboole_0))
% 0.18/0.57          | (v2_funct_1 @ X0)
% 0.18/0.57          | ~ (v2_funct_1 @ 
% 0.18/0.57               (k1_partfun1 @ X1 @ sk_B_1 @ sk_B_1 @ sk_A @ X0 @ sk_D))
% 0.18/0.57          | ~ (v1_funct_2 @ sk_D @ sk_B_1 @ sk_A)
% 0.18/0.57          | ~ (v1_funct_1 @ sk_D))),
% 0.18/0.57      inference('sup-', [status(thm)], ['54', '55'])).
% 0.18/0.57  thf('57', plain, ((v1_funct_2 @ sk_D @ sk_B_1 @ sk_A)),
% 0.18/0.57      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.18/0.57  thf('58', plain, ((v1_funct_1 @ sk_D)),
% 0.18/0.57      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.18/0.57  thf('59', plain,
% 0.18/0.57      (![X0 : $i, X1 : $i]:
% 0.18/0.57         (~ (v1_funct_1 @ X0)
% 0.18/0.57          | ~ (v1_funct_2 @ X0 @ X1 @ sk_B_1)
% 0.18/0.57          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X1 @ sk_B_1)))
% 0.18/0.57          | ((sk_A) = (k1_xboole_0))
% 0.18/0.57          | (v2_funct_1 @ X0)
% 0.18/0.57          | ~ (v2_funct_1 @ 
% 0.18/0.57               (k1_partfun1 @ X1 @ sk_B_1 @ sk_B_1 @ sk_A @ X0 @ sk_D)))),
% 0.18/0.57      inference('demod', [status(thm)], ['56', '57', '58'])).
% 0.18/0.57  thf('60', plain,
% 0.18/0.57      ((~ (v2_funct_1 @ (k6_partfun1 @ sk_A))
% 0.18/0.57        | (v2_funct_1 @ sk_C)
% 0.18/0.57        | ((sk_A) = (k1_xboole_0))
% 0.18/0.57        | ~ (m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B_1)))
% 0.18/0.57        | ~ (v1_funct_2 @ sk_C @ sk_A @ sk_B_1)
% 0.18/0.57        | ~ (v1_funct_1 @ sk_C))),
% 0.18/0.57      inference('sup-', [status(thm)], ['53', '59'])).
% 0.18/0.57  thf(fc4_funct_1, axiom,
% 0.18/0.57    (![A:$i]:
% 0.18/0.57     ( ( v2_funct_1 @ ( k6_relat_1 @ A ) ) & 
% 0.18/0.57       ( v1_relat_1 @ ( k6_relat_1 @ A ) ) ))).
% 0.18/0.57  thf('61', plain, (![X7 : $i]: (v2_funct_1 @ (k6_relat_1 @ X7))),
% 0.18/0.57      inference('cnf', [status(esa)], [fc4_funct_1])).
% 0.18/0.57  thf('62', plain, (![X34 : $i]: ((k6_partfun1 @ X34) = (k6_relat_1 @ X34))),
% 0.18/0.57      inference('cnf', [status(esa)], [redefinition_k6_partfun1])).
% 0.18/0.57  thf('63', plain, (![X7 : $i]: (v2_funct_1 @ (k6_partfun1 @ X7))),
% 0.18/0.57      inference('demod', [status(thm)], ['61', '62'])).
% 0.18/0.57  thf('64', plain,
% 0.18/0.57      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B_1)))),
% 0.18/0.57      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.18/0.57  thf('65', plain, ((v1_funct_2 @ sk_C @ sk_A @ sk_B_1)),
% 0.18/0.57      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.18/0.57  thf('66', plain, ((v1_funct_1 @ sk_C)),
% 0.18/0.57      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.18/0.57  thf('67', plain, (((v2_funct_1 @ sk_C) | ((sk_A) = (k1_xboole_0)))),
% 0.18/0.57      inference('demod', [status(thm)], ['60', '63', '64', '65', '66'])).
% 0.18/0.57  thf('68', plain, (~ (v2_funct_1 @ sk_C)),
% 0.18/0.57      inference('simpl_trail', [status(thm)], ['1', '31'])).
% 0.18/0.57  thf('69', plain, (((sk_A) = (k1_xboole_0))),
% 0.18/0.57      inference('clc', [status(thm)], ['67', '68'])).
% 0.18/0.57  thf(t113_zfmisc_1, axiom,
% 0.18/0.57    (![A:$i,B:$i]:
% 0.18/0.57     ( ( ( k2_zfmisc_1 @ A @ B ) = ( k1_xboole_0 ) ) <=>
% 0.18/0.57       ( ( ( A ) = ( k1_xboole_0 ) ) | ( ( B ) = ( k1_xboole_0 ) ) ) ))).
% 0.18/0.57  thf('70', plain,
% 0.18/0.57      (![X1 : $i, X2 : $i]:
% 0.18/0.57         (((k2_zfmisc_1 @ X1 @ X2) = (k1_xboole_0)) | ((X1) != (k1_xboole_0)))),
% 0.18/0.57      inference('cnf', [status(esa)], [t113_zfmisc_1])).
% 0.18/0.57  thf('71', plain,
% 0.18/0.57      (![X2 : $i]: ((k2_zfmisc_1 @ k1_xboole_0 @ X2) = (k1_xboole_0))),
% 0.18/0.57      inference('simplify', [status(thm)], ['70'])).
% 0.18/0.57  thf(fc1_xboole_0, axiom, (v1_xboole_0 @ k1_xboole_0)).
% 0.18/0.57  thf('72', plain, ((v1_xboole_0 @ k1_xboole_0)),
% 0.18/0.57      inference('cnf', [status(esa)], [fc1_xboole_0])).
% 0.18/0.57  thf('73', plain, (![X0 : $i]: ~ (r2_hidden @ X0 @ sk_C)),
% 0.18/0.57      inference('demod', [status(thm)], ['36', '69', '71', '72'])).
% 0.18/0.57  thf('74', plain, (((sk_C) = (k1_xboole_0))),
% 0.18/0.57      inference('sup-', [status(thm)], ['33', '73'])).
% 0.18/0.57  thf(t81_relat_1, axiom, (( k6_relat_1 @ k1_xboole_0 ) = ( k1_xboole_0 ))).
% 0.18/0.57  thf('75', plain, (((k6_relat_1 @ k1_xboole_0) = (k1_xboole_0))),
% 0.18/0.57      inference('cnf', [status(esa)], [t81_relat_1])).
% 0.18/0.57  thf('76', plain, (![X34 : $i]: ((k6_partfun1 @ X34) = (k6_relat_1 @ X34))),
% 0.18/0.57      inference('cnf', [status(esa)], [redefinition_k6_partfun1])).
% 0.18/0.57  thf('77', plain, (((k6_partfun1 @ k1_xboole_0) = (k1_xboole_0))),
% 0.18/0.57      inference('demod', [status(thm)], ['75', '76'])).
% 0.18/0.57  thf('78', plain, (![X7 : $i]: (v2_funct_1 @ (k6_partfun1 @ X7))),
% 0.18/0.57      inference('demod', [status(thm)], ['61', '62'])).
% 0.18/0.57  thf('79', plain, ((v2_funct_1 @ k1_xboole_0)),
% 0.18/0.57      inference('sup+', [status(thm)], ['77', '78'])).
% 0.18/0.57  thf('80', plain, ($false),
% 0.18/0.57      inference('demod', [status(thm)], ['32', '74', '79'])).
% 0.18/0.57  
% 0.18/0.57  % SZS output end Refutation
% 0.18/0.57  
% 0.41/0.58  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
