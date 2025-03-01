%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.PboxUZfagh

% Computer   : n004.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:45:26 EST 2020

% Result     : Theorem 0.19s
% Output     : Refutation 0.19s
% Verified   : 
% Statistics : Number of formulae       :   74 ( 104 expanded)
%              Number of leaves         :   18 (  35 expanded)
%              Depth                    :   18
%              Number of atoms          :  797 (1385 expanded)
%              Number of equality atoms :   68 ( 122 expanded)
%              Maximal formula depth    :   14 (   7 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k5_relat_1_type,type,(
    k5_relat_1: $i > $i > $i )).

thf(v2_funct_1_type,type,(
    v2_funct_1: $i > $o )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(k1_relat_1_type,type,(
    k1_relat_1: $i > $i )).

thf(v1_funct_1_type,type,(
    v1_funct_1: $i > $o )).

thf(k2_relat_1_type,type,(
    k2_relat_1: $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k6_relat_1_type,type,(
    k6_relat_1: $i > $i )).

thf(k2_funct_1_type,type,(
    k2_funct_1: $i > $i )).

thf(t80_relat_1,axiom,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ( ( k5_relat_1 @ A @ ( k6_relat_1 @ ( k2_relat_1 @ A ) ) )
        = A ) ) )).

thf('0',plain,(
    ! [X9: $i] :
      ( ( ( k5_relat_1 @ X9 @ ( k6_relat_1 @ ( k2_relat_1 @ X9 ) ) )
        = X9 )
      | ~ ( v1_relat_1 @ X9 ) ) ),
    inference(cnf,[status(esa)],[t80_relat_1])).

thf(dt_k2_funct_1,axiom,(
    ! [A: $i] :
      ( ( ( v1_relat_1 @ A )
        & ( v1_funct_1 @ A ) )
     => ( ( v1_relat_1 @ ( k2_funct_1 @ A ) )
        & ( v1_funct_1 @ ( k2_funct_1 @ A ) ) ) ) )).

thf('1',plain,(
    ! [X10: $i] :
      ( ( v1_relat_1 @ ( k2_funct_1 @ X10 ) )
      | ~ ( v1_funct_1 @ X10 )
      | ~ ( v1_relat_1 @ X10 ) ) ),
    inference(cnf,[status(esa)],[dt_k2_funct_1])).

thf(t55_funct_1,axiom,(
    ! [A: $i] :
      ( ( ( v1_relat_1 @ A )
        & ( v1_funct_1 @ A ) )
     => ( ( v2_funct_1 @ A )
       => ( ( ( k2_relat_1 @ A )
            = ( k1_relat_1 @ ( k2_funct_1 @ A ) ) )
          & ( ( k1_relat_1 @ A )
            = ( k2_relat_1 @ ( k2_funct_1 @ A ) ) ) ) ) ) )).

thf('2',plain,(
    ! [X13: $i] :
      ( ~ ( v2_funct_1 @ X13 )
      | ( ( k2_relat_1 @ X13 )
        = ( k1_relat_1 @ ( k2_funct_1 @ X13 ) ) )
      | ~ ( v1_funct_1 @ X13 )
      | ~ ( v1_relat_1 @ X13 ) ) ),
    inference(cnf,[status(esa)],[t55_funct_1])).

thf(t71_relat_1,axiom,(
    ! [A: $i] :
      ( ( ( k2_relat_1 @ ( k6_relat_1 @ A ) )
        = A )
      & ( ( k1_relat_1 @ ( k6_relat_1 @ A ) )
        = A ) ) )).

thf('3',plain,(
    ! [X6: $i] :
      ( ( k1_relat_1 @ ( k6_relat_1 @ X6 ) )
      = X6 ) ),
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

thf('4',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( v1_relat_1 @ X0 )
      | ( ( k1_relat_1 @ X1 )
       != ( k1_relat_1 @ X0 ) )
      | ( ( k1_relat_1 @ ( k5_relat_1 @ X2 @ X1 ) )
        = ( k1_relat_1 @ ( k5_relat_1 @ X2 @ X0 ) ) )
      | ~ ( v1_relat_1 @ X2 )
      | ~ ( v1_relat_1 @ X1 ) ) ),
    inference(cnf,[status(esa)],[t198_relat_1])).

thf('5',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( X0
       != ( k1_relat_1 @ X1 ) )
      | ~ ( v1_relat_1 @ ( k6_relat_1 @ X0 ) )
      | ~ ( v1_relat_1 @ X2 )
      | ( ( k1_relat_1 @ ( k5_relat_1 @ X2 @ ( k6_relat_1 @ X0 ) ) )
        = ( k1_relat_1 @ ( k5_relat_1 @ X2 @ X1 ) ) )
      | ~ ( v1_relat_1 @ X1 ) ) ),
    inference('sup-',[status(thm)],['3','4'])).

thf(fc3_funct_1,axiom,(
    ! [A: $i] :
      ( ( v1_funct_1 @ ( k6_relat_1 @ A ) )
      & ( v1_relat_1 @ ( k6_relat_1 @ A ) ) ) )).

thf('6',plain,(
    ! [X11: $i] :
      ( v1_relat_1 @ ( k6_relat_1 @ X11 ) ) ),
    inference(cnf,[status(esa)],[fc3_funct_1])).

thf('7',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( X0
       != ( k1_relat_1 @ X1 ) )
      | ~ ( v1_relat_1 @ X2 )
      | ( ( k1_relat_1 @ ( k5_relat_1 @ X2 @ ( k6_relat_1 @ X0 ) ) )
        = ( k1_relat_1 @ ( k5_relat_1 @ X2 @ X1 ) ) )
      | ~ ( v1_relat_1 @ X1 ) ) ),
    inference(demod,[status(thm)],['5','6'])).

thf('8',plain,(
    ! [X1: $i,X2: $i] :
      ( ~ ( v1_relat_1 @ X1 )
      | ( ( k1_relat_1 @ ( k5_relat_1 @ X2 @ ( k6_relat_1 @ ( k1_relat_1 @ X1 ) ) ) )
        = ( k1_relat_1 @ ( k5_relat_1 @ X2 @ X1 ) ) )
      | ~ ( v1_relat_1 @ X2 ) ) ),
    inference(simplify,[status(thm)],['7'])).

thf('9',plain,(
    ! [X0: $i,X1: $i] :
      ( ( ( k1_relat_1 @ ( k5_relat_1 @ X1 @ ( k6_relat_1 @ ( k2_relat_1 @ X0 ) ) ) )
        = ( k1_relat_1 @ ( k5_relat_1 @ X1 @ ( k2_funct_1 @ X0 ) ) ) )
      | ~ ( v1_relat_1 @ X0 )
      | ~ ( v1_funct_1 @ X0 )
      | ~ ( v2_funct_1 @ X0 )
      | ~ ( v1_relat_1 @ X1 )
      | ~ ( v1_relat_1 @ ( k2_funct_1 @ X0 ) ) ) ),
    inference('sup+',[status(thm)],['2','8'])).

thf('10',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v1_relat_1 @ X0 )
      | ~ ( v1_funct_1 @ X0 )
      | ~ ( v1_relat_1 @ X1 )
      | ~ ( v2_funct_1 @ X0 )
      | ~ ( v1_funct_1 @ X0 )
      | ~ ( v1_relat_1 @ X0 )
      | ( ( k1_relat_1 @ ( k5_relat_1 @ X1 @ ( k6_relat_1 @ ( k2_relat_1 @ X0 ) ) ) )
        = ( k1_relat_1 @ ( k5_relat_1 @ X1 @ ( k2_funct_1 @ X0 ) ) ) ) ) ),
    inference('sup-',[status(thm)],['1','9'])).

thf('11',plain,(
    ! [X0: $i,X1: $i] :
      ( ( ( k1_relat_1 @ ( k5_relat_1 @ X1 @ ( k6_relat_1 @ ( k2_relat_1 @ X0 ) ) ) )
        = ( k1_relat_1 @ ( k5_relat_1 @ X1 @ ( k2_funct_1 @ X0 ) ) ) )
      | ~ ( v2_funct_1 @ X0 )
      | ~ ( v1_relat_1 @ X1 )
      | ~ ( v1_funct_1 @ X0 )
      | ~ ( v1_relat_1 @ X0 ) ) ),
    inference(simplify,[status(thm)],['10'])).

thf('12',plain,(
    ! [X0: $i] :
      ( ( ( k1_relat_1 @ X0 )
        = ( k1_relat_1 @ ( k5_relat_1 @ X0 @ ( k2_funct_1 @ X0 ) ) ) )
      | ~ ( v1_relat_1 @ X0 )
      | ~ ( v1_relat_1 @ X0 )
      | ~ ( v1_funct_1 @ X0 )
      | ~ ( v1_relat_1 @ X0 )
      | ~ ( v2_funct_1 @ X0 ) ) ),
    inference('sup+',[status(thm)],['0','11'])).

thf('13',plain,(
    ! [X0: $i] :
      ( ~ ( v2_funct_1 @ X0 )
      | ~ ( v1_funct_1 @ X0 )
      | ~ ( v1_relat_1 @ X0 )
      | ( ( k1_relat_1 @ X0 )
        = ( k1_relat_1 @ ( k5_relat_1 @ X0 @ ( k2_funct_1 @ X0 ) ) ) ) ) ),
    inference(simplify,[status(thm)],['12'])).

thf(t58_funct_1,conjecture,(
    ! [A: $i] :
      ( ( ( v1_relat_1 @ A )
        & ( v1_funct_1 @ A ) )
     => ( ( v2_funct_1 @ A )
       => ( ( ( k1_relat_1 @ ( k5_relat_1 @ A @ ( k2_funct_1 @ A ) ) )
            = ( k1_relat_1 @ A ) )
          & ( ( k2_relat_1 @ ( k5_relat_1 @ A @ ( k2_funct_1 @ A ) ) )
            = ( k1_relat_1 @ A ) ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i] :
        ( ( ( v1_relat_1 @ A )
          & ( v1_funct_1 @ A ) )
       => ( ( v2_funct_1 @ A )
         => ( ( ( k1_relat_1 @ ( k5_relat_1 @ A @ ( k2_funct_1 @ A ) ) )
              = ( k1_relat_1 @ A ) )
            & ( ( k2_relat_1 @ ( k5_relat_1 @ A @ ( k2_funct_1 @ A ) ) )
              = ( k1_relat_1 @ A ) ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t58_funct_1])).

thf('14',plain,
    ( ( ( k1_relat_1 @ ( k5_relat_1 @ sk_A @ ( k2_funct_1 @ sk_A ) ) )
     != ( k1_relat_1 @ sk_A ) )
    | ( ( k2_relat_1 @ ( k5_relat_1 @ sk_A @ ( k2_funct_1 @ sk_A ) ) )
     != ( k1_relat_1 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('15',plain,
    ( ( ( k1_relat_1 @ ( k5_relat_1 @ sk_A @ ( k2_funct_1 @ sk_A ) ) )
     != ( k1_relat_1 @ sk_A ) )
   <= ( ( k1_relat_1 @ ( k5_relat_1 @ sk_A @ ( k2_funct_1 @ sk_A ) ) )
     != ( k1_relat_1 @ sk_A ) ) ),
    inference(split,[status(esa)],['14'])).

thf('16',plain,(
    ! [X13: $i] :
      ( ~ ( v2_funct_1 @ X13 )
      | ( ( k1_relat_1 @ X13 )
        = ( k2_relat_1 @ ( k2_funct_1 @ X13 ) ) )
      | ~ ( v1_funct_1 @ X13 )
      | ~ ( v1_relat_1 @ X13 ) ) ),
    inference(cnf,[status(esa)],[t55_funct_1])).

thf('17',plain,(
    ! [X10: $i] :
      ( ( v1_relat_1 @ ( k2_funct_1 @ X10 ) )
      | ~ ( v1_funct_1 @ X10 )
      | ~ ( v1_relat_1 @ X10 ) ) ),
    inference(cnf,[status(esa)],[dt_k2_funct_1])).

thf('18',plain,(
    ! [X10: $i] :
      ( ( v1_relat_1 @ ( k2_funct_1 @ X10 ) )
      | ~ ( v1_funct_1 @ X10 )
      | ~ ( v1_relat_1 @ X10 ) ) ),
    inference(cnf,[status(esa)],[dt_k2_funct_1])).

thf('19',plain,(
    ! [X13: $i] :
      ( ~ ( v2_funct_1 @ X13 )
      | ( ( k2_relat_1 @ X13 )
        = ( k1_relat_1 @ ( k2_funct_1 @ X13 ) ) )
      | ~ ( v1_funct_1 @ X13 )
      | ~ ( v1_relat_1 @ X13 ) ) ),
    inference(cnf,[status(esa)],[t55_funct_1])).

thf(t78_relat_1,axiom,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ( ( k5_relat_1 @ ( k6_relat_1 @ ( k1_relat_1 @ A ) ) @ A )
        = A ) ) )).

thf('20',plain,(
    ! [X8: $i] :
      ( ( ( k5_relat_1 @ ( k6_relat_1 @ ( k1_relat_1 @ X8 ) ) @ X8 )
        = X8 )
      | ~ ( v1_relat_1 @ X8 ) ) ),
    inference(cnf,[status(esa)],[t78_relat_1])).

thf('21',plain,(
    ! [X0: $i] :
      ( ( ( k5_relat_1 @ ( k6_relat_1 @ ( k2_relat_1 @ X0 ) ) @ ( k2_funct_1 @ X0 ) )
        = ( k2_funct_1 @ X0 ) )
      | ~ ( v1_relat_1 @ X0 )
      | ~ ( v1_funct_1 @ X0 )
      | ~ ( v2_funct_1 @ X0 )
      | ~ ( v1_relat_1 @ ( k2_funct_1 @ X0 ) ) ) ),
    inference('sup+',[status(thm)],['19','20'])).

thf('22',plain,(
    ! [X0: $i] :
      ( ~ ( v1_relat_1 @ X0 )
      | ~ ( v1_funct_1 @ X0 )
      | ~ ( v2_funct_1 @ X0 )
      | ~ ( v1_funct_1 @ X0 )
      | ~ ( v1_relat_1 @ X0 )
      | ( ( k5_relat_1 @ ( k6_relat_1 @ ( k2_relat_1 @ X0 ) ) @ ( k2_funct_1 @ X0 ) )
        = ( k2_funct_1 @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['18','21'])).

thf('23',plain,(
    ! [X0: $i] :
      ( ( ( k5_relat_1 @ ( k6_relat_1 @ ( k2_relat_1 @ X0 ) ) @ ( k2_funct_1 @ X0 ) )
        = ( k2_funct_1 @ X0 ) )
      | ~ ( v2_funct_1 @ X0 )
      | ~ ( v1_funct_1 @ X0 )
      | ~ ( v1_relat_1 @ X0 ) ) ),
    inference(simplify,[status(thm)],['22'])).

thf('24',plain,(
    ! [X7: $i] :
      ( ( k2_relat_1 @ ( k6_relat_1 @ X7 ) )
      = X7 ) ),
    inference(cnf,[status(esa)],[t71_relat_1])).

thf(t199_relat_1,axiom,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ! [B: $i] :
          ( ( v1_relat_1 @ B )
         => ! [C: $i] :
              ( ( v1_relat_1 @ C )
             => ( ( ( k2_relat_1 @ A )
                  = ( k2_relat_1 @ B ) )
               => ( ( k2_relat_1 @ ( k5_relat_1 @ A @ C ) )
                  = ( k2_relat_1 @ ( k5_relat_1 @ B @ C ) ) ) ) ) ) ) )).

thf('25',plain,(
    ! [X3: $i,X4: $i,X5: $i] :
      ( ~ ( v1_relat_1 @ X3 )
      | ( ( k2_relat_1 @ X4 )
       != ( k2_relat_1 @ X3 ) )
      | ( ( k2_relat_1 @ ( k5_relat_1 @ X4 @ X5 ) )
        = ( k2_relat_1 @ ( k5_relat_1 @ X3 @ X5 ) ) )
      | ~ ( v1_relat_1 @ X5 )
      | ~ ( v1_relat_1 @ X4 ) ) ),
    inference(cnf,[status(esa)],[t199_relat_1])).

thf('26',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( X0
       != ( k2_relat_1 @ X1 ) )
      | ~ ( v1_relat_1 @ ( k6_relat_1 @ X0 ) )
      | ~ ( v1_relat_1 @ X2 )
      | ( ( k2_relat_1 @ ( k5_relat_1 @ ( k6_relat_1 @ X0 ) @ X2 ) )
        = ( k2_relat_1 @ ( k5_relat_1 @ X1 @ X2 ) ) )
      | ~ ( v1_relat_1 @ X1 ) ) ),
    inference('sup-',[status(thm)],['24','25'])).

thf('27',plain,(
    ! [X11: $i] :
      ( v1_relat_1 @ ( k6_relat_1 @ X11 ) ) ),
    inference(cnf,[status(esa)],[fc3_funct_1])).

thf('28',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( X0
       != ( k2_relat_1 @ X1 ) )
      | ~ ( v1_relat_1 @ X2 )
      | ( ( k2_relat_1 @ ( k5_relat_1 @ ( k6_relat_1 @ X0 ) @ X2 ) )
        = ( k2_relat_1 @ ( k5_relat_1 @ X1 @ X2 ) ) )
      | ~ ( v1_relat_1 @ X1 ) ) ),
    inference(demod,[status(thm)],['26','27'])).

thf('29',plain,(
    ! [X1: $i,X2: $i] :
      ( ~ ( v1_relat_1 @ X1 )
      | ( ( k2_relat_1 @ ( k5_relat_1 @ ( k6_relat_1 @ ( k2_relat_1 @ X1 ) ) @ X2 ) )
        = ( k2_relat_1 @ ( k5_relat_1 @ X1 @ X2 ) ) )
      | ~ ( v1_relat_1 @ X2 ) ) ),
    inference(simplify,[status(thm)],['28'])).

thf('30',plain,(
    ! [X0: $i] :
      ( ( ( k2_relat_1 @ ( k2_funct_1 @ X0 ) )
        = ( k2_relat_1 @ ( k5_relat_1 @ X0 @ ( k2_funct_1 @ X0 ) ) ) )
      | ~ ( v1_relat_1 @ X0 )
      | ~ ( v1_funct_1 @ X0 )
      | ~ ( v2_funct_1 @ X0 )
      | ~ ( v1_relat_1 @ ( k2_funct_1 @ X0 ) )
      | ~ ( v1_relat_1 @ X0 ) ) ),
    inference('sup+',[status(thm)],['23','29'])).

thf('31',plain,(
    ! [X0: $i] :
      ( ~ ( v1_relat_1 @ ( k2_funct_1 @ X0 ) )
      | ~ ( v2_funct_1 @ X0 )
      | ~ ( v1_funct_1 @ X0 )
      | ~ ( v1_relat_1 @ X0 )
      | ( ( k2_relat_1 @ ( k2_funct_1 @ X0 ) )
        = ( k2_relat_1 @ ( k5_relat_1 @ X0 @ ( k2_funct_1 @ X0 ) ) ) ) ) ),
    inference(simplify,[status(thm)],['30'])).

thf('32',plain,(
    ! [X0: $i] :
      ( ~ ( v1_relat_1 @ X0 )
      | ~ ( v1_funct_1 @ X0 )
      | ( ( k2_relat_1 @ ( k2_funct_1 @ X0 ) )
        = ( k2_relat_1 @ ( k5_relat_1 @ X0 @ ( k2_funct_1 @ X0 ) ) ) )
      | ~ ( v1_relat_1 @ X0 )
      | ~ ( v1_funct_1 @ X0 )
      | ~ ( v2_funct_1 @ X0 ) ) ),
    inference('sup-',[status(thm)],['17','31'])).

thf('33',plain,(
    ! [X0: $i] :
      ( ~ ( v2_funct_1 @ X0 )
      | ( ( k2_relat_1 @ ( k2_funct_1 @ X0 ) )
        = ( k2_relat_1 @ ( k5_relat_1 @ X0 @ ( k2_funct_1 @ X0 ) ) ) )
      | ~ ( v1_funct_1 @ X0 )
      | ~ ( v1_relat_1 @ X0 ) ) ),
    inference(simplify,[status(thm)],['32'])).

thf('34',plain,
    ( ( ( k2_relat_1 @ ( k5_relat_1 @ sk_A @ ( k2_funct_1 @ sk_A ) ) )
     != ( k1_relat_1 @ sk_A ) )
   <= ( ( k2_relat_1 @ ( k5_relat_1 @ sk_A @ ( k2_funct_1 @ sk_A ) ) )
     != ( k1_relat_1 @ sk_A ) ) ),
    inference(split,[status(esa)],['14'])).

thf('35',plain,
    ( ( ( ( k2_relat_1 @ ( k2_funct_1 @ sk_A ) )
       != ( k1_relat_1 @ sk_A ) )
      | ~ ( v1_relat_1 @ sk_A )
      | ~ ( v1_funct_1 @ sk_A )
      | ~ ( v2_funct_1 @ sk_A ) )
   <= ( ( k2_relat_1 @ ( k5_relat_1 @ sk_A @ ( k2_funct_1 @ sk_A ) ) )
     != ( k1_relat_1 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['33','34'])).

thf('36',plain,(
    v1_relat_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('37',plain,(
    v1_funct_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('38',plain,(
    v2_funct_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('39',plain,
    ( ( ( k2_relat_1 @ ( k2_funct_1 @ sk_A ) )
     != ( k1_relat_1 @ sk_A ) )
   <= ( ( k2_relat_1 @ ( k5_relat_1 @ sk_A @ ( k2_funct_1 @ sk_A ) ) )
     != ( k1_relat_1 @ sk_A ) ) ),
    inference(demod,[status(thm)],['35','36','37','38'])).

thf('40',plain,
    ( ( ( ( k1_relat_1 @ sk_A )
       != ( k1_relat_1 @ sk_A ) )
      | ~ ( v1_relat_1 @ sk_A )
      | ~ ( v1_funct_1 @ sk_A )
      | ~ ( v2_funct_1 @ sk_A ) )
   <= ( ( k2_relat_1 @ ( k5_relat_1 @ sk_A @ ( k2_funct_1 @ sk_A ) ) )
     != ( k1_relat_1 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['16','39'])).

thf('41',plain,(
    v1_relat_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('42',plain,(
    v1_funct_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('43',plain,(
    v2_funct_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('44',plain,
    ( ( ( k1_relat_1 @ sk_A )
     != ( k1_relat_1 @ sk_A ) )
   <= ( ( k2_relat_1 @ ( k5_relat_1 @ sk_A @ ( k2_funct_1 @ sk_A ) ) )
     != ( k1_relat_1 @ sk_A ) ) ),
    inference(demod,[status(thm)],['40','41','42','43'])).

thf('45',plain,
    ( ( k2_relat_1 @ ( k5_relat_1 @ sk_A @ ( k2_funct_1 @ sk_A ) ) )
    = ( k1_relat_1 @ sk_A ) ),
    inference(simplify,[status(thm)],['44'])).

thf('46',plain,
    ( ( ( k1_relat_1 @ ( k5_relat_1 @ sk_A @ ( k2_funct_1 @ sk_A ) ) )
     != ( k1_relat_1 @ sk_A ) )
    | ( ( k2_relat_1 @ ( k5_relat_1 @ sk_A @ ( k2_funct_1 @ sk_A ) ) )
     != ( k1_relat_1 @ sk_A ) ) ),
    inference(split,[status(esa)],['14'])).

thf('47',plain,(
    ( k1_relat_1 @ ( k5_relat_1 @ sk_A @ ( k2_funct_1 @ sk_A ) ) )
 != ( k1_relat_1 @ sk_A ) ),
    inference('sat_resolution*',[status(thm)],['45','46'])).

thf('48',plain,(
    ( k1_relat_1 @ ( k5_relat_1 @ sk_A @ ( k2_funct_1 @ sk_A ) ) )
 != ( k1_relat_1 @ sk_A ) ),
    inference(simpl_trail,[status(thm)],['15','47'])).

thf('49',plain,
    ( ( ( k1_relat_1 @ sk_A )
     != ( k1_relat_1 @ sk_A ) )
    | ~ ( v1_relat_1 @ sk_A )
    | ~ ( v1_funct_1 @ sk_A )
    | ~ ( v2_funct_1 @ sk_A ) ),
    inference('sup-',[status(thm)],['13','48'])).

thf('50',plain,(
    v1_relat_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('51',plain,(
    v1_funct_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('52',plain,(
    v2_funct_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('53',plain,(
    ( k1_relat_1 @ sk_A )
 != ( k1_relat_1 @ sk_A ) ),
    inference(demod,[status(thm)],['49','50','51','52'])).

thf('54',plain,(
    $false ),
    inference(simplify,[status(thm)],['53'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.12  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.PboxUZfagh
% 0.12/0.33  % Computer   : n004.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % DateTime   : Tue Dec  1 15:17:39 EST 2020
% 0.12/0.33  % CPUTime    : 
% 0.12/0.33  % Running portfolio for 600 s
% 0.12/0.33  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.12/0.33  % Number of cores: 8
% 0.12/0.33  % Python version: Python 3.6.8
% 0.12/0.33  % Running in FO mode
% 0.19/0.51  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.19/0.51  % Solved by: fo/fo7.sh
% 0.19/0.51  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.19/0.51  % done 57 iterations in 0.067s
% 0.19/0.51  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.19/0.51  % SZS output start Refutation
% 0.19/0.51  thf(k5_relat_1_type, type, k5_relat_1: $i > $i > $i).
% 0.19/0.51  thf(v2_funct_1_type, type, v2_funct_1: $i > $o).
% 0.19/0.51  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.19/0.51  thf(k1_relat_1_type, type, k1_relat_1: $i > $i).
% 0.19/0.51  thf(v1_funct_1_type, type, v1_funct_1: $i > $o).
% 0.19/0.51  thf(k2_relat_1_type, type, k2_relat_1: $i > $i).
% 0.19/0.51  thf(sk_A_type, type, sk_A: $i).
% 0.19/0.51  thf(k6_relat_1_type, type, k6_relat_1: $i > $i).
% 0.19/0.51  thf(k2_funct_1_type, type, k2_funct_1: $i > $i).
% 0.19/0.51  thf(t80_relat_1, axiom,
% 0.19/0.51    (![A:$i]:
% 0.19/0.51     ( ( v1_relat_1 @ A ) =>
% 0.19/0.51       ( ( k5_relat_1 @ A @ ( k6_relat_1 @ ( k2_relat_1 @ A ) ) ) = ( A ) ) ))).
% 0.19/0.51  thf('0', plain,
% 0.19/0.51      (![X9 : $i]:
% 0.19/0.51         (((k5_relat_1 @ X9 @ (k6_relat_1 @ (k2_relat_1 @ X9))) = (X9))
% 0.19/0.51          | ~ (v1_relat_1 @ X9))),
% 0.19/0.51      inference('cnf', [status(esa)], [t80_relat_1])).
% 0.19/0.51  thf(dt_k2_funct_1, axiom,
% 0.19/0.51    (![A:$i]:
% 0.19/0.51     ( ( ( v1_relat_1 @ A ) & ( v1_funct_1 @ A ) ) =>
% 0.19/0.51       ( ( v1_relat_1 @ ( k2_funct_1 @ A ) ) & 
% 0.19/0.51         ( v1_funct_1 @ ( k2_funct_1 @ A ) ) ) ))).
% 0.19/0.51  thf('1', plain,
% 0.19/0.51      (![X10 : $i]:
% 0.19/0.51         ((v1_relat_1 @ (k2_funct_1 @ X10))
% 0.19/0.51          | ~ (v1_funct_1 @ X10)
% 0.19/0.51          | ~ (v1_relat_1 @ X10))),
% 0.19/0.51      inference('cnf', [status(esa)], [dt_k2_funct_1])).
% 0.19/0.51  thf(t55_funct_1, axiom,
% 0.19/0.51    (![A:$i]:
% 0.19/0.51     ( ( ( v1_relat_1 @ A ) & ( v1_funct_1 @ A ) ) =>
% 0.19/0.51       ( ( v2_funct_1 @ A ) =>
% 0.19/0.51         ( ( ( k2_relat_1 @ A ) = ( k1_relat_1 @ ( k2_funct_1 @ A ) ) ) & 
% 0.19/0.51           ( ( k1_relat_1 @ A ) = ( k2_relat_1 @ ( k2_funct_1 @ A ) ) ) ) ) ))).
% 0.19/0.51  thf('2', plain,
% 0.19/0.51      (![X13 : $i]:
% 0.19/0.51         (~ (v2_funct_1 @ X13)
% 0.19/0.51          | ((k2_relat_1 @ X13) = (k1_relat_1 @ (k2_funct_1 @ X13)))
% 0.19/0.51          | ~ (v1_funct_1 @ X13)
% 0.19/0.51          | ~ (v1_relat_1 @ X13))),
% 0.19/0.51      inference('cnf', [status(esa)], [t55_funct_1])).
% 0.19/0.51  thf(t71_relat_1, axiom,
% 0.19/0.51    (![A:$i]:
% 0.19/0.51     ( ( ( k2_relat_1 @ ( k6_relat_1 @ A ) ) = ( A ) ) & 
% 0.19/0.51       ( ( k1_relat_1 @ ( k6_relat_1 @ A ) ) = ( A ) ) ))).
% 0.19/0.51  thf('3', plain, (![X6 : $i]: ((k1_relat_1 @ (k6_relat_1 @ X6)) = (X6))),
% 0.19/0.51      inference('cnf', [status(esa)], [t71_relat_1])).
% 0.19/0.51  thf(t198_relat_1, axiom,
% 0.19/0.51    (![A:$i]:
% 0.19/0.51     ( ( v1_relat_1 @ A ) =>
% 0.19/0.51       ( ![B:$i]:
% 0.19/0.51         ( ( v1_relat_1 @ B ) =>
% 0.19/0.51           ( ![C:$i]:
% 0.19/0.51             ( ( v1_relat_1 @ C ) =>
% 0.19/0.51               ( ( ( k1_relat_1 @ A ) = ( k1_relat_1 @ B ) ) =>
% 0.19/0.51                 ( ( k1_relat_1 @ ( k5_relat_1 @ C @ A ) ) =
% 0.19/0.51                   ( k1_relat_1 @ ( k5_relat_1 @ C @ B ) ) ) ) ) ) ) ) ))).
% 0.19/0.51  thf('4', plain,
% 0.19/0.51      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.19/0.51         (~ (v1_relat_1 @ X0)
% 0.19/0.51          | ((k1_relat_1 @ X1) != (k1_relat_1 @ X0))
% 0.19/0.51          | ((k1_relat_1 @ (k5_relat_1 @ X2 @ X1))
% 0.19/0.51              = (k1_relat_1 @ (k5_relat_1 @ X2 @ X0)))
% 0.19/0.51          | ~ (v1_relat_1 @ X2)
% 0.19/0.51          | ~ (v1_relat_1 @ X1))),
% 0.19/0.51      inference('cnf', [status(esa)], [t198_relat_1])).
% 0.19/0.51  thf('5', plain,
% 0.19/0.51      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.19/0.51         (((X0) != (k1_relat_1 @ X1))
% 0.19/0.51          | ~ (v1_relat_1 @ (k6_relat_1 @ X0))
% 0.19/0.51          | ~ (v1_relat_1 @ X2)
% 0.19/0.51          | ((k1_relat_1 @ (k5_relat_1 @ X2 @ (k6_relat_1 @ X0)))
% 0.19/0.51              = (k1_relat_1 @ (k5_relat_1 @ X2 @ X1)))
% 0.19/0.51          | ~ (v1_relat_1 @ X1))),
% 0.19/0.51      inference('sup-', [status(thm)], ['3', '4'])).
% 0.19/0.51  thf(fc3_funct_1, axiom,
% 0.19/0.51    (![A:$i]:
% 0.19/0.51     ( ( v1_funct_1 @ ( k6_relat_1 @ A ) ) & 
% 0.19/0.51       ( v1_relat_1 @ ( k6_relat_1 @ A ) ) ))).
% 0.19/0.51  thf('6', plain, (![X11 : $i]: (v1_relat_1 @ (k6_relat_1 @ X11))),
% 0.19/0.51      inference('cnf', [status(esa)], [fc3_funct_1])).
% 0.19/0.51  thf('7', plain,
% 0.19/0.51      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.19/0.51         (((X0) != (k1_relat_1 @ X1))
% 0.19/0.51          | ~ (v1_relat_1 @ X2)
% 0.19/0.51          | ((k1_relat_1 @ (k5_relat_1 @ X2 @ (k6_relat_1 @ X0)))
% 0.19/0.51              = (k1_relat_1 @ (k5_relat_1 @ X2 @ X1)))
% 0.19/0.51          | ~ (v1_relat_1 @ X1))),
% 0.19/0.51      inference('demod', [status(thm)], ['5', '6'])).
% 0.19/0.51  thf('8', plain,
% 0.19/0.51      (![X1 : $i, X2 : $i]:
% 0.19/0.51         (~ (v1_relat_1 @ X1)
% 0.19/0.51          | ((k1_relat_1 @ (k5_relat_1 @ X2 @ (k6_relat_1 @ (k1_relat_1 @ X1))))
% 0.19/0.51              = (k1_relat_1 @ (k5_relat_1 @ X2 @ X1)))
% 0.19/0.51          | ~ (v1_relat_1 @ X2))),
% 0.19/0.51      inference('simplify', [status(thm)], ['7'])).
% 0.19/0.51  thf('9', plain,
% 0.19/0.51      (![X0 : $i, X1 : $i]:
% 0.19/0.51         (((k1_relat_1 @ (k5_relat_1 @ X1 @ (k6_relat_1 @ (k2_relat_1 @ X0))))
% 0.19/0.51            = (k1_relat_1 @ (k5_relat_1 @ X1 @ (k2_funct_1 @ X0))))
% 0.19/0.51          | ~ (v1_relat_1 @ X0)
% 0.19/0.51          | ~ (v1_funct_1 @ X0)
% 0.19/0.51          | ~ (v2_funct_1 @ X0)
% 0.19/0.51          | ~ (v1_relat_1 @ X1)
% 0.19/0.51          | ~ (v1_relat_1 @ (k2_funct_1 @ X0)))),
% 0.19/0.51      inference('sup+', [status(thm)], ['2', '8'])).
% 0.19/0.51  thf('10', plain,
% 0.19/0.51      (![X0 : $i, X1 : $i]:
% 0.19/0.51         (~ (v1_relat_1 @ X0)
% 0.19/0.51          | ~ (v1_funct_1 @ X0)
% 0.19/0.51          | ~ (v1_relat_1 @ X1)
% 0.19/0.51          | ~ (v2_funct_1 @ X0)
% 0.19/0.51          | ~ (v1_funct_1 @ X0)
% 0.19/0.51          | ~ (v1_relat_1 @ X0)
% 0.19/0.51          | ((k1_relat_1 @ (k5_relat_1 @ X1 @ (k6_relat_1 @ (k2_relat_1 @ X0))))
% 0.19/0.51              = (k1_relat_1 @ (k5_relat_1 @ X1 @ (k2_funct_1 @ X0)))))),
% 0.19/0.51      inference('sup-', [status(thm)], ['1', '9'])).
% 0.19/0.51  thf('11', plain,
% 0.19/0.51      (![X0 : $i, X1 : $i]:
% 0.19/0.51         (((k1_relat_1 @ (k5_relat_1 @ X1 @ (k6_relat_1 @ (k2_relat_1 @ X0))))
% 0.19/0.51            = (k1_relat_1 @ (k5_relat_1 @ X1 @ (k2_funct_1 @ X0))))
% 0.19/0.51          | ~ (v2_funct_1 @ X0)
% 0.19/0.51          | ~ (v1_relat_1 @ X1)
% 0.19/0.51          | ~ (v1_funct_1 @ X0)
% 0.19/0.51          | ~ (v1_relat_1 @ X0))),
% 0.19/0.51      inference('simplify', [status(thm)], ['10'])).
% 0.19/0.51  thf('12', plain,
% 0.19/0.51      (![X0 : $i]:
% 0.19/0.51         (((k1_relat_1 @ X0)
% 0.19/0.51            = (k1_relat_1 @ (k5_relat_1 @ X0 @ (k2_funct_1 @ X0))))
% 0.19/0.51          | ~ (v1_relat_1 @ X0)
% 0.19/0.51          | ~ (v1_relat_1 @ X0)
% 0.19/0.51          | ~ (v1_funct_1 @ X0)
% 0.19/0.51          | ~ (v1_relat_1 @ X0)
% 0.19/0.51          | ~ (v2_funct_1 @ X0))),
% 0.19/0.51      inference('sup+', [status(thm)], ['0', '11'])).
% 0.19/0.51  thf('13', plain,
% 0.19/0.51      (![X0 : $i]:
% 0.19/0.51         (~ (v2_funct_1 @ X0)
% 0.19/0.51          | ~ (v1_funct_1 @ X0)
% 0.19/0.51          | ~ (v1_relat_1 @ X0)
% 0.19/0.51          | ((k1_relat_1 @ X0)
% 0.19/0.51              = (k1_relat_1 @ (k5_relat_1 @ X0 @ (k2_funct_1 @ X0)))))),
% 0.19/0.51      inference('simplify', [status(thm)], ['12'])).
% 0.19/0.51  thf(t58_funct_1, conjecture,
% 0.19/0.51    (![A:$i]:
% 0.19/0.51     ( ( ( v1_relat_1 @ A ) & ( v1_funct_1 @ A ) ) =>
% 0.19/0.51       ( ( v2_funct_1 @ A ) =>
% 0.19/0.51         ( ( ( k1_relat_1 @ ( k5_relat_1 @ A @ ( k2_funct_1 @ A ) ) ) =
% 0.19/0.51             ( k1_relat_1 @ A ) ) & 
% 0.19/0.51           ( ( k2_relat_1 @ ( k5_relat_1 @ A @ ( k2_funct_1 @ A ) ) ) =
% 0.19/0.51             ( k1_relat_1 @ A ) ) ) ) ))).
% 0.19/0.51  thf(zf_stmt_0, negated_conjecture,
% 0.19/0.51    (~( ![A:$i]:
% 0.19/0.51        ( ( ( v1_relat_1 @ A ) & ( v1_funct_1 @ A ) ) =>
% 0.19/0.51          ( ( v2_funct_1 @ A ) =>
% 0.19/0.51            ( ( ( k1_relat_1 @ ( k5_relat_1 @ A @ ( k2_funct_1 @ A ) ) ) =
% 0.19/0.51                ( k1_relat_1 @ A ) ) & 
% 0.19/0.51              ( ( k2_relat_1 @ ( k5_relat_1 @ A @ ( k2_funct_1 @ A ) ) ) =
% 0.19/0.51                ( k1_relat_1 @ A ) ) ) ) ) )),
% 0.19/0.51    inference('cnf.neg', [status(esa)], [t58_funct_1])).
% 0.19/0.51  thf('14', plain,
% 0.19/0.51      ((((k1_relat_1 @ (k5_relat_1 @ sk_A @ (k2_funct_1 @ sk_A)))
% 0.19/0.51          != (k1_relat_1 @ sk_A))
% 0.19/0.51        | ((k2_relat_1 @ (k5_relat_1 @ sk_A @ (k2_funct_1 @ sk_A)))
% 0.19/0.51            != (k1_relat_1 @ sk_A)))),
% 0.19/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.19/0.51  thf('15', plain,
% 0.19/0.51      ((((k1_relat_1 @ (k5_relat_1 @ sk_A @ (k2_funct_1 @ sk_A)))
% 0.19/0.51          != (k1_relat_1 @ sk_A)))
% 0.19/0.51         <= (~
% 0.19/0.51             (((k1_relat_1 @ (k5_relat_1 @ sk_A @ (k2_funct_1 @ sk_A)))
% 0.19/0.51                = (k1_relat_1 @ sk_A))))),
% 0.19/0.51      inference('split', [status(esa)], ['14'])).
% 0.19/0.51  thf('16', plain,
% 0.19/0.51      (![X13 : $i]:
% 0.19/0.51         (~ (v2_funct_1 @ X13)
% 0.19/0.51          | ((k1_relat_1 @ X13) = (k2_relat_1 @ (k2_funct_1 @ X13)))
% 0.19/0.51          | ~ (v1_funct_1 @ X13)
% 0.19/0.51          | ~ (v1_relat_1 @ X13))),
% 0.19/0.51      inference('cnf', [status(esa)], [t55_funct_1])).
% 0.19/0.51  thf('17', plain,
% 0.19/0.51      (![X10 : $i]:
% 0.19/0.51         ((v1_relat_1 @ (k2_funct_1 @ X10))
% 0.19/0.51          | ~ (v1_funct_1 @ X10)
% 0.19/0.51          | ~ (v1_relat_1 @ X10))),
% 0.19/0.51      inference('cnf', [status(esa)], [dt_k2_funct_1])).
% 0.19/0.51  thf('18', plain,
% 0.19/0.51      (![X10 : $i]:
% 0.19/0.51         ((v1_relat_1 @ (k2_funct_1 @ X10))
% 0.19/0.51          | ~ (v1_funct_1 @ X10)
% 0.19/0.51          | ~ (v1_relat_1 @ X10))),
% 0.19/0.51      inference('cnf', [status(esa)], [dt_k2_funct_1])).
% 0.19/0.51  thf('19', plain,
% 0.19/0.51      (![X13 : $i]:
% 0.19/0.51         (~ (v2_funct_1 @ X13)
% 0.19/0.51          | ((k2_relat_1 @ X13) = (k1_relat_1 @ (k2_funct_1 @ X13)))
% 0.19/0.51          | ~ (v1_funct_1 @ X13)
% 0.19/0.51          | ~ (v1_relat_1 @ X13))),
% 0.19/0.51      inference('cnf', [status(esa)], [t55_funct_1])).
% 0.19/0.51  thf(t78_relat_1, axiom,
% 0.19/0.51    (![A:$i]:
% 0.19/0.51     ( ( v1_relat_1 @ A ) =>
% 0.19/0.51       ( ( k5_relat_1 @ ( k6_relat_1 @ ( k1_relat_1 @ A ) ) @ A ) = ( A ) ) ))).
% 0.19/0.51  thf('20', plain,
% 0.19/0.51      (![X8 : $i]:
% 0.19/0.51         (((k5_relat_1 @ (k6_relat_1 @ (k1_relat_1 @ X8)) @ X8) = (X8))
% 0.19/0.51          | ~ (v1_relat_1 @ X8))),
% 0.19/0.51      inference('cnf', [status(esa)], [t78_relat_1])).
% 0.19/0.51  thf('21', plain,
% 0.19/0.51      (![X0 : $i]:
% 0.19/0.51         (((k5_relat_1 @ (k6_relat_1 @ (k2_relat_1 @ X0)) @ (k2_funct_1 @ X0))
% 0.19/0.51            = (k2_funct_1 @ X0))
% 0.19/0.51          | ~ (v1_relat_1 @ X0)
% 0.19/0.51          | ~ (v1_funct_1 @ X0)
% 0.19/0.51          | ~ (v2_funct_1 @ X0)
% 0.19/0.51          | ~ (v1_relat_1 @ (k2_funct_1 @ X0)))),
% 0.19/0.51      inference('sup+', [status(thm)], ['19', '20'])).
% 0.19/0.51  thf('22', plain,
% 0.19/0.51      (![X0 : $i]:
% 0.19/0.51         (~ (v1_relat_1 @ X0)
% 0.19/0.51          | ~ (v1_funct_1 @ X0)
% 0.19/0.51          | ~ (v2_funct_1 @ X0)
% 0.19/0.51          | ~ (v1_funct_1 @ X0)
% 0.19/0.51          | ~ (v1_relat_1 @ X0)
% 0.19/0.51          | ((k5_relat_1 @ (k6_relat_1 @ (k2_relat_1 @ X0)) @ (k2_funct_1 @ X0))
% 0.19/0.51              = (k2_funct_1 @ X0)))),
% 0.19/0.51      inference('sup-', [status(thm)], ['18', '21'])).
% 0.19/0.51  thf('23', plain,
% 0.19/0.51      (![X0 : $i]:
% 0.19/0.51         (((k5_relat_1 @ (k6_relat_1 @ (k2_relat_1 @ X0)) @ (k2_funct_1 @ X0))
% 0.19/0.51            = (k2_funct_1 @ X0))
% 0.19/0.51          | ~ (v2_funct_1 @ X0)
% 0.19/0.51          | ~ (v1_funct_1 @ X0)
% 0.19/0.51          | ~ (v1_relat_1 @ X0))),
% 0.19/0.51      inference('simplify', [status(thm)], ['22'])).
% 0.19/0.51  thf('24', plain, (![X7 : $i]: ((k2_relat_1 @ (k6_relat_1 @ X7)) = (X7))),
% 0.19/0.51      inference('cnf', [status(esa)], [t71_relat_1])).
% 0.19/0.51  thf(t199_relat_1, axiom,
% 0.19/0.51    (![A:$i]:
% 0.19/0.51     ( ( v1_relat_1 @ A ) =>
% 0.19/0.51       ( ![B:$i]:
% 0.19/0.51         ( ( v1_relat_1 @ B ) =>
% 0.19/0.51           ( ![C:$i]:
% 0.19/0.51             ( ( v1_relat_1 @ C ) =>
% 0.19/0.51               ( ( ( k2_relat_1 @ A ) = ( k2_relat_1 @ B ) ) =>
% 0.19/0.51                 ( ( k2_relat_1 @ ( k5_relat_1 @ A @ C ) ) =
% 0.19/0.51                   ( k2_relat_1 @ ( k5_relat_1 @ B @ C ) ) ) ) ) ) ) ) ))).
% 0.19/0.51  thf('25', plain,
% 0.19/0.51      (![X3 : $i, X4 : $i, X5 : $i]:
% 0.19/0.51         (~ (v1_relat_1 @ X3)
% 0.19/0.51          | ((k2_relat_1 @ X4) != (k2_relat_1 @ X3))
% 0.19/0.51          | ((k2_relat_1 @ (k5_relat_1 @ X4 @ X5))
% 0.19/0.51              = (k2_relat_1 @ (k5_relat_1 @ X3 @ X5)))
% 0.19/0.51          | ~ (v1_relat_1 @ X5)
% 0.19/0.51          | ~ (v1_relat_1 @ X4))),
% 0.19/0.51      inference('cnf', [status(esa)], [t199_relat_1])).
% 0.19/0.51  thf('26', plain,
% 0.19/0.51      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.19/0.51         (((X0) != (k2_relat_1 @ X1))
% 0.19/0.51          | ~ (v1_relat_1 @ (k6_relat_1 @ X0))
% 0.19/0.51          | ~ (v1_relat_1 @ X2)
% 0.19/0.51          | ((k2_relat_1 @ (k5_relat_1 @ (k6_relat_1 @ X0) @ X2))
% 0.19/0.51              = (k2_relat_1 @ (k5_relat_1 @ X1 @ X2)))
% 0.19/0.51          | ~ (v1_relat_1 @ X1))),
% 0.19/0.51      inference('sup-', [status(thm)], ['24', '25'])).
% 0.19/0.51  thf('27', plain, (![X11 : $i]: (v1_relat_1 @ (k6_relat_1 @ X11))),
% 0.19/0.51      inference('cnf', [status(esa)], [fc3_funct_1])).
% 0.19/0.51  thf('28', plain,
% 0.19/0.51      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.19/0.51         (((X0) != (k2_relat_1 @ X1))
% 0.19/0.51          | ~ (v1_relat_1 @ X2)
% 0.19/0.51          | ((k2_relat_1 @ (k5_relat_1 @ (k6_relat_1 @ X0) @ X2))
% 0.19/0.51              = (k2_relat_1 @ (k5_relat_1 @ X1 @ X2)))
% 0.19/0.51          | ~ (v1_relat_1 @ X1))),
% 0.19/0.51      inference('demod', [status(thm)], ['26', '27'])).
% 0.19/0.51  thf('29', plain,
% 0.19/0.51      (![X1 : $i, X2 : $i]:
% 0.19/0.51         (~ (v1_relat_1 @ X1)
% 0.19/0.51          | ((k2_relat_1 @ (k5_relat_1 @ (k6_relat_1 @ (k2_relat_1 @ X1)) @ X2))
% 0.19/0.51              = (k2_relat_1 @ (k5_relat_1 @ X1 @ X2)))
% 0.19/0.51          | ~ (v1_relat_1 @ X2))),
% 0.19/0.51      inference('simplify', [status(thm)], ['28'])).
% 0.19/0.51  thf('30', plain,
% 0.19/0.51      (![X0 : $i]:
% 0.19/0.51         (((k2_relat_1 @ (k2_funct_1 @ X0))
% 0.19/0.51            = (k2_relat_1 @ (k5_relat_1 @ X0 @ (k2_funct_1 @ X0))))
% 0.19/0.51          | ~ (v1_relat_1 @ X0)
% 0.19/0.51          | ~ (v1_funct_1 @ X0)
% 0.19/0.51          | ~ (v2_funct_1 @ X0)
% 0.19/0.51          | ~ (v1_relat_1 @ (k2_funct_1 @ X0))
% 0.19/0.51          | ~ (v1_relat_1 @ X0))),
% 0.19/0.51      inference('sup+', [status(thm)], ['23', '29'])).
% 0.19/0.51  thf('31', plain,
% 0.19/0.51      (![X0 : $i]:
% 0.19/0.51         (~ (v1_relat_1 @ (k2_funct_1 @ X0))
% 0.19/0.51          | ~ (v2_funct_1 @ X0)
% 0.19/0.51          | ~ (v1_funct_1 @ X0)
% 0.19/0.51          | ~ (v1_relat_1 @ X0)
% 0.19/0.51          | ((k2_relat_1 @ (k2_funct_1 @ X0))
% 0.19/0.51              = (k2_relat_1 @ (k5_relat_1 @ X0 @ (k2_funct_1 @ X0)))))),
% 0.19/0.51      inference('simplify', [status(thm)], ['30'])).
% 0.19/0.51  thf('32', plain,
% 0.19/0.51      (![X0 : $i]:
% 0.19/0.51         (~ (v1_relat_1 @ X0)
% 0.19/0.51          | ~ (v1_funct_1 @ X0)
% 0.19/0.51          | ((k2_relat_1 @ (k2_funct_1 @ X0))
% 0.19/0.51              = (k2_relat_1 @ (k5_relat_1 @ X0 @ (k2_funct_1 @ X0))))
% 0.19/0.51          | ~ (v1_relat_1 @ X0)
% 0.19/0.51          | ~ (v1_funct_1 @ X0)
% 0.19/0.51          | ~ (v2_funct_1 @ X0))),
% 0.19/0.51      inference('sup-', [status(thm)], ['17', '31'])).
% 0.19/0.51  thf('33', plain,
% 0.19/0.51      (![X0 : $i]:
% 0.19/0.51         (~ (v2_funct_1 @ X0)
% 0.19/0.51          | ((k2_relat_1 @ (k2_funct_1 @ X0))
% 0.19/0.51              = (k2_relat_1 @ (k5_relat_1 @ X0 @ (k2_funct_1 @ X0))))
% 0.19/0.51          | ~ (v1_funct_1 @ X0)
% 0.19/0.51          | ~ (v1_relat_1 @ X0))),
% 0.19/0.51      inference('simplify', [status(thm)], ['32'])).
% 0.19/0.51  thf('34', plain,
% 0.19/0.51      ((((k2_relat_1 @ (k5_relat_1 @ sk_A @ (k2_funct_1 @ sk_A)))
% 0.19/0.51          != (k1_relat_1 @ sk_A)))
% 0.19/0.51         <= (~
% 0.19/0.51             (((k2_relat_1 @ (k5_relat_1 @ sk_A @ (k2_funct_1 @ sk_A)))
% 0.19/0.51                = (k1_relat_1 @ sk_A))))),
% 0.19/0.51      inference('split', [status(esa)], ['14'])).
% 0.19/0.51  thf('35', plain,
% 0.19/0.51      (((((k2_relat_1 @ (k2_funct_1 @ sk_A)) != (k1_relat_1 @ sk_A))
% 0.19/0.51         | ~ (v1_relat_1 @ sk_A)
% 0.19/0.51         | ~ (v1_funct_1 @ sk_A)
% 0.19/0.51         | ~ (v2_funct_1 @ sk_A)))
% 0.19/0.51         <= (~
% 0.19/0.51             (((k2_relat_1 @ (k5_relat_1 @ sk_A @ (k2_funct_1 @ sk_A)))
% 0.19/0.51                = (k1_relat_1 @ sk_A))))),
% 0.19/0.51      inference('sup-', [status(thm)], ['33', '34'])).
% 0.19/0.51  thf('36', plain, ((v1_relat_1 @ sk_A)),
% 0.19/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.19/0.51  thf('37', plain, ((v1_funct_1 @ sk_A)),
% 0.19/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.19/0.51  thf('38', plain, ((v2_funct_1 @ sk_A)),
% 0.19/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.19/0.51  thf('39', plain,
% 0.19/0.51      ((((k2_relat_1 @ (k2_funct_1 @ sk_A)) != (k1_relat_1 @ sk_A)))
% 0.19/0.51         <= (~
% 0.19/0.51             (((k2_relat_1 @ (k5_relat_1 @ sk_A @ (k2_funct_1 @ sk_A)))
% 0.19/0.51                = (k1_relat_1 @ sk_A))))),
% 0.19/0.51      inference('demod', [status(thm)], ['35', '36', '37', '38'])).
% 0.19/0.51  thf('40', plain,
% 0.19/0.51      (((((k1_relat_1 @ sk_A) != (k1_relat_1 @ sk_A))
% 0.19/0.51         | ~ (v1_relat_1 @ sk_A)
% 0.19/0.51         | ~ (v1_funct_1 @ sk_A)
% 0.19/0.51         | ~ (v2_funct_1 @ sk_A)))
% 0.19/0.51         <= (~
% 0.19/0.51             (((k2_relat_1 @ (k5_relat_1 @ sk_A @ (k2_funct_1 @ sk_A)))
% 0.19/0.51                = (k1_relat_1 @ sk_A))))),
% 0.19/0.51      inference('sup-', [status(thm)], ['16', '39'])).
% 0.19/0.51  thf('41', plain, ((v1_relat_1 @ sk_A)),
% 0.19/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.19/0.51  thf('42', plain, ((v1_funct_1 @ sk_A)),
% 0.19/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.19/0.51  thf('43', plain, ((v2_funct_1 @ sk_A)),
% 0.19/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.19/0.51  thf('44', plain,
% 0.19/0.51      ((((k1_relat_1 @ sk_A) != (k1_relat_1 @ sk_A)))
% 0.19/0.51         <= (~
% 0.19/0.51             (((k2_relat_1 @ (k5_relat_1 @ sk_A @ (k2_funct_1 @ sk_A)))
% 0.19/0.51                = (k1_relat_1 @ sk_A))))),
% 0.19/0.51      inference('demod', [status(thm)], ['40', '41', '42', '43'])).
% 0.19/0.51  thf('45', plain,
% 0.19/0.51      ((((k2_relat_1 @ (k5_relat_1 @ sk_A @ (k2_funct_1 @ sk_A)))
% 0.19/0.51          = (k1_relat_1 @ sk_A)))),
% 0.19/0.51      inference('simplify', [status(thm)], ['44'])).
% 0.19/0.51  thf('46', plain,
% 0.19/0.51      (~
% 0.19/0.51       (((k1_relat_1 @ (k5_relat_1 @ sk_A @ (k2_funct_1 @ sk_A)))
% 0.19/0.51          = (k1_relat_1 @ sk_A))) | 
% 0.19/0.51       ~
% 0.19/0.51       (((k2_relat_1 @ (k5_relat_1 @ sk_A @ (k2_funct_1 @ sk_A)))
% 0.19/0.51          = (k1_relat_1 @ sk_A)))),
% 0.19/0.51      inference('split', [status(esa)], ['14'])).
% 0.19/0.51  thf('47', plain,
% 0.19/0.51      (~
% 0.19/0.51       (((k1_relat_1 @ (k5_relat_1 @ sk_A @ (k2_funct_1 @ sk_A)))
% 0.19/0.51          = (k1_relat_1 @ sk_A)))),
% 0.19/0.51      inference('sat_resolution*', [status(thm)], ['45', '46'])).
% 0.19/0.51  thf('48', plain,
% 0.19/0.51      (((k1_relat_1 @ (k5_relat_1 @ sk_A @ (k2_funct_1 @ sk_A)))
% 0.19/0.51         != (k1_relat_1 @ sk_A))),
% 0.19/0.51      inference('simpl_trail', [status(thm)], ['15', '47'])).
% 0.19/0.51  thf('49', plain,
% 0.19/0.51      ((((k1_relat_1 @ sk_A) != (k1_relat_1 @ sk_A))
% 0.19/0.51        | ~ (v1_relat_1 @ sk_A)
% 0.19/0.51        | ~ (v1_funct_1 @ sk_A)
% 0.19/0.51        | ~ (v2_funct_1 @ sk_A))),
% 0.19/0.51      inference('sup-', [status(thm)], ['13', '48'])).
% 0.19/0.51  thf('50', plain, ((v1_relat_1 @ sk_A)),
% 0.19/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.19/0.51  thf('51', plain, ((v1_funct_1 @ sk_A)),
% 0.19/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.19/0.51  thf('52', plain, ((v2_funct_1 @ sk_A)),
% 0.19/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.19/0.51  thf('53', plain, (((k1_relat_1 @ sk_A) != (k1_relat_1 @ sk_A))),
% 0.19/0.51      inference('demod', [status(thm)], ['49', '50', '51', '52'])).
% 0.19/0.51  thf('54', plain, ($false), inference('simplify', [status(thm)], ['53'])).
% 0.19/0.51  
% 0.19/0.51  % SZS output end Refutation
% 0.19/0.51  
% 0.19/0.52  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
