%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.w9D09ojhMJ

% Computer   : n001.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:45:36 EST 2020

% Result     : Theorem 0.20s
% Output     : Refutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :  102 ( 390 expanded)
%              Number of leaves         :   20 ( 125 expanded)
%              Depth                    :   14
%              Number of atoms          :  711 (5585 expanded)
%              Number of equality atoms :   67 ( 600 expanded)
%              Maximal formula depth    :   12 (   5 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k2_relat_1_type,type,(
    k2_relat_1: $i > $i )).

thf(k5_relat_1_type,type,(
    k5_relat_1: $i > $i > $i )).

thf(v1_funct_1_type,type,(
    v1_funct_1: $i > $o )).

thf(k1_relat_1_type,type,(
    k1_relat_1: $i > $i )).

thf(k2_funct_1_type,type,(
    k2_funct_1: $i > $i )).

thf(k4_relat_1_type,type,(
    k4_relat_1: $i > $i )).

thf(k6_relat_1_type,type,(
    k6_relat_1: $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(v2_funct_1_type,type,(
    v2_funct_1: $i > $o )).

thf(t63_funct_1,conjecture,(
    ! [A: $i] :
      ( ( ( v1_relat_1 @ A )
        & ( v1_funct_1 @ A ) )
     => ! [B: $i] :
          ( ( ( v1_relat_1 @ B )
            & ( v1_funct_1 @ B ) )
         => ( ( ( v2_funct_1 @ A )
              & ( ( k2_relat_1 @ A )
                = ( k1_relat_1 @ B ) )
              & ( ( k5_relat_1 @ A @ B )
                = ( k6_relat_1 @ ( k1_relat_1 @ A ) ) ) )
           => ( B
              = ( k2_funct_1 @ A ) ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i] :
        ( ( ( v1_relat_1 @ A )
          & ( v1_funct_1 @ A ) )
       => ! [B: $i] :
            ( ( ( v1_relat_1 @ B )
              & ( v1_funct_1 @ B ) )
           => ( ( ( v2_funct_1 @ A )
                & ( ( k2_relat_1 @ A )
                  = ( k1_relat_1 @ B ) )
                & ( ( k5_relat_1 @ A @ B )
                  = ( k6_relat_1 @ ( k1_relat_1 @ A ) ) ) )
             => ( B
                = ( k2_funct_1 @ A ) ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t63_funct_1])).

thf('0',plain,
    ( ( k5_relat_1 @ sk_A @ sk_B )
    = ( k6_relat_1 @ ( k1_relat_1 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,(
    v1_relat_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t37_relat_1,axiom,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ( ( ( k2_relat_1 @ A )
          = ( k1_relat_1 @ ( k4_relat_1 @ A ) ) )
        & ( ( k1_relat_1 @ A )
          = ( k2_relat_1 @ ( k4_relat_1 @ A ) ) ) ) ) )).

thf('2',plain,(
    ! [X3: $i] :
      ( ( ( k1_relat_1 @ X3 )
        = ( k2_relat_1 @ ( k4_relat_1 @ X3 ) ) )
      | ~ ( v1_relat_1 @ X3 ) ) ),
    inference(cnf,[status(esa)],[t37_relat_1])).

thf('3',plain,
    ( ( k1_relat_1 @ sk_A )
    = ( k2_relat_1 @ ( k4_relat_1 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['1','2'])).

thf('4',plain,
    ( ( k5_relat_1 @ sk_A @ sk_B )
    = ( k6_relat_1 @ ( k2_relat_1 @ ( k4_relat_1 @ sk_A ) ) ) ),
    inference(demod,[status(thm)],['0','3'])).

thf('5',plain,(
    v1_relat_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(d9_funct_1,axiom,(
    ! [A: $i] :
      ( ( ( v1_relat_1 @ A )
        & ( v1_funct_1 @ A ) )
     => ( ( v2_funct_1 @ A )
       => ( ( k2_funct_1 @ A )
          = ( k4_relat_1 @ A ) ) ) ) )).

thf('6',plain,(
    ! [X9: $i] :
      ( ~ ( v2_funct_1 @ X9 )
      | ( ( k2_funct_1 @ X9 )
        = ( k4_relat_1 @ X9 ) )
      | ~ ( v1_funct_1 @ X9 )
      | ~ ( v1_relat_1 @ X9 ) ) ),
    inference(cnf,[status(esa)],[d9_funct_1])).

thf('7',plain,
    ( ~ ( v1_funct_1 @ sk_A )
    | ( ( k2_funct_1 @ sk_A )
      = ( k4_relat_1 @ sk_A ) )
    | ~ ( v2_funct_1 @ sk_A ) ),
    inference('sup-',[status(thm)],['5','6'])).

thf('8',plain,(
    v1_funct_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('9',plain,(
    v2_funct_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('10',plain,
    ( ( k2_funct_1 @ sk_A )
    = ( k4_relat_1 @ sk_A ) ),
    inference(demod,[status(thm)],['7','8','9'])).

thf(t61_funct_1,axiom,(
    ! [A: $i] :
      ( ( ( v1_relat_1 @ A )
        & ( v1_funct_1 @ A ) )
     => ( ( v2_funct_1 @ A )
       => ( ( ( k5_relat_1 @ A @ ( k2_funct_1 @ A ) )
            = ( k6_relat_1 @ ( k1_relat_1 @ A ) ) )
          & ( ( k5_relat_1 @ ( k2_funct_1 @ A ) @ A )
            = ( k6_relat_1 @ ( k2_relat_1 @ A ) ) ) ) ) ) )).

thf('11',plain,(
    ! [X11: $i] :
      ( ~ ( v2_funct_1 @ X11 )
      | ( ( k5_relat_1 @ ( k2_funct_1 @ X11 ) @ X11 )
        = ( k6_relat_1 @ ( k2_relat_1 @ X11 ) ) )
      | ~ ( v1_funct_1 @ X11 )
      | ~ ( v1_relat_1 @ X11 ) ) ),
    inference(cnf,[status(esa)],[t61_funct_1])).

thf('12',plain,
    ( ( ( k5_relat_1 @ ( k4_relat_1 @ sk_A ) @ sk_A )
      = ( k6_relat_1 @ ( k2_relat_1 @ sk_A ) ) )
    | ~ ( v1_relat_1 @ sk_A )
    | ~ ( v1_funct_1 @ sk_A )
    | ~ ( v2_funct_1 @ sk_A ) ),
    inference('sup+',[status(thm)],['10','11'])).

thf('13',plain,
    ( ( k2_relat_1 @ sk_A )
    = ( k1_relat_1 @ sk_B ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('14',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('15',plain,(
    ! [X3: $i] :
      ( ( ( k1_relat_1 @ X3 )
        = ( k2_relat_1 @ ( k4_relat_1 @ X3 ) ) )
      | ~ ( v1_relat_1 @ X3 ) ) ),
    inference(cnf,[status(esa)],[t37_relat_1])).

thf('16',plain,
    ( ( k1_relat_1 @ sk_B )
    = ( k2_relat_1 @ ( k4_relat_1 @ sk_B ) ) ),
    inference('sup-',[status(thm)],['14','15'])).

thf('17',plain,
    ( ( k2_relat_1 @ sk_A )
    = ( k2_relat_1 @ ( k4_relat_1 @ sk_B ) ) ),
    inference(demod,[status(thm)],['13','16'])).

thf('18',plain,(
    v1_relat_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('19',plain,(
    v1_funct_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('20',plain,(
    v2_funct_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('21',plain,
    ( ( k5_relat_1 @ ( k4_relat_1 @ sk_A ) @ sk_A )
    = ( k6_relat_1 @ ( k2_relat_1 @ ( k4_relat_1 @ sk_B ) ) ) ),
    inference(demod,[status(thm)],['12','17','18','19','20'])).

thf(t55_relat_1,axiom,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ! [B: $i] :
          ( ( v1_relat_1 @ B )
         => ! [C: $i] :
              ( ( v1_relat_1 @ C )
             => ( ( k5_relat_1 @ ( k5_relat_1 @ A @ B ) @ C )
                = ( k5_relat_1 @ A @ ( k5_relat_1 @ B @ C ) ) ) ) ) ) )).

thf('22',plain,(
    ! [X4: $i,X5: $i,X6: $i] :
      ( ~ ( v1_relat_1 @ X4 )
      | ( ( k5_relat_1 @ ( k5_relat_1 @ X5 @ X4 ) @ X6 )
        = ( k5_relat_1 @ X5 @ ( k5_relat_1 @ X4 @ X6 ) ) )
      | ~ ( v1_relat_1 @ X6 )
      | ~ ( v1_relat_1 @ X5 ) ) ),
    inference(cnf,[status(esa)],[t55_relat_1])).

thf('23',plain,(
    ! [X0: $i] :
      ( ( ( k5_relat_1 @ ( k6_relat_1 @ ( k2_relat_1 @ ( k4_relat_1 @ sk_B ) ) ) @ X0 )
        = ( k5_relat_1 @ ( k4_relat_1 @ sk_A ) @ ( k5_relat_1 @ sk_A @ X0 ) ) )
      | ~ ( v1_relat_1 @ ( k4_relat_1 @ sk_A ) )
      | ~ ( v1_relat_1 @ X0 )
      | ~ ( v1_relat_1 @ sk_A ) ) ),
    inference('sup+',[status(thm)],['21','22'])).

thf('24',plain,
    ( ( k2_funct_1 @ sk_A )
    = ( k4_relat_1 @ sk_A ) ),
    inference(demod,[status(thm)],['7','8','9'])).

thf(dt_k2_funct_1,axiom,(
    ! [A: $i] :
      ( ( ( v1_relat_1 @ A )
        & ( v1_funct_1 @ A ) )
     => ( ( v1_relat_1 @ ( k2_funct_1 @ A ) )
        & ( v1_funct_1 @ ( k2_funct_1 @ A ) ) ) ) )).

thf('25',plain,(
    ! [X10: $i] :
      ( ( v1_relat_1 @ ( k2_funct_1 @ X10 ) )
      | ~ ( v1_funct_1 @ X10 )
      | ~ ( v1_relat_1 @ X10 ) ) ),
    inference(cnf,[status(esa)],[dt_k2_funct_1])).

thf('26',plain,
    ( ( v1_relat_1 @ ( k4_relat_1 @ sk_A ) )
    | ~ ( v1_relat_1 @ sk_A )
    | ~ ( v1_funct_1 @ sk_A ) ),
    inference('sup+',[status(thm)],['24','25'])).

thf('27',plain,(
    v1_relat_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('28',plain,(
    v1_funct_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('29',plain,(
    v1_relat_1 @ ( k4_relat_1 @ sk_A ) ),
    inference(demod,[status(thm)],['26','27','28'])).

thf('30',plain,(
    v1_relat_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('31',plain,(
    ! [X0: $i] :
      ( ( ( k5_relat_1 @ ( k6_relat_1 @ ( k2_relat_1 @ ( k4_relat_1 @ sk_B ) ) ) @ X0 )
        = ( k5_relat_1 @ ( k4_relat_1 @ sk_A ) @ ( k5_relat_1 @ sk_A @ X0 ) ) )
      | ~ ( v1_relat_1 @ X0 ) ) ),
    inference(demod,[status(thm)],['23','29','30'])).

thf('32',plain,
    ( ( ( k5_relat_1 @ ( k6_relat_1 @ ( k2_relat_1 @ ( k4_relat_1 @ sk_B ) ) ) @ sk_B )
      = ( k5_relat_1 @ ( k4_relat_1 @ sk_A ) @ ( k6_relat_1 @ ( k2_relat_1 @ ( k4_relat_1 @ sk_A ) ) ) ) )
    | ~ ( v1_relat_1 @ sk_B ) ),
    inference('sup+',[status(thm)],['4','31'])).

thf(d10_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( A = B )
    <=> ( ( r1_tarski @ A @ B )
        & ( r1_tarski @ B @ A ) ) ) )).

thf('33',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r1_tarski @ X0 @ X1 )
      | ( X0 != X1 ) ) ),
    inference(cnf,[status(esa)],[d10_xboole_0])).

thf('34',plain,(
    ! [X1: $i] :
      ( r1_tarski @ X1 @ X1 ) ),
    inference(simplify,[status(thm)],['33'])).

thf('35',plain,
    ( ( k1_relat_1 @ sk_B )
    = ( k2_relat_1 @ ( k4_relat_1 @ sk_B ) ) ),
    inference('sup-',[status(thm)],['14','15'])).

thf(t77_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( ( r1_tarski @ ( k1_relat_1 @ B ) @ A )
       => ( ( k5_relat_1 @ ( k6_relat_1 @ A ) @ B )
          = B ) ) ) )).

thf('36',plain,(
    ! [X7: $i,X8: $i] :
      ( ~ ( r1_tarski @ ( k1_relat_1 @ X7 ) @ X8 )
      | ( ( k5_relat_1 @ ( k6_relat_1 @ X8 ) @ X7 )
        = X7 )
      | ~ ( v1_relat_1 @ X7 ) ) ),
    inference(cnf,[status(esa)],[t77_relat_1])).

thf('37',plain,(
    ! [X0: $i] :
      ( ~ ( r1_tarski @ ( k2_relat_1 @ ( k4_relat_1 @ sk_B ) ) @ X0 )
      | ~ ( v1_relat_1 @ sk_B )
      | ( ( k5_relat_1 @ ( k6_relat_1 @ X0 ) @ sk_B )
        = sk_B ) ) ),
    inference('sup-',[status(thm)],['35','36'])).

thf('38',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('39',plain,(
    ! [X0: $i] :
      ( ~ ( r1_tarski @ ( k2_relat_1 @ ( k4_relat_1 @ sk_B ) ) @ X0 )
      | ( ( k5_relat_1 @ ( k6_relat_1 @ X0 ) @ sk_B )
        = sk_B ) ) ),
    inference(demod,[status(thm)],['37','38'])).

thf('40',plain,
    ( ( k5_relat_1 @ ( k6_relat_1 @ ( k2_relat_1 @ ( k4_relat_1 @ sk_B ) ) ) @ sk_B )
    = sk_B ),
    inference('sup-',[status(thm)],['34','39'])).

thf('41',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('42',plain,
    ( sk_B
    = ( k5_relat_1 @ ( k4_relat_1 @ sk_A ) @ ( k6_relat_1 @ ( k2_relat_1 @ ( k4_relat_1 @ sk_A ) ) ) ) ),
    inference(demod,[status(thm)],['32','40','41'])).

thf('43',plain,(
    ! [X11: $i] :
      ( ~ ( v2_funct_1 @ X11 )
      | ( ( k5_relat_1 @ X11 @ ( k2_funct_1 @ X11 ) )
        = ( k6_relat_1 @ ( k1_relat_1 @ X11 ) ) )
      | ~ ( v1_funct_1 @ X11 )
      | ~ ( v1_relat_1 @ X11 ) ) ),
    inference(cnf,[status(esa)],[t61_funct_1])).

thf('44',plain,(
    ! [X0: $i] :
      ( ( ( k5_relat_1 @ ( k6_relat_1 @ ( k2_relat_1 @ ( k4_relat_1 @ sk_B ) ) ) @ X0 )
        = ( k5_relat_1 @ ( k4_relat_1 @ sk_A ) @ ( k5_relat_1 @ sk_A @ X0 ) ) )
      | ~ ( v1_relat_1 @ X0 ) ) ),
    inference(demod,[status(thm)],['23','29','30'])).

thf('45',plain,
    ( ( ( k5_relat_1 @ ( k6_relat_1 @ ( k2_relat_1 @ ( k4_relat_1 @ sk_B ) ) ) @ ( k2_funct_1 @ sk_A ) )
      = ( k5_relat_1 @ ( k4_relat_1 @ sk_A ) @ ( k6_relat_1 @ ( k1_relat_1 @ sk_A ) ) ) )
    | ~ ( v1_relat_1 @ sk_A )
    | ~ ( v1_funct_1 @ sk_A )
    | ~ ( v2_funct_1 @ sk_A )
    | ~ ( v1_relat_1 @ ( k2_funct_1 @ sk_A ) ) ),
    inference('sup+',[status(thm)],['43','44'])).

thf('46',plain,
    ( ( k2_funct_1 @ sk_A )
    = ( k4_relat_1 @ sk_A ) ),
    inference(demod,[status(thm)],['7','8','9'])).

thf('47',plain,
    ( ( k2_funct_1 @ sk_A )
    = ( k4_relat_1 @ sk_A ) ),
    inference(demod,[status(thm)],['7','8','9'])).

thf('48',plain,(
    ! [X10: $i] :
      ( ( v1_relat_1 @ ( k2_funct_1 @ X10 ) )
      | ~ ( v1_funct_1 @ X10 )
      | ~ ( v1_relat_1 @ X10 ) ) ),
    inference(cnf,[status(esa)],[dt_k2_funct_1])).

thf('49',plain,(
    ! [X3: $i] :
      ( ( ( k1_relat_1 @ X3 )
        = ( k2_relat_1 @ ( k4_relat_1 @ X3 ) ) )
      | ~ ( v1_relat_1 @ X3 ) ) ),
    inference(cnf,[status(esa)],[t37_relat_1])).

thf('50',plain,(
    ! [X0: $i] :
      ( ~ ( v1_relat_1 @ X0 )
      | ~ ( v1_funct_1 @ X0 )
      | ( ( k1_relat_1 @ ( k2_funct_1 @ X0 ) )
        = ( k2_relat_1 @ ( k4_relat_1 @ ( k2_funct_1 @ X0 ) ) ) ) ) ),
    inference('sup-',[status(thm)],['48','49'])).

thf('51',plain,
    ( ( ( k1_relat_1 @ ( k4_relat_1 @ sk_A ) )
      = ( k2_relat_1 @ ( k4_relat_1 @ ( k2_funct_1 @ sk_A ) ) ) )
    | ~ ( v1_funct_1 @ sk_A )
    | ~ ( v1_relat_1 @ sk_A ) ),
    inference('sup+',[status(thm)],['47','50'])).

thf('52',plain,
    ( ( k2_funct_1 @ sk_A )
    = ( k4_relat_1 @ sk_A ) ),
    inference(demod,[status(thm)],['7','8','9'])).

thf('53',plain,(
    v1_funct_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('54',plain,(
    v1_relat_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('55',plain,
    ( ( k1_relat_1 @ ( k4_relat_1 @ sk_A ) )
    = ( k2_relat_1 @ ( k4_relat_1 @ ( k4_relat_1 @ sk_A ) ) ) ),
    inference(demod,[status(thm)],['51','52','53','54'])).

thf('56',plain,(
    ! [X3: $i] :
      ( ( ( k2_relat_1 @ X3 )
        = ( k1_relat_1 @ ( k4_relat_1 @ X3 ) ) )
      | ~ ( v1_relat_1 @ X3 ) ) ),
    inference(cnf,[status(esa)],[t37_relat_1])).

thf('57',plain,
    ( ( k1_relat_1 @ ( k4_relat_1 @ sk_A ) )
    = ( k2_relat_1 @ ( k4_relat_1 @ ( k4_relat_1 @ sk_A ) ) ) ),
    inference(demod,[status(thm)],['51','52','53','54'])).

thf('58',plain,
    ( ( ( k2_relat_1 @ sk_A )
      = ( k2_relat_1 @ ( k4_relat_1 @ ( k4_relat_1 @ sk_A ) ) ) )
    | ~ ( v1_relat_1 @ sk_A ) ),
    inference('sup+',[status(thm)],['56','57'])).

thf('59',plain,
    ( ( k2_relat_1 @ sk_A )
    = ( k2_relat_1 @ ( k4_relat_1 @ sk_B ) ) ),
    inference(demod,[status(thm)],['13','16'])).

thf('60',plain,(
    v1_relat_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('61',plain,
    ( ( k2_relat_1 @ ( k4_relat_1 @ sk_B ) )
    = ( k2_relat_1 @ ( k4_relat_1 @ ( k4_relat_1 @ sk_A ) ) ) ),
    inference(demod,[status(thm)],['58','59','60'])).

thf('62',plain,
    ( ( k1_relat_1 @ ( k4_relat_1 @ sk_A ) )
    = ( k2_relat_1 @ ( k4_relat_1 @ sk_B ) ) ),
    inference(demod,[status(thm)],['55','61'])).

thf('63',plain,(
    ! [X1: $i] :
      ( r1_tarski @ X1 @ X1 ) ),
    inference(simplify,[status(thm)],['33'])).

thf('64',plain,(
    ! [X7: $i,X8: $i] :
      ( ~ ( r1_tarski @ ( k1_relat_1 @ X7 ) @ X8 )
      | ( ( k5_relat_1 @ ( k6_relat_1 @ X8 ) @ X7 )
        = X7 )
      | ~ ( v1_relat_1 @ X7 ) ) ),
    inference(cnf,[status(esa)],[t77_relat_1])).

thf('65',plain,(
    ! [X0: $i] :
      ( ~ ( v1_relat_1 @ X0 )
      | ( ( k5_relat_1 @ ( k6_relat_1 @ ( k1_relat_1 @ X0 ) ) @ X0 )
        = X0 ) ) ),
    inference('sup-',[status(thm)],['63','64'])).

thf('66',plain,
    ( ( ( k5_relat_1 @ ( k6_relat_1 @ ( k2_relat_1 @ ( k4_relat_1 @ sk_B ) ) ) @ ( k4_relat_1 @ sk_A ) )
      = ( k4_relat_1 @ sk_A ) )
    | ~ ( v1_relat_1 @ ( k4_relat_1 @ sk_A ) ) ),
    inference('sup+',[status(thm)],['62','65'])).

thf('67',plain,(
    v1_relat_1 @ ( k4_relat_1 @ sk_A ) ),
    inference(demod,[status(thm)],['26','27','28'])).

thf('68',plain,
    ( ( k5_relat_1 @ ( k6_relat_1 @ ( k2_relat_1 @ ( k4_relat_1 @ sk_B ) ) ) @ ( k4_relat_1 @ sk_A ) )
    = ( k4_relat_1 @ sk_A ) ),
    inference(demod,[status(thm)],['66','67'])).

thf('69',plain,
    ( ( k1_relat_1 @ sk_A )
    = ( k2_relat_1 @ ( k4_relat_1 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['1','2'])).

thf('70',plain,(
    v1_relat_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('71',plain,(
    v1_funct_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('72',plain,(
    v2_funct_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('73',plain,
    ( ( k2_funct_1 @ sk_A )
    = ( k4_relat_1 @ sk_A ) ),
    inference(demod,[status(thm)],['7','8','9'])).

thf('74',plain,(
    v1_relat_1 @ ( k4_relat_1 @ sk_A ) ),
    inference(demod,[status(thm)],['26','27','28'])).

thf('75',plain,
    ( ( k4_relat_1 @ sk_A )
    = ( k5_relat_1 @ ( k4_relat_1 @ sk_A ) @ ( k6_relat_1 @ ( k2_relat_1 @ ( k4_relat_1 @ sk_A ) ) ) ) ),
    inference(demod,[status(thm)],['45','46','68','69','70','71','72','73','74'])).

thf('76',plain,
    ( ( k4_relat_1 @ sk_A )
    = sk_B ),
    inference('sup+',[status(thm)],['42','75'])).

thf('77',plain,(
    sk_B
 != ( k2_funct_1 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('78',plain,
    ( ( k2_funct_1 @ sk_A )
    = ( k4_relat_1 @ sk_A ) ),
    inference(demod,[status(thm)],['7','8','9'])).

thf('79',plain,(
    sk_B
 != ( k4_relat_1 @ sk_A ) ),
    inference(demod,[status(thm)],['77','78'])).

thf('80',plain,(
    $false ),
    inference('simplify_reflect-',[status(thm)],['76','79'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.w9D09ojhMJ
% 0.13/0.34  % Computer   : n001.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 13:17:15 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running portfolio for 600 s
% 0.13/0.34  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.13/0.35  % Number of cores: 8
% 0.13/0.35  % Python version: Python 3.6.8
% 0.13/0.35  % Running in FO mode
% 0.20/0.52  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.20/0.52  % Solved by: fo/fo7.sh
% 0.20/0.52  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.20/0.52  % done 66 iterations in 0.067s
% 0.20/0.52  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.20/0.52  % SZS output start Refutation
% 0.20/0.52  thf(k2_relat_1_type, type, k2_relat_1: $i > $i).
% 0.20/0.52  thf(k5_relat_1_type, type, k5_relat_1: $i > $i > $i).
% 0.20/0.52  thf(v1_funct_1_type, type, v1_funct_1: $i > $o).
% 0.20/0.52  thf(k1_relat_1_type, type, k1_relat_1: $i > $i).
% 0.20/0.52  thf(k2_funct_1_type, type, k2_funct_1: $i > $i).
% 0.20/0.52  thf(k4_relat_1_type, type, k4_relat_1: $i > $i).
% 0.20/0.52  thf(k6_relat_1_type, type, k6_relat_1: $i > $i).
% 0.20/0.52  thf(sk_A_type, type, sk_A: $i).
% 0.20/0.52  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.20/0.52  thf(sk_B_type, type, sk_B: $i).
% 0.20/0.52  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.20/0.52  thf(v2_funct_1_type, type, v2_funct_1: $i > $o).
% 0.20/0.52  thf(t63_funct_1, conjecture,
% 0.20/0.52    (![A:$i]:
% 0.20/0.52     ( ( ( v1_relat_1 @ A ) & ( v1_funct_1 @ A ) ) =>
% 0.20/0.52       ( ![B:$i]:
% 0.20/0.52         ( ( ( v1_relat_1 @ B ) & ( v1_funct_1 @ B ) ) =>
% 0.20/0.52           ( ( ( v2_funct_1 @ A ) & 
% 0.20/0.52               ( ( k2_relat_1 @ A ) = ( k1_relat_1 @ B ) ) & 
% 0.20/0.52               ( ( k5_relat_1 @ A @ B ) = ( k6_relat_1 @ ( k1_relat_1 @ A ) ) ) ) =>
% 0.20/0.52             ( ( B ) = ( k2_funct_1 @ A ) ) ) ) ) ))).
% 0.20/0.52  thf(zf_stmt_0, negated_conjecture,
% 0.20/0.52    (~( ![A:$i]:
% 0.20/0.52        ( ( ( v1_relat_1 @ A ) & ( v1_funct_1 @ A ) ) =>
% 0.20/0.52          ( ![B:$i]:
% 0.20/0.52            ( ( ( v1_relat_1 @ B ) & ( v1_funct_1 @ B ) ) =>
% 0.20/0.52              ( ( ( v2_funct_1 @ A ) & 
% 0.20/0.52                  ( ( k2_relat_1 @ A ) = ( k1_relat_1 @ B ) ) & 
% 0.20/0.52                  ( ( k5_relat_1 @ A @ B ) =
% 0.20/0.52                    ( k6_relat_1 @ ( k1_relat_1 @ A ) ) ) ) =>
% 0.20/0.52                ( ( B ) = ( k2_funct_1 @ A ) ) ) ) ) ) )),
% 0.20/0.52    inference('cnf.neg', [status(esa)], [t63_funct_1])).
% 0.20/0.52  thf('0', plain,
% 0.20/0.52      (((k5_relat_1 @ sk_A @ sk_B) = (k6_relat_1 @ (k1_relat_1 @ sk_A)))),
% 0.20/0.52      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.52  thf('1', plain, ((v1_relat_1 @ sk_A)),
% 0.20/0.52      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.52  thf(t37_relat_1, axiom,
% 0.20/0.52    (![A:$i]:
% 0.20/0.52     ( ( v1_relat_1 @ A ) =>
% 0.20/0.52       ( ( ( k2_relat_1 @ A ) = ( k1_relat_1 @ ( k4_relat_1 @ A ) ) ) & 
% 0.20/0.52         ( ( k1_relat_1 @ A ) = ( k2_relat_1 @ ( k4_relat_1 @ A ) ) ) ) ))).
% 0.20/0.52  thf('2', plain,
% 0.20/0.52      (![X3 : $i]:
% 0.20/0.52         (((k1_relat_1 @ X3) = (k2_relat_1 @ (k4_relat_1 @ X3)))
% 0.20/0.52          | ~ (v1_relat_1 @ X3))),
% 0.20/0.52      inference('cnf', [status(esa)], [t37_relat_1])).
% 0.20/0.52  thf('3', plain, (((k1_relat_1 @ sk_A) = (k2_relat_1 @ (k4_relat_1 @ sk_A)))),
% 0.20/0.52      inference('sup-', [status(thm)], ['1', '2'])).
% 0.20/0.52  thf('4', plain,
% 0.20/0.52      (((k5_relat_1 @ sk_A @ sk_B)
% 0.20/0.52         = (k6_relat_1 @ (k2_relat_1 @ (k4_relat_1 @ sk_A))))),
% 0.20/0.52      inference('demod', [status(thm)], ['0', '3'])).
% 0.20/0.52  thf('5', plain, ((v1_relat_1 @ sk_A)),
% 0.20/0.52      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.52  thf(d9_funct_1, axiom,
% 0.20/0.52    (![A:$i]:
% 0.20/0.52     ( ( ( v1_relat_1 @ A ) & ( v1_funct_1 @ A ) ) =>
% 0.20/0.52       ( ( v2_funct_1 @ A ) => ( ( k2_funct_1 @ A ) = ( k4_relat_1 @ A ) ) ) ))).
% 0.20/0.52  thf('6', plain,
% 0.20/0.52      (![X9 : $i]:
% 0.20/0.52         (~ (v2_funct_1 @ X9)
% 0.20/0.52          | ((k2_funct_1 @ X9) = (k4_relat_1 @ X9))
% 0.20/0.52          | ~ (v1_funct_1 @ X9)
% 0.20/0.52          | ~ (v1_relat_1 @ X9))),
% 0.20/0.52      inference('cnf', [status(esa)], [d9_funct_1])).
% 0.20/0.52  thf('7', plain,
% 0.20/0.52      ((~ (v1_funct_1 @ sk_A)
% 0.20/0.52        | ((k2_funct_1 @ sk_A) = (k4_relat_1 @ sk_A))
% 0.20/0.52        | ~ (v2_funct_1 @ sk_A))),
% 0.20/0.52      inference('sup-', [status(thm)], ['5', '6'])).
% 0.20/0.52  thf('8', plain, ((v1_funct_1 @ sk_A)),
% 0.20/0.52      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.52  thf('9', plain, ((v2_funct_1 @ sk_A)),
% 0.20/0.52      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.52  thf('10', plain, (((k2_funct_1 @ sk_A) = (k4_relat_1 @ sk_A))),
% 0.20/0.52      inference('demod', [status(thm)], ['7', '8', '9'])).
% 0.20/0.52  thf(t61_funct_1, axiom,
% 0.20/0.52    (![A:$i]:
% 0.20/0.52     ( ( ( v1_relat_1 @ A ) & ( v1_funct_1 @ A ) ) =>
% 0.20/0.52       ( ( v2_funct_1 @ A ) =>
% 0.20/0.52         ( ( ( k5_relat_1 @ A @ ( k2_funct_1 @ A ) ) =
% 0.20/0.52             ( k6_relat_1 @ ( k1_relat_1 @ A ) ) ) & 
% 0.20/0.52           ( ( k5_relat_1 @ ( k2_funct_1 @ A ) @ A ) =
% 0.20/0.52             ( k6_relat_1 @ ( k2_relat_1 @ A ) ) ) ) ) ))).
% 0.20/0.52  thf('11', plain,
% 0.20/0.52      (![X11 : $i]:
% 0.20/0.52         (~ (v2_funct_1 @ X11)
% 0.20/0.52          | ((k5_relat_1 @ (k2_funct_1 @ X11) @ X11)
% 0.20/0.52              = (k6_relat_1 @ (k2_relat_1 @ X11)))
% 0.20/0.52          | ~ (v1_funct_1 @ X11)
% 0.20/0.52          | ~ (v1_relat_1 @ X11))),
% 0.20/0.52      inference('cnf', [status(esa)], [t61_funct_1])).
% 0.20/0.52  thf('12', plain,
% 0.20/0.52      ((((k5_relat_1 @ (k4_relat_1 @ sk_A) @ sk_A)
% 0.20/0.52          = (k6_relat_1 @ (k2_relat_1 @ sk_A)))
% 0.20/0.52        | ~ (v1_relat_1 @ sk_A)
% 0.20/0.52        | ~ (v1_funct_1 @ sk_A)
% 0.20/0.52        | ~ (v2_funct_1 @ sk_A))),
% 0.20/0.52      inference('sup+', [status(thm)], ['10', '11'])).
% 0.20/0.52  thf('13', plain, (((k2_relat_1 @ sk_A) = (k1_relat_1 @ sk_B))),
% 0.20/0.52      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.52  thf('14', plain, ((v1_relat_1 @ sk_B)),
% 0.20/0.52      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.52  thf('15', plain,
% 0.20/0.52      (![X3 : $i]:
% 0.20/0.52         (((k1_relat_1 @ X3) = (k2_relat_1 @ (k4_relat_1 @ X3)))
% 0.20/0.52          | ~ (v1_relat_1 @ X3))),
% 0.20/0.52      inference('cnf', [status(esa)], [t37_relat_1])).
% 0.20/0.52  thf('16', plain,
% 0.20/0.52      (((k1_relat_1 @ sk_B) = (k2_relat_1 @ (k4_relat_1 @ sk_B)))),
% 0.20/0.52      inference('sup-', [status(thm)], ['14', '15'])).
% 0.20/0.52  thf('17', plain,
% 0.20/0.52      (((k2_relat_1 @ sk_A) = (k2_relat_1 @ (k4_relat_1 @ sk_B)))),
% 0.20/0.52      inference('demod', [status(thm)], ['13', '16'])).
% 0.20/0.52  thf('18', plain, ((v1_relat_1 @ sk_A)),
% 0.20/0.52      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.52  thf('19', plain, ((v1_funct_1 @ sk_A)),
% 0.20/0.52      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.52  thf('20', plain, ((v2_funct_1 @ sk_A)),
% 0.20/0.52      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.52  thf('21', plain,
% 0.20/0.52      (((k5_relat_1 @ (k4_relat_1 @ sk_A) @ sk_A)
% 0.20/0.52         = (k6_relat_1 @ (k2_relat_1 @ (k4_relat_1 @ sk_B))))),
% 0.20/0.52      inference('demod', [status(thm)], ['12', '17', '18', '19', '20'])).
% 0.20/0.52  thf(t55_relat_1, axiom,
% 0.20/0.52    (![A:$i]:
% 0.20/0.52     ( ( v1_relat_1 @ A ) =>
% 0.20/0.52       ( ![B:$i]:
% 0.20/0.52         ( ( v1_relat_1 @ B ) =>
% 0.20/0.52           ( ![C:$i]:
% 0.20/0.52             ( ( v1_relat_1 @ C ) =>
% 0.20/0.52               ( ( k5_relat_1 @ ( k5_relat_1 @ A @ B ) @ C ) =
% 0.20/0.52                 ( k5_relat_1 @ A @ ( k5_relat_1 @ B @ C ) ) ) ) ) ) ) ))).
% 0.20/0.52  thf('22', plain,
% 0.20/0.52      (![X4 : $i, X5 : $i, X6 : $i]:
% 0.20/0.52         (~ (v1_relat_1 @ X4)
% 0.20/0.52          | ((k5_relat_1 @ (k5_relat_1 @ X5 @ X4) @ X6)
% 0.20/0.52              = (k5_relat_1 @ X5 @ (k5_relat_1 @ X4 @ X6)))
% 0.20/0.52          | ~ (v1_relat_1 @ X6)
% 0.20/0.52          | ~ (v1_relat_1 @ X5))),
% 0.20/0.52      inference('cnf', [status(esa)], [t55_relat_1])).
% 0.20/0.52  thf('23', plain,
% 0.20/0.52      (![X0 : $i]:
% 0.20/0.52         (((k5_relat_1 @ (k6_relat_1 @ (k2_relat_1 @ (k4_relat_1 @ sk_B))) @ X0)
% 0.20/0.52            = (k5_relat_1 @ (k4_relat_1 @ sk_A) @ (k5_relat_1 @ sk_A @ X0)))
% 0.20/0.52          | ~ (v1_relat_1 @ (k4_relat_1 @ sk_A))
% 0.20/0.52          | ~ (v1_relat_1 @ X0)
% 0.20/0.52          | ~ (v1_relat_1 @ sk_A))),
% 0.20/0.52      inference('sup+', [status(thm)], ['21', '22'])).
% 0.20/0.52  thf('24', plain, (((k2_funct_1 @ sk_A) = (k4_relat_1 @ sk_A))),
% 0.20/0.52      inference('demod', [status(thm)], ['7', '8', '9'])).
% 0.20/0.52  thf(dt_k2_funct_1, axiom,
% 0.20/0.52    (![A:$i]:
% 0.20/0.52     ( ( ( v1_relat_1 @ A ) & ( v1_funct_1 @ A ) ) =>
% 0.20/0.52       ( ( v1_relat_1 @ ( k2_funct_1 @ A ) ) & 
% 0.20/0.52         ( v1_funct_1 @ ( k2_funct_1 @ A ) ) ) ))).
% 0.20/0.52  thf('25', plain,
% 0.20/0.52      (![X10 : $i]:
% 0.20/0.52         ((v1_relat_1 @ (k2_funct_1 @ X10))
% 0.20/0.52          | ~ (v1_funct_1 @ X10)
% 0.20/0.52          | ~ (v1_relat_1 @ X10))),
% 0.20/0.52      inference('cnf', [status(esa)], [dt_k2_funct_1])).
% 0.20/0.52  thf('26', plain,
% 0.20/0.52      (((v1_relat_1 @ (k4_relat_1 @ sk_A))
% 0.20/0.52        | ~ (v1_relat_1 @ sk_A)
% 0.20/0.52        | ~ (v1_funct_1 @ sk_A))),
% 0.20/0.52      inference('sup+', [status(thm)], ['24', '25'])).
% 0.20/0.52  thf('27', plain, ((v1_relat_1 @ sk_A)),
% 0.20/0.52      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.52  thf('28', plain, ((v1_funct_1 @ sk_A)),
% 0.20/0.52      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.52  thf('29', plain, ((v1_relat_1 @ (k4_relat_1 @ sk_A))),
% 0.20/0.52      inference('demod', [status(thm)], ['26', '27', '28'])).
% 0.20/0.52  thf('30', plain, ((v1_relat_1 @ sk_A)),
% 0.20/0.52      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.52  thf('31', plain,
% 0.20/0.52      (![X0 : $i]:
% 0.20/0.52         (((k5_relat_1 @ (k6_relat_1 @ (k2_relat_1 @ (k4_relat_1 @ sk_B))) @ X0)
% 0.20/0.52            = (k5_relat_1 @ (k4_relat_1 @ sk_A) @ (k5_relat_1 @ sk_A @ X0)))
% 0.20/0.52          | ~ (v1_relat_1 @ X0))),
% 0.20/0.52      inference('demod', [status(thm)], ['23', '29', '30'])).
% 0.20/0.52  thf('32', plain,
% 0.20/0.52      ((((k5_relat_1 @ (k6_relat_1 @ (k2_relat_1 @ (k4_relat_1 @ sk_B))) @ sk_B)
% 0.20/0.52          = (k5_relat_1 @ (k4_relat_1 @ sk_A) @ 
% 0.20/0.52             (k6_relat_1 @ (k2_relat_1 @ (k4_relat_1 @ sk_A)))))
% 0.20/0.52        | ~ (v1_relat_1 @ sk_B))),
% 0.20/0.52      inference('sup+', [status(thm)], ['4', '31'])).
% 0.20/0.52  thf(d10_xboole_0, axiom,
% 0.20/0.52    (![A:$i,B:$i]:
% 0.20/0.52     ( ( ( A ) = ( B ) ) <=> ( ( r1_tarski @ A @ B ) & ( r1_tarski @ B @ A ) ) ))).
% 0.20/0.52  thf('33', plain,
% 0.20/0.52      (![X0 : $i, X1 : $i]: ((r1_tarski @ X0 @ X1) | ((X0) != (X1)))),
% 0.20/0.52      inference('cnf', [status(esa)], [d10_xboole_0])).
% 0.20/0.52  thf('34', plain, (![X1 : $i]: (r1_tarski @ X1 @ X1)),
% 0.20/0.52      inference('simplify', [status(thm)], ['33'])).
% 0.20/0.52  thf('35', plain,
% 0.20/0.52      (((k1_relat_1 @ sk_B) = (k2_relat_1 @ (k4_relat_1 @ sk_B)))),
% 0.20/0.52      inference('sup-', [status(thm)], ['14', '15'])).
% 0.20/0.52  thf(t77_relat_1, axiom,
% 0.20/0.52    (![A:$i,B:$i]:
% 0.20/0.52     ( ( v1_relat_1 @ B ) =>
% 0.20/0.52       ( ( r1_tarski @ ( k1_relat_1 @ B ) @ A ) =>
% 0.20/0.52         ( ( k5_relat_1 @ ( k6_relat_1 @ A ) @ B ) = ( B ) ) ) ))).
% 0.20/0.52  thf('36', plain,
% 0.20/0.52      (![X7 : $i, X8 : $i]:
% 0.20/0.52         (~ (r1_tarski @ (k1_relat_1 @ X7) @ X8)
% 0.20/0.52          | ((k5_relat_1 @ (k6_relat_1 @ X8) @ X7) = (X7))
% 0.20/0.52          | ~ (v1_relat_1 @ X7))),
% 0.20/0.52      inference('cnf', [status(esa)], [t77_relat_1])).
% 0.20/0.52  thf('37', plain,
% 0.20/0.52      (![X0 : $i]:
% 0.20/0.52         (~ (r1_tarski @ (k2_relat_1 @ (k4_relat_1 @ sk_B)) @ X0)
% 0.20/0.52          | ~ (v1_relat_1 @ sk_B)
% 0.20/0.52          | ((k5_relat_1 @ (k6_relat_1 @ X0) @ sk_B) = (sk_B)))),
% 0.20/0.52      inference('sup-', [status(thm)], ['35', '36'])).
% 0.20/0.52  thf('38', plain, ((v1_relat_1 @ sk_B)),
% 0.20/0.52      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.52  thf('39', plain,
% 0.20/0.52      (![X0 : $i]:
% 0.20/0.52         (~ (r1_tarski @ (k2_relat_1 @ (k4_relat_1 @ sk_B)) @ X0)
% 0.20/0.52          | ((k5_relat_1 @ (k6_relat_1 @ X0) @ sk_B) = (sk_B)))),
% 0.20/0.52      inference('demod', [status(thm)], ['37', '38'])).
% 0.20/0.52  thf('40', plain,
% 0.20/0.52      (((k5_relat_1 @ (k6_relat_1 @ (k2_relat_1 @ (k4_relat_1 @ sk_B))) @ sk_B)
% 0.20/0.52         = (sk_B))),
% 0.20/0.52      inference('sup-', [status(thm)], ['34', '39'])).
% 0.20/0.52  thf('41', plain, ((v1_relat_1 @ sk_B)),
% 0.20/0.52      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.52  thf('42', plain,
% 0.20/0.52      (((sk_B)
% 0.20/0.52         = (k5_relat_1 @ (k4_relat_1 @ sk_A) @ 
% 0.20/0.52            (k6_relat_1 @ (k2_relat_1 @ (k4_relat_1 @ sk_A)))))),
% 0.20/0.52      inference('demod', [status(thm)], ['32', '40', '41'])).
% 0.20/0.52  thf('43', plain,
% 0.20/0.52      (![X11 : $i]:
% 0.20/0.52         (~ (v2_funct_1 @ X11)
% 0.20/0.52          | ((k5_relat_1 @ X11 @ (k2_funct_1 @ X11))
% 0.20/0.52              = (k6_relat_1 @ (k1_relat_1 @ X11)))
% 0.20/0.52          | ~ (v1_funct_1 @ X11)
% 0.20/0.52          | ~ (v1_relat_1 @ X11))),
% 0.20/0.52      inference('cnf', [status(esa)], [t61_funct_1])).
% 0.20/0.52  thf('44', plain,
% 0.20/0.52      (![X0 : $i]:
% 0.20/0.52         (((k5_relat_1 @ (k6_relat_1 @ (k2_relat_1 @ (k4_relat_1 @ sk_B))) @ X0)
% 0.20/0.52            = (k5_relat_1 @ (k4_relat_1 @ sk_A) @ (k5_relat_1 @ sk_A @ X0)))
% 0.20/0.52          | ~ (v1_relat_1 @ X0))),
% 0.20/0.52      inference('demod', [status(thm)], ['23', '29', '30'])).
% 0.20/0.52  thf('45', plain,
% 0.20/0.52      ((((k5_relat_1 @ (k6_relat_1 @ (k2_relat_1 @ (k4_relat_1 @ sk_B))) @ 
% 0.20/0.52          (k2_funct_1 @ sk_A))
% 0.20/0.52          = (k5_relat_1 @ (k4_relat_1 @ sk_A) @ 
% 0.20/0.52             (k6_relat_1 @ (k1_relat_1 @ sk_A))))
% 0.20/0.52        | ~ (v1_relat_1 @ sk_A)
% 0.20/0.52        | ~ (v1_funct_1 @ sk_A)
% 0.20/0.52        | ~ (v2_funct_1 @ sk_A)
% 0.20/0.52        | ~ (v1_relat_1 @ (k2_funct_1 @ sk_A)))),
% 0.20/0.52      inference('sup+', [status(thm)], ['43', '44'])).
% 0.20/0.52  thf('46', plain, (((k2_funct_1 @ sk_A) = (k4_relat_1 @ sk_A))),
% 0.20/0.52      inference('demod', [status(thm)], ['7', '8', '9'])).
% 0.20/0.52  thf('47', plain, (((k2_funct_1 @ sk_A) = (k4_relat_1 @ sk_A))),
% 0.20/0.52      inference('demod', [status(thm)], ['7', '8', '9'])).
% 0.20/0.52  thf('48', plain,
% 0.20/0.52      (![X10 : $i]:
% 0.20/0.52         ((v1_relat_1 @ (k2_funct_1 @ X10))
% 0.20/0.52          | ~ (v1_funct_1 @ X10)
% 0.20/0.52          | ~ (v1_relat_1 @ X10))),
% 0.20/0.52      inference('cnf', [status(esa)], [dt_k2_funct_1])).
% 0.20/0.52  thf('49', plain,
% 0.20/0.52      (![X3 : $i]:
% 0.20/0.52         (((k1_relat_1 @ X3) = (k2_relat_1 @ (k4_relat_1 @ X3)))
% 0.20/0.52          | ~ (v1_relat_1 @ X3))),
% 0.20/0.52      inference('cnf', [status(esa)], [t37_relat_1])).
% 0.20/0.52  thf('50', plain,
% 0.20/0.52      (![X0 : $i]:
% 0.20/0.52         (~ (v1_relat_1 @ X0)
% 0.20/0.52          | ~ (v1_funct_1 @ X0)
% 0.20/0.52          | ((k1_relat_1 @ (k2_funct_1 @ X0))
% 0.20/0.52              = (k2_relat_1 @ (k4_relat_1 @ (k2_funct_1 @ X0)))))),
% 0.20/0.52      inference('sup-', [status(thm)], ['48', '49'])).
% 0.20/0.52  thf('51', plain,
% 0.20/0.52      ((((k1_relat_1 @ (k4_relat_1 @ sk_A))
% 0.20/0.52          = (k2_relat_1 @ (k4_relat_1 @ (k2_funct_1 @ sk_A))))
% 0.20/0.52        | ~ (v1_funct_1 @ sk_A)
% 0.20/0.52        | ~ (v1_relat_1 @ sk_A))),
% 0.20/0.52      inference('sup+', [status(thm)], ['47', '50'])).
% 0.20/0.52  thf('52', plain, (((k2_funct_1 @ sk_A) = (k4_relat_1 @ sk_A))),
% 0.20/0.52      inference('demod', [status(thm)], ['7', '8', '9'])).
% 0.20/0.52  thf('53', plain, ((v1_funct_1 @ sk_A)),
% 0.20/0.52      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.52  thf('54', plain, ((v1_relat_1 @ sk_A)),
% 0.20/0.52      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.52  thf('55', plain,
% 0.20/0.52      (((k1_relat_1 @ (k4_relat_1 @ sk_A))
% 0.20/0.52         = (k2_relat_1 @ (k4_relat_1 @ (k4_relat_1 @ sk_A))))),
% 0.20/0.52      inference('demod', [status(thm)], ['51', '52', '53', '54'])).
% 0.20/0.52  thf('56', plain,
% 0.20/0.52      (![X3 : $i]:
% 0.20/0.52         (((k2_relat_1 @ X3) = (k1_relat_1 @ (k4_relat_1 @ X3)))
% 0.20/0.52          | ~ (v1_relat_1 @ X3))),
% 0.20/0.52      inference('cnf', [status(esa)], [t37_relat_1])).
% 0.20/0.52  thf('57', plain,
% 0.20/0.52      (((k1_relat_1 @ (k4_relat_1 @ sk_A))
% 0.20/0.52         = (k2_relat_1 @ (k4_relat_1 @ (k4_relat_1 @ sk_A))))),
% 0.20/0.52      inference('demod', [status(thm)], ['51', '52', '53', '54'])).
% 0.20/0.52  thf('58', plain,
% 0.20/0.52      ((((k2_relat_1 @ sk_A)
% 0.20/0.52          = (k2_relat_1 @ (k4_relat_1 @ (k4_relat_1 @ sk_A))))
% 0.20/0.52        | ~ (v1_relat_1 @ sk_A))),
% 0.20/0.52      inference('sup+', [status(thm)], ['56', '57'])).
% 0.20/0.52  thf('59', plain,
% 0.20/0.52      (((k2_relat_1 @ sk_A) = (k2_relat_1 @ (k4_relat_1 @ sk_B)))),
% 0.20/0.52      inference('demod', [status(thm)], ['13', '16'])).
% 0.20/0.52  thf('60', plain, ((v1_relat_1 @ sk_A)),
% 0.20/0.52      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.52  thf('61', plain,
% 0.20/0.52      (((k2_relat_1 @ (k4_relat_1 @ sk_B))
% 0.20/0.52         = (k2_relat_1 @ (k4_relat_1 @ (k4_relat_1 @ sk_A))))),
% 0.20/0.52      inference('demod', [status(thm)], ['58', '59', '60'])).
% 0.20/0.52  thf('62', plain,
% 0.20/0.52      (((k1_relat_1 @ (k4_relat_1 @ sk_A)) = (k2_relat_1 @ (k4_relat_1 @ sk_B)))),
% 0.20/0.52      inference('demod', [status(thm)], ['55', '61'])).
% 0.20/0.52  thf('63', plain, (![X1 : $i]: (r1_tarski @ X1 @ X1)),
% 0.20/0.52      inference('simplify', [status(thm)], ['33'])).
% 0.20/0.52  thf('64', plain,
% 0.20/0.52      (![X7 : $i, X8 : $i]:
% 0.20/0.52         (~ (r1_tarski @ (k1_relat_1 @ X7) @ X8)
% 0.20/0.52          | ((k5_relat_1 @ (k6_relat_1 @ X8) @ X7) = (X7))
% 0.20/0.52          | ~ (v1_relat_1 @ X7))),
% 0.20/0.52      inference('cnf', [status(esa)], [t77_relat_1])).
% 0.20/0.52  thf('65', plain,
% 0.20/0.52      (![X0 : $i]:
% 0.20/0.52         (~ (v1_relat_1 @ X0)
% 0.20/0.52          | ((k5_relat_1 @ (k6_relat_1 @ (k1_relat_1 @ X0)) @ X0) = (X0)))),
% 0.20/0.52      inference('sup-', [status(thm)], ['63', '64'])).
% 0.20/0.52  thf('66', plain,
% 0.20/0.52      ((((k5_relat_1 @ (k6_relat_1 @ (k2_relat_1 @ (k4_relat_1 @ sk_B))) @ 
% 0.20/0.52          (k4_relat_1 @ sk_A)) = (k4_relat_1 @ sk_A))
% 0.20/0.52        | ~ (v1_relat_1 @ (k4_relat_1 @ sk_A)))),
% 0.20/0.52      inference('sup+', [status(thm)], ['62', '65'])).
% 0.20/0.52  thf('67', plain, ((v1_relat_1 @ (k4_relat_1 @ sk_A))),
% 0.20/0.52      inference('demod', [status(thm)], ['26', '27', '28'])).
% 0.20/0.52  thf('68', plain,
% 0.20/0.52      (((k5_relat_1 @ (k6_relat_1 @ (k2_relat_1 @ (k4_relat_1 @ sk_B))) @ 
% 0.20/0.52         (k4_relat_1 @ sk_A)) = (k4_relat_1 @ sk_A))),
% 0.20/0.52      inference('demod', [status(thm)], ['66', '67'])).
% 0.20/0.52  thf('69', plain,
% 0.20/0.52      (((k1_relat_1 @ sk_A) = (k2_relat_1 @ (k4_relat_1 @ sk_A)))),
% 0.20/0.52      inference('sup-', [status(thm)], ['1', '2'])).
% 0.20/0.52  thf('70', plain, ((v1_relat_1 @ sk_A)),
% 0.20/0.52      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.52  thf('71', plain, ((v1_funct_1 @ sk_A)),
% 0.20/0.52      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.52  thf('72', plain, ((v2_funct_1 @ sk_A)),
% 0.20/0.52      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.52  thf('73', plain, (((k2_funct_1 @ sk_A) = (k4_relat_1 @ sk_A))),
% 0.20/0.52      inference('demod', [status(thm)], ['7', '8', '9'])).
% 0.20/0.52  thf('74', plain, ((v1_relat_1 @ (k4_relat_1 @ sk_A))),
% 0.20/0.52      inference('demod', [status(thm)], ['26', '27', '28'])).
% 0.20/0.52  thf('75', plain,
% 0.20/0.52      (((k4_relat_1 @ sk_A)
% 0.20/0.52         = (k5_relat_1 @ (k4_relat_1 @ sk_A) @ 
% 0.20/0.52            (k6_relat_1 @ (k2_relat_1 @ (k4_relat_1 @ sk_A)))))),
% 0.20/0.52      inference('demod', [status(thm)],
% 0.20/0.52                ['45', '46', '68', '69', '70', '71', '72', '73', '74'])).
% 0.20/0.52  thf('76', plain, (((k4_relat_1 @ sk_A) = (sk_B))),
% 0.20/0.52      inference('sup+', [status(thm)], ['42', '75'])).
% 0.20/0.52  thf('77', plain, (((sk_B) != (k2_funct_1 @ sk_A))),
% 0.20/0.52      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.52  thf('78', plain, (((k2_funct_1 @ sk_A) = (k4_relat_1 @ sk_A))),
% 0.20/0.52      inference('demod', [status(thm)], ['7', '8', '9'])).
% 0.20/0.52  thf('79', plain, (((sk_B) != (k4_relat_1 @ sk_A))),
% 0.20/0.52      inference('demod', [status(thm)], ['77', '78'])).
% 0.20/0.52  thf('80', plain, ($false),
% 0.20/0.52      inference('simplify_reflect-', [status(thm)], ['76', '79'])).
% 0.20/0.52  
% 0.20/0.52  % SZS output end Refutation
% 0.20/0.52  
% 0.20/0.53  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
