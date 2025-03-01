%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.OAkN9P27E2

% Computer   : n018.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:45:28 EST 2020

% Result     : Theorem 0.21s
% Output     : Refutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :   71 (  99 expanded)
%              Number of leaves         :   19 (  34 expanded)
%              Depth                    :   18
%              Number of atoms          :  717 (1289 expanded)
%              Number of equality atoms :   60 ( 112 expanded)
%              Maximal formula depth    :   14 (   7 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k6_relat_1_type,type,(
    k6_relat_1: $i > $i )).

thf(k2_relat_1_type,type,(
    k2_relat_1: $i > $i )).

thf(v2_funct_1_type,type,(
    v2_funct_1: $i > $o )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k2_funct_1_type,type,(
    k2_funct_1: $i > $i )).

thf(k1_relat_1_type,type,(
    k1_relat_1: $i > $i )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(k5_relat_1_type,type,(
    k5_relat_1: $i > $i > $i )).

thf(v1_funct_1_type,type,(
    v1_funct_1: $i > $o )).

thf(dt_k2_funct_1,axiom,(
    ! [A: $i] :
      ( ( ( v1_relat_1 @ A )
        & ( v1_funct_1 @ A ) )
     => ( ( v1_relat_1 @ ( k2_funct_1 @ A ) )
        & ( v1_funct_1 @ ( k2_funct_1 @ A ) ) ) ) )).

thf('0',plain,(
    ! [X12: $i] :
      ( ( v1_relat_1 @ ( k2_funct_1 @ X12 ) )
      | ~ ( v1_funct_1 @ X12 )
      | ~ ( v1_relat_1 @ X12 ) ) ),
    inference(cnf,[status(esa)],[dt_k2_funct_1])).

thf(d10_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( A = B )
    <=> ( ( r1_tarski @ A @ B )
        & ( r1_tarski @ B @ A ) ) ) )).

thf('1',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r1_tarski @ X0 @ X1 )
      | ( X0 != X1 ) ) ),
    inference(cnf,[status(esa)],[d10_xboole_0])).

thf('2',plain,(
    ! [X1: $i] :
      ( r1_tarski @ X1 @ X1 ) ),
    inference(simplify,[status(thm)],['1'])).

thf(t55_funct_1,axiom,(
    ! [A: $i] :
      ( ( ( v1_relat_1 @ A )
        & ( v1_funct_1 @ A ) )
     => ( ( v2_funct_1 @ A )
       => ( ( ( k2_relat_1 @ A )
            = ( k1_relat_1 @ ( k2_funct_1 @ A ) ) )
          & ( ( k1_relat_1 @ A )
            = ( k2_relat_1 @ ( k2_funct_1 @ A ) ) ) ) ) ) )).

thf('3',plain,(
    ! [X13: $i] :
      ( ~ ( v2_funct_1 @ X13 )
      | ( ( k1_relat_1 @ X13 )
        = ( k2_relat_1 @ ( k2_funct_1 @ X13 ) ) )
      | ~ ( v1_funct_1 @ X13 )
      | ~ ( v1_relat_1 @ X13 ) ) ),
    inference(cnf,[status(esa)],[t55_funct_1])).

thf(t47_relat_1,axiom,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ! [B: $i] :
          ( ( v1_relat_1 @ B )
         => ( ( r1_tarski @ ( k1_relat_1 @ A ) @ ( k2_relat_1 @ B ) )
           => ( ( k2_relat_1 @ ( k5_relat_1 @ B @ A ) )
              = ( k2_relat_1 @ A ) ) ) ) ) )).

thf('4',plain,(
    ! [X7: $i,X8: $i] :
      ( ~ ( v1_relat_1 @ X7 )
      | ( ( k2_relat_1 @ ( k5_relat_1 @ X7 @ X8 ) )
        = ( k2_relat_1 @ X8 ) )
      | ~ ( r1_tarski @ ( k1_relat_1 @ X8 ) @ ( k2_relat_1 @ X7 ) )
      | ~ ( v1_relat_1 @ X8 ) ) ),
    inference(cnf,[status(esa)],[t47_relat_1])).

thf('5',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( r1_tarski @ ( k1_relat_1 @ X1 ) @ ( k1_relat_1 @ X0 ) )
      | ~ ( v1_relat_1 @ X0 )
      | ~ ( v1_funct_1 @ X0 )
      | ~ ( v2_funct_1 @ X0 )
      | ~ ( v1_relat_1 @ X1 )
      | ( ( k2_relat_1 @ ( k5_relat_1 @ ( k2_funct_1 @ X0 ) @ X1 ) )
        = ( k2_relat_1 @ X1 ) )
      | ~ ( v1_relat_1 @ ( k2_funct_1 @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['3','4'])).

thf('6',plain,(
    ! [X0: $i] :
      ( ~ ( v1_relat_1 @ ( k2_funct_1 @ X0 ) )
      | ( ( k2_relat_1 @ ( k5_relat_1 @ ( k2_funct_1 @ X0 ) @ X0 ) )
        = ( k2_relat_1 @ X0 ) )
      | ~ ( v1_relat_1 @ X0 )
      | ~ ( v2_funct_1 @ X0 )
      | ~ ( v1_funct_1 @ X0 )
      | ~ ( v1_relat_1 @ X0 ) ) ),
    inference('sup-',[status(thm)],['2','5'])).

thf('7',plain,(
    ! [X0: $i] :
      ( ~ ( v1_funct_1 @ X0 )
      | ~ ( v2_funct_1 @ X0 )
      | ~ ( v1_relat_1 @ X0 )
      | ( ( k2_relat_1 @ ( k5_relat_1 @ ( k2_funct_1 @ X0 ) @ X0 ) )
        = ( k2_relat_1 @ X0 ) )
      | ~ ( v1_relat_1 @ ( k2_funct_1 @ X0 ) ) ) ),
    inference(simplify,[status(thm)],['6'])).

thf('8',plain,(
    ! [X0: $i] :
      ( ~ ( v1_relat_1 @ X0 )
      | ~ ( v1_funct_1 @ X0 )
      | ( ( k2_relat_1 @ ( k5_relat_1 @ ( k2_funct_1 @ X0 ) @ X0 ) )
        = ( k2_relat_1 @ X0 ) )
      | ~ ( v1_relat_1 @ X0 )
      | ~ ( v2_funct_1 @ X0 )
      | ~ ( v1_funct_1 @ X0 ) ) ),
    inference('sup-',[status(thm)],['0','7'])).

thf('9',plain,(
    ! [X0: $i] :
      ( ~ ( v2_funct_1 @ X0 )
      | ( ( k2_relat_1 @ ( k5_relat_1 @ ( k2_funct_1 @ X0 ) @ X0 ) )
        = ( k2_relat_1 @ X0 ) )
      | ~ ( v1_funct_1 @ X0 )
      | ~ ( v1_relat_1 @ X0 ) ) ),
    inference(simplify,[status(thm)],['8'])).

thf(t59_funct_1,conjecture,(
    ! [A: $i] :
      ( ( ( v1_relat_1 @ A )
        & ( v1_funct_1 @ A ) )
     => ( ( v2_funct_1 @ A )
       => ( ( ( k1_relat_1 @ ( k5_relat_1 @ ( k2_funct_1 @ A ) @ A ) )
            = ( k2_relat_1 @ A ) )
          & ( ( k2_relat_1 @ ( k5_relat_1 @ ( k2_funct_1 @ A ) @ A ) )
            = ( k2_relat_1 @ A ) ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i] :
        ( ( ( v1_relat_1 @ A )
          & ( v1_funct_1 @ A ) )
       => ( ( v2_funct_1 @ A )
         => ( ( ( k1_relat_1 @ ( k5_relat_1 @ ( k2_funct_1 @ A ) @ A ) )
              = ( k2_relat_1 @ A ) )
            & ( ( k2_relat_1 @ ( k5_relat_1 @ ( k2_funct_1 @ A ) @ A ) )
              = ( k2_relat_1 @ A ) ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t59_funct_1])).

thf('10',plain,
    ( ( ( k1_relat_1 @ ( k5_relat_1 @ ( k2_funct_1 @ sk_A ) @ sk_A ) )
     != ( k2_relat_1 @ sk_A ) )
    | ( ( k2_relat_1 @ ( k5_relat_1 @ ( k2_funct_1 @ sk_A ) @ sk_A ) )
     != ( k2_relat_1 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('11',plain,
    ( ( ( k2_relat_1 @ ( k5_relat_1 @ ( k2_funct_1 @ sk_A ) @ sk_A ) )
     != ( k2_relat_1 @ sk_A ) )
   <= ( ( k2_relat_1 @ ( k5_relat_1 @ ( k2_funct_1 @ sk_A ) @ sk_A ) )
     != ( k2_relat_1 @ sk_A ) ) ),
    inference(split,[status(esa)],['10'])).

thf('12',plain,(
    ! [X13: $i] :
      ( ~ ( v2_funct_1 @ X13 )
      | ( ( k2_relat_1 @ X13 )
        = ( k1_relat_1 @ ( k2_funct_1 @ X13 ) ) )
      | ~ ( v1_funct_1 @ X13 )
      | ~ ( v1_relat_1 @ X13 ) ) ),
    inference(cnf,[status(esa)],[t55_funct_1])).

thf('13',plain,(
    ! [X12: $i] :
      ( ( v1_relat_1 @ ( k2_funct_1 @ X12 ) )
      | ~ ( v1_funct_1 @ X12 )
      | ~ ( v1_relat_1 @ X12 ) ) ),
    inference(cnf,[status(esa)],[dt_k2_funct_1])).

thf('14',plain,(
    ! [X12: $i] :
      ( ( v1_relat_1 @ ( k2_funct_1 @ X12 ) )
      | ~ ( v1_funct_1 @ X12 )
      | ~ ( v1_relat_1 @ X12 ) ) ),
    inference(cnf,[status(esa)],[dt_k2_funct_1])).

thf('15',plain,(
    ! [X13: $i] :
      ( ~ ( v2_funct_1 @ X13 )
      | ( ( k1_relat_1 @ X13 )
        = ( k2_relat_1 @ ( k2_funct_1 @ X13 ) ) )
      | ~ ( v1_funct_1 @ X13 )
      | ~ ( v1_relat_1 @ X13 ) ) ),
    inference(cnf,[status(esa)],[t55_funct_1])).

thf(t80_relat_1,axiom,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ( ( k5_relat_1 @ A @ ( k6_relat_1 @ ( k2_relat_1 @ A ) ) )
        = A ) ) )).

thf('16',plain,(
    ! [X11: $i] :
      ( ( ( k5_relat_1 @ X11 @ ( k6_relat_1 @ ( k2_relat_1 @ X11 ) ) )
        = X11 )
      | ~ ( v1_relat_1 @ X11 ) ) ),
    inference(cnf,[status(esa)],[t80_relat_1])).

thf('17',plain,(
    ! [X0: $i] :
      ( ( ( k5_relat_1 @ ( k2_funct_1 @ X0 ) @ ( k6_relat_1 @ ( k1_relat_1 @ X0 ) ) )
        = ( k2_funct_1 @ X0 ) )
      | ~ ( v1_relat_1 @ X0 )
      | ~ ( v1_funct_1 @ X0 )
      | ~ ( v2_funct_1 @ X0 )
      | ~ ( v1_relat_1 @ ( k2_funct_1 @ X0 ) ) ) ),
    inference('sup+',[status(thm)],['15','16'])).

thf('18',plain,(
    ! [X0: $i] :
      ( ~ ( v1_relat_1 @ X0 )
      | ~ ( v1_funct_1 @ X0 )
      | ~ ( v2_funct_1 @ X0 )
      | ~ ( v1_funct_1 @ X0 )
      | ~ ( v1_relat_1 @ X0 )
      | ( ( k5_relat_1 @ ( k2_funct_1 @ X0 ) @ ( k6_relat_1 @ ( k1_relat_1 @ X0 ) ) )
        = ( k2_funct_1 @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['14','17'])).

thf('19',plain,(
    ! [X0: $i] :
      ( ( ( k5_relat_1 @ ( k2_funct_1 @ X0 ) @ ( k6_relat_1 @ ( k1_relat_1 @ X0 ) ) )
        = ( k2_funct_1 @ X0 ) )
      | ~ ( v2_funct_1 @ X0 )
      | ~ ( v1_funct_1 @ X0 )
      | ~ ( v1_relat_1 @ X0 ) ) ),
    inference(simplify,[status(thm)],['18'])).

thf(t71_relat_1,axiom,(
    ! [A: $i] :
      ( ( ( k2_relat_1 @ ( k6_relat_1 @ A ) )
        = A )
      & ( ( k1_relat_1 @ ( k6_relat_1 @ A ) )
        = A ) ) )).

thf('20',plain,(
    ! [X9: $i] :
      ( ( k1_relat_1 @ ( k6_relat_1 @ X9 ) )
      = X9 ) ),
    inference(cnf,[status(esa)],[t71_relat_1])).

thf(t198_relat_1,axiom,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ! [B: $i] :
          ( ( v1_relat_1 @ B )
         => ! [C: $i] :
              ( ( v1_relat_1 @ C )
             => ( ( ( k1_relat_1 @ A )
                  = ( k1_relat_1 @ B ) )
               => ( ( k1_relat_1 @ ( k5_relat_1 @ C @ A ) )
                  = ( k1_relat_1 @ ( k5_relat_1 @ C @ B ) ) ) ) ) ) ) )).

thf('21',plain,(
    ! [X4: $i,X5: $i,X6: $i] :
      ( ~ ( v1_relat_1 @ X4 )
      | ( ( k1_relat_1 @ X5 )
       != ( k1_relat_1 @ X4 ) )
      | ( ( k1_relat_1 @ ( k5_relat_1 @ X6 @ X5 ) )
        = ( k1_relat_1 @ ( k5_relat_1 @ X6 @ X4 ) ) )
      | ~ ( v1_relat_1 @ X6 )
      | ~ ( v1_relat_1 @ X5 ) ) ),
    inference(cnf,[status(esa)],[t198_relat_1])).

thf('22',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( X0
       != ( k1_relat_1 @ X1 ) )
      | ~ ( v1_relat_1 @ ( k6_relat_1 @ X0 ) )
      | ~ ( v1_relat_1 @ X2 )
      | ( ( k1_relat_1 @ ( k5_relat_1 @ X2 @ ( k6_relat_1 @ X0 ) ) )
        = ( k1_relat_1 @ ( k5_relat_1 @ X2 @ X1 ) ) )
      | ~ ( v1_relat_1 @ X1 ) ) ),
    inference('sup-',[status(thm)],['20','21'])).

thf(dt_k6_relat_1,axiom,(
    ! [A: $i] :
      ( v1_relat_1 @ ( k6_relat_1 @ A ) ) )).

thf('23',plain,(
    ! [X3: $i] :
      ( v1_relat_1 @ ( k6_relat_1 @ X3 ) ) ),
    inference(cnf,[status(esa)],[dt_k6_relat_1])).

thf('24',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( X0
       != ( k1_relat_1 @ X1 ) )
      | ~ ( v1_relat_1 @ X2 )
      | ( ( k1_relat_1 @ ( k5_relat_1 @ X2 @ ( k6_relat_1 @ X0 ) ) )
        = ( k1_relat_1 @ ( k5_relat_1 @ X2 @ X1 ) ) )
      | ~ ( v1_relat_1 @ X1 ) ) ),
    inference(demod,[status(thm)],['22','23'])).

thf('25',plain,(
    ! [X1: $i,X2: $i] :
      ( ~ ( v1_relat_1 @ X1 )
      | ( ( k1_relat_1 @ ( k5_relat_1 @ X2 @ ( k6_relat_1 @ ( k1_relat_1 @ X1 ) ) ) )
        = ( k1_relat_1 @ ( k5_relat_1 @ X2 @ X1 ) ) )
      | ~ ( v1_relat_1 @ X2 ) ) ),
    inference(simplify,[status(thm)],['24'])).

thf('26',plain,(
    ! [X0: $i] :
      ( ( ( k1_relat_1 @ ( k2_funct_1 @ X0 ) )
        = ( k1_relat_1 @ ( k5_relat_1 @ ( k2_funct_1 @ X0 ) @ X0 ) ) )
      | ~ ( v1_relat_1 @ X0 )
      | ~ ( v1_funct_1 @ X0 )
      | ~ ( v2_funct_1 @ X0 )
      | ~ ( v1_relat_1 @ ( k2_funct_1 @ X0 ) )
      | ~ ( v1_relat_1 @ X0 ) ) ),
    inference('sup+',[status(thm)],['19','25'])).

thf('27',plain,(
    ! [X0: $i] :
      ( ~ ( v1_relat_1 @ ( k2_funct_1 @ X0 ) )
      | ~ ( v2_funct_1 @ X0 )
      | ~ ( v1_funct_1 @ X0 )
      | ~ ( v1_relat_1 @ X0 )
      | ( ( k1_relat_1 @ ( k2_funct_1 @ X0 ) )
        = ( k1_relat_1 @ ( k5_relat_1 @ ( k2_funct_1 @ X0 ) @ X0 ) ) ) ) ),
    inference(simplify,[status(thm)],['26'])).

thf('28',plain,(
    ! [X0: $i] :
      ( ~ ( v1_relat_1 @ X0 )
      | ~ ( v1_funct_1 @ X0 )
      | ( ( k1_relat_1 @ ( k2_funct_1 @ X0 ) )
        = ( k1_relat_1 @ ( k5_relat_1 @ ( k2_funct_1 @ X0 ) @ X0 ) ) )
      | ~ ( v1_relat_1 @ X0 )
      | ~ ( v1_funct_1 @ X0 )
      | ~ ( v2_funct_1 @ X0 ) ) ),
    inference('sup-',[status(thm)],['13','27'])).

thf('29',plain,(
    ! [X0: $i] :
      ( ~ ( v2_funct_1 @ X0 )
      | ( ( k1_relat_1 @ ( k2_funct_1 @ X0 ) )
        = ( k1_relat_1 @ ( k5_relat_1 @ ( k2_funct_1 @ X0 ) @ X0 ) ) )
      | ~ ( v1_funct_1 @ X0 )
      | ~ ( v1_relat_1 @ X0 ) ) ),
    inference(simplify,[status(thm)],['28'])).

thf('30',plain,
    ( ( ( k1_relat_1 @ ( k5_relat_1 @ ( k2_funct_1 @ sk_A ) @ sk_A ) )
     != ( k2_relat_1 @ sk_A ) )
   <= ( ( k1_relat_1 @ ( k5_relat_1 @ ( k2_funct_1 @ sk_A ) @ sk_A ) )
     != ( k2_relat_1 @ sk_A ) ) ),
    inference(split,[status(esa)],['10'])).

thf('31',plain,
    ( ( ( ( k1_relat_1 @ ( k2_funct_1 @ sk_A ) )
       != ( k2_relat_1 @ sk_A ) )
      | ~ ( v1_relat_1 @ sk_A )
      | ~ ( v1_funct_1 @ sk_A )
      | ~ ( v2_funct_1 @ sk_A ) )
   <= ( ( k1_relat_1 @ ( k5_relat_1 @ ( k2_funct_1 @ sk_A ) @ sk_A ) )
     != ( k2_relat_1 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['29','30'])).

thf('32',plain,(
    v1_relat_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('33',plain,(
    v1_funct_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('34',plain,(
    v2_funct_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('35',plain,
    ( ( ( k1_relat_1 @ ( k2_funct_1 @ sk_A ) )
     != ( k2_relat_1 @ sk_A ) )
   <= ( ( k1_relat_1 @ ( k5_relat_1 @ ( k2_funct_1 @ sk_A ) @ sk_A ) )
     != ( k2_relat_1 @ sk_A ) ) ),
    inference(demod,[status(thm)],['31','32','33','34'])).

thf('36',plain,
    ( ( ( ( k2_relat_1 @ sk_A )
       != ( k2_relat_1 @ sk_A ) )
      | ~ ( v1_relat_1 @ sk_A )
      | ~ ( v1_funct_1 @ sk_A )
      | ~ ( v2_funct_1 @ sk_A ) )
   <= ( ( k1_relat_1 @ ( k5_relat_1 @ ( k2_funct_1 @ sk_A ) @ sk_A ) )
     != ( k2_relat_1 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['12','35'])).

thf('37',plain,(
    v1_relat_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('38',plain,(
    v1_funct_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('39',plain,(
    v2_funct_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('40',plain,
    ( ( ( k2_relat_1 @ sk_A )
     != ( k2_relat_1 @ sk_A ) )
   <= ( ( k1_relat_1 @ ( k5_relat_1 @ ( k2_funct_1 @ sk_A ) @ sk_A ) )
     != ( k2_relat_1 @ sk_A ) ) ),
    inference(demod,[status(thm)],['36','37','38','39'])).

thf('41',plain,
    ( ( k1_relat_1 @ ( k5_relat_1 @ ( k2_funct_1 @ sk_A ) @ sk_A ) )
    = ( k2_relat_1 @ sk_A ) ),
    inference(simplify,[status(thm)],['40'])).

thf('42',plain,
    ( ( ( k2_relat_1 @ ( k5_relat_1 @ ( k2_funct_1 @ sk_A ) @ sk_A ) )
     != ( k2_relat_1 @ sk_A ) )
    | ( ( k1_relat_1 @ ( k5_relat_1 @ ( k2_funct_1 @ sk_A ) @ sk_A ) )
     != ( k2_relat_1 @ sk_A ) ) ),
    inference(split,[status(esa)],['10'])).

thf('43',plain,(
    ( k2_relat_1 @ ( k5_relat_1 @ ( k2_funct_1 @ sk_A ) @ sk_A ) )
 != ( k2_relat_1 @ sk_A ) ),
    inference('sat_resolution*',[status(thm)],['41','42'])).

thf('44',plain,(
    ( k2_relat_1 @ ( k5_relat_1 @ ( k2_funct_1 @ sk_A ) @ sk_A ) )
 != ( k2_relat_1 @ sk_A ) ),
    inference(simpl_trail,[status(thm)],['11','43'])).

thf('45',plain,
    ( ( ( k2_relat_1 @ sk_A )
     != ( k2_relat_1 @ sk_A ) )
    | ~ ( v1_relat_1 @ sk_A )
    | ~ ( v1_funct_1 @ sk_A )
    | ~ ( v2_funct_1 @ sk_A ) ),
    inference('sup-',[status(thm)],['9','44'])).

thf('46',plain,(
    v1_relat_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('47',plain,(
    v1_funct_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('48',plain,(
    v2_funct_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('49',plain,(
    ( k2_relat_1 @ sk_A )
 != ( k2_relat_1 @ sk_A ) ),
    inference(demod,[status(thm)],['45','46','47','48'])).

thf('50',plain,(
    $false ),
    inference(simplify,[status(thm)],['49'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.OAkN9P27E2
% 0.13/0.34  % Computer   : n018.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 14:40:12 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.13/0.35  % Running portfolio for 600 s
% 0.13/0.35  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.13/0.35  % Number of cores: 8
% 0.13/0.35  % Python version: Python 3.6.8
% 0.13/0.35  % Running in FO mode
% 0.21/0.48  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.21/0.48  % Solved by: fo/fo7.sh
% 0.21/0.48  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.21/0.48  % done 41 iterations in 0.025s
% 0.21/0.48  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.21/0.48  % SZS output start Refutation
% 0.21/0.48  thf(k6_relat_1_type, type, k6_relat_1: $i > $i).
% 0.21/0.48  thf(k2_relat_1_type, type, k2_relat_1: $i > $i).
% 0.21/0.48  thf(v2_funct_1_type, type, v2_funct_1: $i > $o).
% 0.21/0.48  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.21/0.48  thf(sk_A_type, type, sk_A: $i).
% 0.21/0.48  thf(k2_funct_1_type, type, k2_funct_1: $i > $i).
% 0.21/0.48  thf(k1_relat_1_type, type, k1_relat_1: $i > $i).
% 0.21/0.48  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.21/0.48  thf(k5_relat_1_type, type, k5_relat_1: $i > $i > $i).
% 0.21/0.48  thf(v1_funct_1_type, type, v1_funct_1: $i > $o).
% 0.21/0.48  thf(dt_k2_funct_1, axiom,
% 0.21/0.48    (![A:$i]:
% 0.21/0.48     ( ( ( v1_relat_1 @ A ) & ( v1_funct_1 @ A ) ) =>
% 0.21/0.48       ( ( v1_relat_1 @ ( k2_funct_1 @ A ) ) & 
% 0.21/0.48         ( v1_funct_1 @ ( k2_funct_1 @ A ) ) ) ))).
% 0.21/0.48  thf('0', plain,
% 0.21/0.48      (![X12 : $i]:
% 0.21/0.48         ((v1_relat_1 @ (k2_funct_1 @ X12))
% 0.21/0.48          | ~ (v1_funct_1 @ X12)
% 0.21/0.48          | ~ (v1_relat_1 @ X12))),
% 0.21/0.48      inference('cnf', [status(esa)], [dt_k2_funct_1])).
% 0.21/0.48  thf(d10_xboole_0, axiom,
% 0.21/0.48    (![A:$i,B:$i]:
% 0.21/0.48     ( ( ( A ) = ( B ) ) <=> ( ( r1_tarski @ A @ B ) & ( r1_tarski @ B @ A ) ) ))).
% 0.21/0.48  thf('1', plain,
% 0.21/0.48      (![X0 : $i, X1 : $i]: ((r1_tarski @ X0 @ X1) | ((X0) != (X1)))),
% 0.21/0.48      inference('cnf', [status(esa)], [d10_xboole_0])).
% 0.21/0.48  thf('2', plain, (![X1 : $i]: (r1_tarski @ X1 @ X1)),
% 0.21/0.48      inference('simplify', [status(thm)], ['1'])).
% 0.21/0.48  thf(t55_funct_1, axiom,
% 0.21/0.48    (![A:$i]:
% 0.21/0.48     ( ( ( v1_relat_1 @ A ) & ( v1_funct_1 @ A ) ) =>
% 0.21/0.48       ( ( v2_funct_1 @ A ) =>
% 0.21/0.48         ( ( ( k2_relat_1 @ A ) = ( k1_relat_1 @ ( k2_funct_1 @ A ) ) ) & 
% 0.21/0.48           ( ( k1_relat_1 @ A ) = ( k2_relat_1 @ ( k2_funct_1 @ A ) ) ) ) ) ))).
% 0.21/0.48  thf('3', plain,
% 0.21/0.48      (![X13 : $i]:
% 0.21/0.48         (~ (v2_funct_1 @ X13)
% 0.21/0.48          | ((k1_relat_1 @ X13) = (k2_relat_1 @ (k2_funct_1 @ X13)))
% 0.21/0.48          | ~ (v1_funct_1 @ X13)
% 0.21/0.48          | ~ (v1_relat_1 @ X13))),
% 0.21/0.48      inference('cnf', [status(esa)], [t55_funct_1])).
% 0.21/0.48  thf(t47_relat_1, axiom,
% 0.21/0.48    (![A:$i]:
% 0.21/0.48     ( ( v1_relat_1 @ A ) =>
% 0.21/0.48       ( ![B:$i]:
% 0.21/0.48         ( ( v1_relat_1 @ B ) =>
% 0.21/0.48           ( ( r1_tarski @ ( k1_relat_1 @ A ) @ ( k2_relat_1 @ B ) ) =>
% 0.21/0.48             ( ( k2_relat_1 @ ( k5_relat_1 @ B @ A ) ) = ( k2_relat_1 @ A ) ) ) ) ) ))).
% 0.21/0.48  thf('4', plain,
% 0.21/0.48      (![X7 : $i, X8 : $i]:
% 0.21/0.48         (~ (v1_relat_1 @ X7)
% 0.21/0.48          | ((k2_relat_1 @ (k5_relat_1 @ X7 @ X8)) = (k2_relat_1 @ X8))
% 0.21/0.48          | ~ (r1_tarski @ (k1_relat_1 @ X8) @ (k2_relat_1 @ X7))
% 0.21/0.48          | ~ (v1_relat_1 @ X8))),
% 0.21/0.48      inference('cnf', [status(esa)], [t47_relat_1])).
% 0.21/0.48  thf('5', plain,
% 0.21/0.48      (![X0 : $i, X1 : $i]:
% 0.21/0.48         (~ (r1_tarski @ (k1_relat_1 @ X1) @ (k1_relat_1 @ X0))
% 0.21/0.48          | ~ (v1_relat_1 @ X0)
% 0.21/0.48          | ~ (v1_funct_1 @ X0)
% 0.21/0.48          | ~ (v2_funct_1 @ X0)
% 0.21/0.48          | ~ (v1_relat_1 @ X1)
% 0.21/0.48          | ((k2_relat_1 @ (k5_relat_1 @ (k2_funct_1 @ X0) @ X1))
% 0.21/0.48              = (k2_relat_1 @ X1))
% 0.21/0.48          | ~ (v1_relat_1 @ (k2_funct_1 @ X0)))),
% 0.21/0.48      inference('sup-', [status(thm)], ['3', '4'])).
% 0.21/0.48  thf('6', plain,
% 0.21/0.48      (![X0 : $i]:
% 0.21/0.48         (~ (v1_relat_1 @ (k2_funct_1 @ X0))
% 0.21/0.48          | ((k2_relat_1 @ (k5_relat_1 @ (k2_funct_1 @ X0) @ X0))
% 0.21/0.48              = (k2_relat_1 @ X0))
% 0.21/0.48          | ~ (v1_relat_1 @ X0)
% 0.21/0.48          | ~ (v2_funct_1 @ X0)
% 0.21/0.48          | ~ (v1_funct_1 @ X0)
% 0.21/0.48          | ~ (v1_relat_1 @ X0))),
% 0.21/0.48      inference('sup-', [status(thm)], ['2', '5'])).
% 0.21/0.48  thf('7', plain,
% 0.21/0.48      (![X0 : $i]:
% 0.21/0.48         (~ (v1_funct_1 @ X0)
% 0.21/0.48          | ~ (v2_funct_1 @ X0)
% 0.21/0.48          | ~ (v1_relat_1 @ X0)
% 0.21/0.48          | ((k2_relat_1 @ (k5_relat_1 @ (k2_funct_1 @ X0) @ X0))
% 0.21/0.48              = (k2_relat_1 @ X0))
% 0.21/0.48          | ~ (v1_relat_1 @ (k2_funct_1 @ X0)))),
% 0.21/0.48      inference('simplify', [status(thm)], ['6'])).
% 0.21/0.48  thf('8', plain,
% 0.21/0.48      (![X0 : $i]:
% 0.21/0.48         (~ (v1_relat_1 @ X0)
% 0.21/0.48          | ~ (v1_funct_1 @ X0)
% 0.21/0.48          | ((k2_relat_1 @ (k5_relat_1 @ (k2_funct_1 @ X0) @ X0))
% 0.21/0.48              = (k2_relat_1 @ X0))
% 0.21/0.48          | ~ (v1_relat_1 @ X0)
% 0.21/0.48          | ~ (v2_funct_1 @ X0)
% 0.21/0.48          | ~ (v1_funct_1 @ X0))),
% 0.21/0.48      inference('sup-', [status(thm)], ['0', '7'])).
% 0.21/0.48  thf('9', plain,
% 0.21/0.48      (![X0 : $i]:
% 0.21/0.48         (~ (v2_funct_1 @ X0)
% 0.21/0.48          | ((k2_relat_1 @ (k5_relat_1 @ (k2_funct_1 @ X0) @ X0))
% 0.21/0.48              = (k2_relat_1 @ X0))
% 0.21/0.48          | ~ (v1_funct_1 @ X0)
% 0.21/0.48          | ~ (v1_relat_1 @ X0))),
% 0.21/0.48      inference('simplify', [status(thm)], ['8'])).
% 0.21/0.48  thf(t59_funct_1, conjecture,
% 0.21/0.48    (![A:$i]:
% 0.21/0.48     ( ( ( v1_relat_1 @ A ) & ( v1_funct_1 @ A ) ) =>
% 0.21/0.48       ( ( v2_funct_1 @ A ) =>
% 0.21/0.48         ( ( ( k1_relat_1 @ ( k5_relat_1 @ ( k2_funct_1 @ A ) @ A ) ) =
% 0.21/0.48             ( k2_relat_1 @ A ) ) & 
% 0.21/0.48           ( ( k2_relat_1 @ ( k5_relat_1 @ ( k2_funct_1 @ A ) @ A ) ) =
% 0.21/0.48             ( k2_relat_1 @ A ) ) ) ) ))).
% 0.21/0.48  thf(zf_stmt_0, negated_conjecture,
% 0.21/0.48    (~( ![A:$i]:
% 0.21/0.48        ( ( ( v1_relat_1 @ A ) & ( v1_funct_1 @ A ) ) =>
% 0.21/0.48          ( ( v2_funct_1 @ A ) =>
% 0.21/0.48            ( ( ( k1_relat_1 @ ( k5_relat_1 @ ( k2_funct_1 @ A ) @ A ) ) =
% 0.21/0.48                ( k2_relat_1 @ A ) ) & 
% 0.21/0.48              ( ( k2_relat_1 @ ( k5_relat_1 @ ( k2_funct_1 @ A ) @ A ) ) =
% 0.21/0.48                ( k2_relat_1 @ A ) ) ) ) ) )),
% 0.21/0.48    inference('cnf.neg', [status(esa)], [t59_funct_1])).
% 0.21/0.48  thf('10', plain,
% 0.21/0.48      ((((k1_relat_1 @ (k5_relat_1 @ (k2_funct_1 @ sk_A) @ sk_A))
% 0.21/0.48          != (k2_relat_1 @ sk_A))
% 0.21/0.48        | ((k2_relat_1 @ (k5_relat_1 @ (k2_funct_1 @ sk_A) @ sk_A))
% 0.21/0.48            != (k2_relat_1 @ sk_A)))),
% 0.21/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.48  thf('11', plain,
% 0.21/0.48      ((((k2_relat_1 @ (k5_relat_1 @ (k2_funct_1 @ sk_A) @ sk_A))
% 0.21/0.48          != (k2_relat_1 @ sk_A)))
% 0.21/0.48         <= (~
% 0.21/0.48             (((k2_relat_1 @ (k5_relat_1 @ (k2_funct_1 @ sk_A) @ sk_A))
% 0.21/0.48                = (k2_relat_1 @ sk_A))))),
% 0.21/0.48      inference('split', [status(esa)], ['10'])).
% 0.21/0.48  thf('12', plain,
% 0.21/0.48      (![X13 : $i]:
% 0.21/0.48         (~ (v2_funct_1 @ X13)
% 0.21/0.48          | ((k2_relat_1 @ X13) = (k1_relat_1 @ (k2_funct_1 @ X13)))
% 0.21/0.48          | ~ (v1_funct_1 @ X13)
% 0.21/0.48          | ~ (v1_relat_1 @ X13))),
% 0.21/0.48      inference('cnf', [status(esa)], [t55_funct_1])).
% 0.21/0.48  thf('13', plain,
% 0.21/0.48      (![X12 : $i]:
% 0.21/0.48         ((v1_relat_1 @ (k2_funct_1 @ X12))
% 0.21/0.48          | ~ (v1_funct_1 @ X12)
% 0.21/0.48          | ~ (v1_relat_1 @ X12))),
% 0.21/0.48      inference('cnf', [status(esa)], [dt_k2_funct_1])).
% 0.21/0.48  thf('14', plain,
% 0.21/0.48      (![X12 : $i]:
% 0.21/0.48         ((v1_relat_1 @ (k2_funct_1 @ X12))
% 0.21/0.48          | ~ (v1_funct_1 @ X12)
% 0.21/0.48          | ~ (v1_relat_1 @ X12))),
% 0.21/0.48      inference('cnf', [status(esa)], [dt_k2_funct_1])).
% 0.21/0.48  thf('15', plain,
% 0.21/0.48      (![X13 : $i]:
% 0.21/0.48         (~ (v2_funct_1 @ X13)
% 0.21/0.48          | ((k1_relat_1 @ X13) = (k2_relat_1 @ (k2_funct_1 @ X13)))
% 0.21/0.48          | ~ (v1_funct_1 @ X13)
% 0.21/0.48          | ~ (v1_relat_1 @ X13))),
% 0.21/0.48      inference('cnf', [status(esa)], [t55_funct_1])).
% 0.21/0.48  thf(t80_relat_1, axiom,
% 0.21/0.48    (![A:$i]:
% 0.21/0.48     ( ( v1_relat_1 @ A ) =>
% 0.21/0.48       ( ( k5_relat_1 @ A @ ( k6_relat_1 @ ( k2_relat_1 @ A ) ) ) = ( A ) ) ))).
% 0.21/0.48  thf('16', plain,
% 0.21/0.48      (![X11 : $i]:
% 0.21/0.48         (((k5_relat_1 @ X11 @ (k6_relat_1 @ (k2_relat_1 @ X11))) = (X11))
% 0.21/0.48          | ~ (v1_relat_1 @ X11))),
% 0.21/0.48      inference('cnf', [status(esa)], [t80_relat_1])).
% 0.21/0.48  thf('17', plain,
% 0.21/0.48      (![X0 : $i]:
% 0.21/0.48         (((k5_relat_1 @ (k2_funct_1 @ X0) @ (k6_relat_1 @ (k1_relat_1 @ X0)))
% 0.21/0.48            = (k2_funct_1 @ X0))
% 0.21/0.48          | ~ (v1_relat_1 @ X0)
% 0.21/0.48          | ~ (v1_funct_1 @ X0)
% 0.21/0.48          | ~ (v2_funct_1 @ X0)
% 0.21/0.48          | ~ (v1_relat_1 @ (k2_funct_1 @ X0)))),
% 0.21/0.48      inference('sup+', [status(thm)], ['15', '16'])).
% 0.21/0.48  thf('18', plain,
% 0.21/0.48      (![X0 : $i]:
% 0.21/0.48         (~ (v1_relat_1 @ X0)
% 0.21/0.48          | ~ (v1_funct_1 @ X0)
% 0.21/0.48          | ~ (v2_funct_1 @ X0)
% 0.21/0.48          | ~ (v1_funct_1 @ X0)
% 0.21/0.48          | ~ (v1_relat_1 @ X0)
% 0.21/0.48          | ((k5_relat_1 @ (k2_funct_1 @ X0) @ (k6_relat_1 @ (k1_relat_1 @ X0)))
% 0.21/0.48              = (k2_funct_1 @ X0)))),
% 0.21/0.48      inference('sup-', [status(thm)], ['14', '17'])).
% 0.21/0.48  thf('19', plain,
% 0.21/0.48      (![X0 : $i]:
% 0.21/0.48         (((k5_relat_1 @ (k2_funct_1 @ X0) @ (k6_relat_1 @ (k1_relat_1 @ X0)))
% 0.21/0.48            = (k2_funct_1 @ X0))
% 0.21/0.48          | ~ (v2_funct_1 @ X0)
% 0.21/0.48          | ~ (v1_funct_1 @ X0)
% 0.21/0.48          | ~ (v1_relat_1 @ X0))),
% 0.21/0.48      inference('simplify', [status(thm)], ['18'])).
% 0.21/0.48  thf(t71_relat_1, axiom,
% 0.21/0.48    (![A:$i]:
% 0.21/0.48     ( ( ( k2_relat_1 @ ( k6_relat_1 @ A ) ) = ( A ) ) & 
% 0.21/0.48       ( ( k1_relat_1 @ ( k6_relat_1 @ A ) ) = ( A ) ) ))).
% 0.21/0.48  thf('20', plain, (![X9 : $i]: ((k1_relat_1 @ (k6_relat_1 @ X9)) = (X9))),
% 0.21/0.48      inference('cnf', [status(esa)], [t71_relat_1])).
% 0.21/0.48  thf(t198_relat_1, axiom,
% 0.21/0.48    (![A:$i]:
% 0.21/0.48     ( ( v1_relat_1 @ A ) =>
% 0.21/0.48       ( ![B:$i]:
% 0.21/0.48         ( ( v1_relat_1 @ B ) =>
% 0.21/0.48           ( ![C:$i]:
% 0.21/0.48             ( ( v1_relat_1 @ C ) =>
% 0.21/0.48               ( ( ( k1_relat_1 @ A ) = ( k1_relat_1 @ B ) ) =>
% 0.21/0.48                 ( ( k1_relat_1 @ ( k5_relat_1 @ C @ A ) ) =
% 0.21/0.48                   ( k1_relat_1 @ ( k5_relat_1 @ C @ B ) ) ) ) ) ) ) ) ))).
% 0.21/0.48  thf('21', plain,
% 0.21/0.48      (![X4 : $i, X5 : $i, X6 : $i]:
% 0.21/0.48         (~ (v1_relat_1 @ X4)
% 0.21/0.48          | ((k1_relat_1 @ X5) != (k1_relat_1 @ X4))
% 0.21/0.48          | ((k1_relat_1 @ (k5_relat_1 @ X6 @ X5))
% 0.21/0.48              = (k1_relat_1 @ (k5_relat_1 @ X6 @ X4)))
% 0.21/0.48          | ~ (v1_relat_1 @ X6)
% 0.21/0.48          | ~ (v1_relat_1 @ X5))),
% 0.21/0.48      inference('cnf', [status(esa)], [t198_relat_1])).
% 0.21/0.48  thf('22', plain,
% 0.21/0.48      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.21/0.48         (((X0) != (k1_relat_1 @ X1))
% 0.21/0.48          | ~ (v1_relat_1 @ (k6_relat_1 @ X0))
% 0.21/0.48          | ~ (v1_relat_1 @ X2)
% 0.21/0.48          | ((k1_relat_1 @ (k5_relat_1 @ X2 @ (k6_relat_1 @ X0)))
% 0.21/0.48              = (k1_relat_1 @ (k5_relat_1 @ X2 @ X1)))
% 0.21/0.48          | ~ (v1_relat_1 @ X1))),
% 0.21/0.48      inference('sup-', [status(thm)], ['20', '21'])).
% 0.21/0.48  thf(dt_k6_relat_1, axiom, (![A:$i]: ( v1_relat_1 @ ( k6_relat_1 @ A ) ))).
% 0.21/0.48  thf('23', plain, (![X3 : $i]: (v1_relat_1 @ (k6_relat_1 @ X3))),
% 0.21/0.48      inference('cnf', [status(esa)], [dt_k6_relat_1])).
% 0.21/0.48  thf('24', plain,
% 0.21/0.48      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.21/0.48         (((X0) != (k1_relat_1 @ X1))
% 0.21/0.48          | ~ (v1_relat_1 @ X2)
% 0.21/0.48          | ((k1_relat_1 @ (k5_relat_1 @ X2 @ (k6_relat_1 @ X0)))
% 0.21/0.48              = (k1_relat_1 @ (k5_relat_1 @ X2 @ X1)))
% 0.21/0.48          | ~ (v1_relat_1 @ X1))),
% 0.21/0.48      inference('demod', [status(thm)], ['22', '23'])).
% 0.21/0.48  thf('25', plain,
% 0.21/0.48      (![X1 : $i, X2 : $i]:
% 0.21/0.48         (~ (v1_relat_1 @ X1)
% 0.21/0.48          | ((k1_relat_1 @ (k5_relat_1 @ X2 @ (k6_relat_1 @ (k1_relat_1 @ X1))))
% 0.21/0.48              = (k1_relat_1 @ (k5_relat_1 @ X2 @ X1)))
% 0.21/0.48          | ~ (v1_relat_1 @ X2))),
% 0.21/0.48      inference('simplify', [status(thm)], ['24'])).
% 0.21/0.48  thf('26', plain,
% 0.21/0.48      (![X0 : $i]:
% 0.21/0.48         (((k1_relat_1 @ (k2_funct_1 @ X0))
% 0.21/0.48            = (k1_relat_1 @ (k5_relat_1 @ (k2_funct_1 @ X0) @ X0)))
% 0.21/0.48          | ~ (v1_relat_1 @ X0)
% 0.21/0.48          | ~ (v1_funct_1 @ X0)
% 0.21/0.48          | ~ (v2_funct_1 @ X0)
% 0.21/0.48          | ~ (v1_relat_1 @ (k2_funct_1 @ X0))
% 0.21/0.48          | ~ (v1_relat_1 @ X0))),
% 0.21/0.48      inference('sup+', [status(thm)], ['19', '25'])).
% 0.21/0.48  thf('27', plain,
% 0.21/0.48      (![X0 : $i]:
% 0.21/0.48         (~ (v1_relat_1 @ (k2_funct_1 @ X0))
% 0.21/0.48          | ~ (v2_funct_1 @ X0)
% 0.21/0.48          | ~ (v1_funct_1 @ X0)
% 0.21/0.48          | ~ (v1_relat_1 @ X0)
% 0.21/0.48          | ((k1_relat_1 @ (k2_funct_1 @ X0))
% 0.21/0.48              = (k1_relat_1 @ (k5_relat_1 @ (k2_funct_1 @ X0) @ X0))))),
% 0.21/0.48      inference('simplify', [status(thm)], ['26'])).
% 0.21/0.48  thf('28', plain,
% 0.21/0.48      (![X0 : $i]:
% 0.21/0.48         (~ (v1_relat_1 @ X0)
% 0.21/0.48          | ~ (v1_funct_1 @ X0)
% 0.21/0.48          | ((k1_relat_1 @ (k2_funct_1 @ X0))
% 0.21/0.48              = (k1_relat_1 @ (k5_relat_1 @ (k2_funct_1 @ X0) @ X0)))
% 0.21/0.48          | ~ (v1_relat_1 @ X0)
% 0.21/0.48          | ~ (v1_funct_1 @ X0)
% 0.21/0.48          | ~ (v2_funct_1 @ X0))),
% 0.21/0.48      inference('sup-', [status(thm)], ['13', '27'])).
% 0.21/0.48  thf('29', plain,
% 0.21/0.48      (![X0 : $i]:
% 0.21/0.48         (~ (v2_funct_1 @ X0)
% 0.21/0.48          | ((k1_relat_1 @ (k2_funct_1 @ X0))
% 0.21/0.48              = (k1_relat_1 @ (k5_relat_1 @ (k2_funct_1 @ X0) @ X0)))
% 0.21/0.48          | ~ (v1_funct_1 @ X0)
% 0.21/0.48          | ~ (v1_relat_1 @ X0))),
% 0.21/0.48      inference('simplify', [status(thm)], ['28'])).
% 0.21/0.48  thf('30', plain,
% 0.21/0.48      ((((k1_relat_1 @ (k5_relat_1 @ (k2_funct_1 @ sk_A) @ sk_A))
% 0.21/0.48          != (k2_relat_1 @ sk_A)))
% 0.21/0.48         <= (~
% 0.21/0.48             (((k1_relat_1 @ (k5_relat_1 @ (k2_funct_1 @ sk_A) @ sk_A))
% 0.21/0.48                = (k2_relat_1 @ sk_A))))),
% 0.21/0.48      inference('split', [status(esa)], ['10'])).
% 0.21/0.48  thf('31', plain,
% 0.21/0.48      (((((k1_relat_1 @ (k2_funct_1 @ sk_A)) != (k2_relat_1 @ sk_A))
% 0.21/0.48         | ~ (v1_relat_1 @ sk_A)
% 0.21/0.48         | ~ (v1_funct_1 @ sk_A)
% 0.21/0.48         | ~ (v2_funct_1 @ sk_A)))
% 0.21/0.48         <= (~
% 0.21/0.48             (((k1_relat_1 @ (k5_relat_1 @ (k2_funct_1 @ sk_A) @ sk_A))
% 0.21/0.48                = (k2_relat_1 @ sk_A))))),
% 0.21/0.48      inference('sup-', [status(thm)], ['29', '30'])).
% 0.21/0.48  thf('32', plain, ((v1_relat_1 @ sk_A)),
% 0.21/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.48  thf('33', plain, ((v1_funct_1 @ sk_A)),
% 0.21/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.48  thf('34', plain, ((v2_funct_1 @ sk_A)),
% 0.21/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.48  thf('35', plain,
% 0.21/0.48      ((((k1_relat_1 @ (k2_funct_1 @ sk_A)) != (k2_relat_1 @ sk_A)))
% 0.21/0.48         <= (~
% 0.21/0.48             (((k1_relat_1 @ (k5_relat_1 @ (k2_funct_1 @ sk_A) @ sk_A))
% 0.21/0.48                = (k2_relat_1 @ sk_A))))),
% 0.21/0.48      inference('demod', [status(thm)], ['31', '32', '33', '34'])).
% 0.21/0.48  thf('36', plain,
% 0.21/0.48      (((((k2_relat_1 @ sk_A) != (k2_relat_1 @ sk_A))
% 0.21/0.48         | ~ (v1_relat_1 @ sk_A)
% 0.21/0.48         | ~ (v1_funct_1 @ sk_A)
% 0.21/0.48         | ~ (v2_funct_1 @ sk_A)))
% 0.21/0.48         <= (~
% 0.21/0.48             (((k1_relat_1 @ (k5_relat_1 @ (k2_funct_1 @ sk_A) @ sk_A))
% 0.21/0.48                = (k2_relat_1 @ sk_A))))),
% 0.21/0.48      inference('sup-', [status(thm)], ['12', '35'])).
% 0.21/0.48  thf('37', plain, ((v1_relat_1 @ sk_A)),
% 0.21/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.48  thf('38', plain, ((v1_funct_1 @ sk_A)),
% 0.21/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.48  thf('39', plain, ((v2_funct_1 @ sk_A)),
% 0.21/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.48  thf('40', plain,
% 0.21/0.48      ((((k2_relat_1 @ sk_A) != (k2_relat_1 @ sk_A)))
% 0.21/0.48         <= (~
% 0.21/0.48             (((k1_relat_1 @ (k5_relat_1 @ (k2_funct_1 @ sk_A) @ sk_A))
% 0.21/0.48                = (k2_relat_1 @ sk_A))))),
% 0.21/0.48      inference('demod', [status(thm)], ['36', '37', '38', '39'])).
% 0.21/0.48  thf('41', plain,
% 0.21/0.48      ((((k1_relat_1 @ (k5_relat_1 @ (k2_funct_1 @ sk_A) @ sk_A))
% 0.21/0.48          = (k2_relat_1 @ sk_A)))),
% 0.21/0.48      inference('simplify', [status(thm)], ['40'])).
% 0.21/0.48  thf('42', plain,
% 0.21/0.48      (~
% 0.21/0.48       (((k2_relat_1 @ (k5_relat_1 @ (k2_funct_1 @ sk_A) @ sk_A))
% 0.21/0.48          = (k2_relat_1 @ sk_A))) | 
% 0.21/0.48       ~
% 0.21/0.48       (((k1_relat_1 @ (k5_relat_1 @ (k2_funct_1 @ sk_A) @ sk_A))
% 0.21/0.48          = (k2_relat_1 @ sk_A)))),
% 0.21/0.48      inference('split', [status(esa)], ['10'])).
% 0.21/0.48  thf('43', plain,
% 0.21/0.48      (~
% 0.21/0.48       (((k2_relat_1 @ (k5_relat_1 @ (k2_funct_1 @ sk_A) @ sk_A))
% 0.21/0.48          = (k2_relat_1 @ sk_A)))),
% 0.21/0.48      inference('sat_resolution*', [status(thm)], ['41', '42'])).
% 0.21/0.48  thf('44', plain,
% 0.21/0.48      (((k2_relat_1 @ (k5_relat_1 @ (k2_funct_1 @ sk_A) @ sk_A))
% 0.21/0.48         != (k2_relat_1 @ sk_A))),
% 0.21/0.48      inference('simpl_trail', [status(thm)], ['11', '43'])).
% 0.21/0.48  thf('45', plain,
% 0.21/0.48      ((((k2_relat_1 @ sk_A) != (k2_relat_1 @ sk_A))
% 0.21/0.48        | ~ (v1_relat_1 @ sk_A)
% 0.21/0.48        | ~ (v1_funct_1 @ sk_A)
% 0.21/0.48        | ~ (v2_funct_1 @ sk_A))),
% 0.21/0.48      inference('sup-', [status(thm)], ['9', '44'])).
% 0.21/0.48  thf('46', plain, ((v1_relat_1 @ sk_A)),
% 0.21/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.48  thf('47', plain, ((v1_funct_1 @ sk_A)),
% 0.21/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.48  thf('48', plain, ((v2_funct_1 @ sk_A)),
% 0.21/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.48  thf('49', plain, (((k2_relat_1 @ sk_A) != (k2_relat_1 @ sk_A))),
% 0.21/0.48      inference('demod', [status(thm)], ['45', '46', '47', '48'])).
% 0.21/0.48  thf('50', plain, ($false), inference('simplify', [status(thm)], ['49'])).
% 0.21/0.48  
% 0.21/0.48  % SZS output end Refutation
% 0.21/0.48  
% 0.21/0.49  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
