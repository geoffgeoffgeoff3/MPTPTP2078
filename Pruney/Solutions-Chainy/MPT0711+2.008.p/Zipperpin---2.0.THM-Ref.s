%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.Z032Pq7qnT

% Computer   : n006.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:47:12 EST 2020

% Result     : Theorem 1.94s
% Output     : Refutation 1.94s
% Verified   : 
% Statistics : Number of formulae       :   80 ( 169 expanded)
%              Number of leaves         :   17 (  56 expanded)
%              Depth                    :   25
%              Number of atoms          : 1075 (3330 expanded)
%              Number of equality atoms :   77 ( 280 expanded)
%              Maximal formula depth    :   15 (   7 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k1_relat_1_type,type,(
    k1_relat_1: $i > $i )).

thf(v1_funct_1_type,type,(
    v1_funct_1: $i > $o )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(sk_D_type,type,(
    sk_D: $i > $i > $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k1_funct_1_type,type,(
    k1_funct_1: $i > $i > $i )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(k3_xboole_0_type,type,(
    k3_xboole_0: $i > $i > $i )).

thf(k7_relat_1_type,type,(
    k7_relat_1: $i > $i > $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(t90_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( ( k1_relat_1 @ ( k7_relat_1 @ B @ A ) )
        = ( k3_xboole_0 @ ( k1_relat_1 @ B ) @ A ) ) ) )).

thf('0',plain,(
    ! [X3: $i,X4: $i] :
      ( ( ( k1_relat_1 @ ( k7_relat_1 @ X3 @ X4 ) )
        = ( k3_xboole_0 @ ( k1_relat_1 @ X3 ) @ X4 ) )
      | ~ ( v1_relat_1 @ X3 ) ) ),
    inference(cnf,[status(esa)],[t90_relat_1])).

thf(fc8_funct_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( v1_relat_1 @ A )
        & ( v1_funct_1 @ A ) )
     => ( ( v1_relat_1 @ ( k7_relat_1 @ A @ B ) )
        & ( v1_funct_1 @ ( k7_relat_1 @ A @ B ) ) ) ) )).

thf('1',plain,(
    ! [X5: $i,X6: $i] :
      ( ~ ( v1_funct_1 @ X5 )
      | ~ ( v1_relat_1 @ X5 )
      | ( v1_funct_1 @ ( k7_relat_1 @ X5 @ X6 ) ) ) ),
    inference(cnf,[status(esa)],[fc8_funct_1])).

thf('2',plain,(
    ! [X5: $i,X6: $i] :
      ( ~ ( v1_funct_1 @ X5 )
      | ~ ( v1_relat_1 @ X5 )
      | ( v1_relat_1 @ ( k7_relat_1 @ X5 @ X6 ) ) ) ),
    inference(cnf,[status(esa)],[fc8_funct_1])).

thf('3',plain,(
    ! [X5: $i,X6: $i] :
      ( ~ ( v1_funct_1 @ X5 )
      | ~ ( v1_relat_1 @ X5 )
      | ( v1_funct_1 @ ( k7_relat_1 @ X5 @ X6 ) ) ) ),
    inference(cnf,[status(esa)],[fc8_funct_1])).

thf('4',plain,(
    ! [X5: $i,X6: $i] :
      ( ~ ( v1_funct_1 @ X5 )
      | ~ ( v1_relat_1 @ X5 )
      | ( v1_relat_1 @ ( k7_relat_1 @ X5 @ X6 ) ) ) ),
    inference(cnf,[status(esa)],[fc8_funct_1])).

thf(t166_funct_1,conjecture,(
    ! [A: $i] :
      ( ( ( v1_relat_1 @ A )
        & ( v1_funct_1 @ A ) )
     => ! [B: $i] :
          ( ( ( v1_relat_1 @ B )
            & ( v1_funct_1 @ B ) )
         => ! [C: $i] :
              ( ( ( ( k1_relat_1 @ A )
                  = ( k1_relat_1 @ B ) )
                & ! [D: $i] :
                    ( ( r2_hidden @ D @ C )
                   => ( ( k1_funct_1 @ A @ D )
                      = ( k1_funct_1 @ B @ D ) ) ) )
             => ( ( k7_relat_1 @ A @ C )
                = ( k7_relat_1 @ B @ C ) ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i] :
        ( ( ( v1_relat_1 @ A )
          & ( v1_funct_1 @ A ) )
       => ! [B: $i] :
            ( ( ( v1_relat_1 @ B )
              & ( v1_funct_1 @ B ) )
           => ! [C: $i] :
                ( ( ( ( k1_relat_1 @ A )
                    = ( k1_relat_1 @ B ) )
                  & ! [D: $i] :
                      ( ( r2_hidden @ D @ C )
                     => ( ( k1_funct_1 @ A @ D )
                        = ( k1_funct_1 @ B @ D ) ) ) )
               => ( ( k7_relat_1 @ A @ C )
                  = ( k7_relat_1 @ B @ C ) ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t166_funct_1])).

thf('5',plain,
    ( ( k1_relat_1 @ sk_A )
    = ( k1_relat_1 @ sk_B ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('6',plain,(
    ! [X3: $i,X4: $i] :
      ( ( ( k1_relat_1 @ ( k7_relat_1 @ X3 @ X4 ) )
        = ( k3_xboole_0 @ ( k1_relat_1 @ X3 ) @ X4 ) )
      | ~ ( v1_relat_1 @ X3 ) ) ),
    inference(cnf,[status(esa)],[t90_relat_1])).

thf(t68_funct_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( v1_relat_1 @ B )
        & ( v1_funct_1 @ B ) )
     => ! [C: $i] :
          ( ( ( v1_relat_1 @ C )
            & ( v1_funct_1 @ C ) )
         => ( ( ( ( k1_relat_1 @ B )
                = ( k3_xboole_0 @ ( k1_relat_1 @ C ) @ A ) )
              & ! [D: $i] :
                  ( ( r2_hidden @ D @ ( k1_relat_1 @ B ) )
                 => ( ( k1_funct_1 @ B @ D )
                    = ( k1_funct_1 @ C @ D ) ) ) )
           => ( B
              = ( k7_relat_1 @ C @ A ) ) ) ) ) )).

thf('7',plain,(
    ! [X7: $i,X8: $i,X9: $i] :
      ( ~ ( v1_relat_1 @ X7 )
      | ~ ( v1_funct_1 @ X7 )
      | ( X9
        = ( k7_relat_1 @ X7 @ X8 ) )
      | ( r2_hidden @ ( sk_D @ X7 @ X9 ) @ ( k1_relat_1 @ X9 ) )
      | ( ( k1_relat_1 @ X9 )
       != ( k3_xboole_0 @ ( k1_relat_1 @ X7 ) @ X8 ) )
      | ~ ( v1_funct_1 @ X9 )
      | ~ ( v1_relat_1 @ X9 ) ) ),
    inference(cnf,[status(esa)],[t68_funct_1])).

thf('8',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i] :
      ( ( ( k3_xboole_0 @ ( k1_relat_1 @ X1 ) @ X0 )
       != ( k3_xboole_0 @ ( k1_relat_1 @ X3 ) @ X2 ) )
      | ~ ( v1_relat_1 @ X1 )
      | ~ ( v1_relat_1 @ ( k7_relat_1 @ X1 @ X0 ) )
      | ~ ( v1_funct_1 @ ( k7_relat_1 @ X1 @ X0 ) )
      | ( r2_hidden @ ( sk_D @ X3 @ ( k7_relat_1 @ X1 @ X0 ) ) @ ( k1_relat_1 @ ( k7_relat_1 @ X1 @ X0 ) ) )
      | ( ( k7_relat_1 @ X1 @ X0 )
        = ( k7_relat_1 @ X3 @ X2 ) )
      | ~ ( v1_funct_1 @ X3 )
      | ~ ( v1_relat_1 @ X3 ) ) ),
    inference('sup-',[status(thm)],['6','7'])).

thf('9',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( ( k3_xboole_0 @ ( k1_relat_1 @ sk_A ) @ X2 )
       != ( k3_xboole_0 @ ( k1_relat_1 @ X1 ) @ X0 ) )
      | ~ ( v1_relat_1 @ X1 )
      | ~ ( v1_funct_1 @ X1 )
      | ( ( k7_relat_1 @ sk_B @ X2 )
        = ( k7_relat_1 @ X1 @ X0 ) )
      | ( r2_hidden @ ( sk_D @ X1 @ ( k7_relat_1 @ sk_B @ X2 ) ) @ ( k1_relat_1 @ ( k7_relat_1 @ sk_B @ X2 ) ) )
      | ~ ( v1_funct_1 @ ( k7_relat_1 @ sk_B @ X2 ) )
      | ~ ( v1_relat_1 @ ( k7_relat_1 @ sk_B @ X2 ) )
      | ~ ( v1_relat_1 @ sk_B ) ) ),
    inference('sup-',[status(thm)],['5','8'])).

thf('10',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('11',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( ( k3_xboole_0 @ ( k1_relat_1 @ sk_A ) @ X2 )
       != ( k3_xboole_0 @ ( k1_relat_1 @ X1 ) @ X0 ) )
      | ~ ( v1_relat_1 @ X1 )
      | ~ ( v1_funct_1 @ X1 )
      | ( ( k7_relat_1 @ sk_B @ X2 )
        = ( k7_relat_1 @ X1 @ X0 ) )
      | ( r2_hidden @ ( sk_D @ X1 @ ( k7_relat_1 @ sk_B @ X2 ) ) @ ( k1_relat_1 @ ( k7_relat_1 @ sk_B @ X2 ) ) )
      | ~ ( v1_funct_1 @ ( k7_relat_1 @ sk_B @ X2 ) )
      | ~ ( v1_relat_1 @ ( k7_relat_1 @ sk_B @ X2 ) ) ) ),
    inference(demod,[status(thm)],['9','10'])).

thf('12',plain,(
    ! [X0: $i] :
      ( ~ ( v1_relat_1 @ ( k7_relat_1 @ sk_B @ X0 ) )
      | ~ ( v1_funct_1 @ ( k7_relat_1 @ sk_B @ X0 ) )
      | ( r2_hidden @ ( sk_D @ sk_A @ ( k7_relat_1 @ sk_B @ X0 ) ) @ ( k1_relat_1 @ ( k7_relat_1 @ sk_B @ X0 ) ) )
      | ( ( k7_relat_1 @ sk_B @ X0 )
        = ( k7_relat_1 @ sk_A @ X0 ) )
      | ~ ( v1_funct_1 @ sk_A )
      | ~ ( v1_relat_1 @ sk_A ) ) ),
    inference(eq_res,[status(thm)],['11'])).

thf('13',plain,(
    v1_funct_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('14',plain,(
    v1_relat_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('15',plain,(
    ! [X0: $i] :
      ( ~ ( v1_relat_1 @ ( k7_relat_1 @ sk_B @ X0 ) )
      | ~ ( v1_funct_1 @ ( k7_relat_1 @ sk_B @ X0 ) )
      | ( r2_hidden @ ( sk_D @ sk_A @ ( k7_relat_1 @ sk_B @ X0 ) ) @ ( k1_relat_1 @ ( k7_relat_1 @ sk_B @ X0 ) ) )
      | ( ( k7_relat_1 @ sk_B @ X0 )
        = ( k7_relat_1 @ sk_A @ X0 ) ) ) ),
    inference(demod,[status(thm)],['12','13','14'])).

thf('16',plain,(
    ! [X0: $i] :
      ( ~ ( v1_relat_1 @ sk_B )
      | ~ ( v1_funct_1 @ sk_B )
      | ( ( k7_relat_1 @ sk_B @ X0 )
        = ( k7_relat_1 @ sk_A @ X0 ) )
      | ( r2_hidden @ ( sk_D @ sk_A @ ( k7_relat_1 @ sk_B @ X0 ) ) @ ( k1_relat_1 @ ( k7_relat_1 @ sk_B @ X0 ) ) )
      | ~ ( v1_funct_1 @ ( k7_relat_1 @ sk_B @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['4','15'])).

thf('17',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('18',plain,(
    v1_funct_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('19',plain,(
    ! [X0: $i] :
      ( ( ( k7_relat_1 @ sk_B @ X0 )
        = ( k7_relat_1 @ sk_A @ X0 ) )
      | ( r2_hidden @ ( sk_D @ sk_A @ ( k7_relat_1 @ sk_B @ X0 ) ) @ ( k1_relat_1 @ ( k7_relat_1 @ sk_B @ X0 ) ) )
      | ~ ( v1_funct_1 @ ( k7_relat_1 @ sk_B @ X0 ) ) ) ),
    inference(demod,[status(thm)],['16','17','18'])).

thf('20',plain,(
    ! [X0: $i] :
      ( ~ ( v1_relat_1 @ sk_B )
      | ~ ( v1_funct_1 @ sk_B )
      | ( r2_hidden @ ( sk_D @ sk_A @ ( k7_relat_1 @ sk_B @ X0 ) ) @ ( k1_relat_1 @ ( k7_relat_1 @ sk_B @ X0 ) ) )
      | ( ( k7_relat_1 @ sk_B @ X0 )
        = ( k7_relat_1 @ sk_A @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['3','19'])).

thf('21',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('22',plain,(
    v1_funct_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('23',plain,(
    ! [X0: $i] :
      ( ( r2_hidden @ ( sk_D @ sk_A @ ( k7_relat_1 @ sk_B @ X0 ) ) @ ( k1_relat_1 @ ( k7_relat_1 @ sk_B @ X0 ) ) )
      | ( ( k7_relat_1 @ sk_B @ X0 )
        = ( k7_relat_1 @ sk_A @ X0 ) ) ) ),
    inference(demod,[status(thm)],['20','21','22'])).

thf(t86_relat_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( v1_relat_1 @ C )
     => ( ( r2_hidden @ A @ ( k1_relat_1 @ ( k7_relat_1 @ C @ B ) ) )
      <=> ( ( r2_hidden @ A @ B )
          & ( r2_hidden @ A @ ( k1_relat_1 @ C ) ) ) ) ) )).

thf('24',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( r2_hidden @ X0 @ ( k1_relat_1 @ ( k7_relat_1 @ X2 @ X1 ) ) )
      | ( r2_hidden @ X0 @ X1 )
      | ~ ( v1_relat_1 @ X2 ) ) ),
    inference(cnf,[status(esa)],[t86_relat_1])).

thf('25',plain,(
    ! [X0: $i] :
      ( ( ( k7_relat_1 @ sk_B @ X0 )
        = ( k7_relat_1 @ sk_A @ X0 ) )
      | ~ ( v1_relat_1 @ sk_B )
      | ( r2_hidden @ ( sk_D @ sk_A @ ( k7_relat_1 @ sk_B @ X0 ) ) @ X0 ) ) ),
    inference('sup-',[status(thm)],['23','24'])).

thf('26',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('27',plain,(
    ! [X0: $i] :
      ( ( ( k7_relat_1 @ sk_B @ X0 )
        = ( k7_relat_1 @ sk_A @ X0 ) )
      | ( r2_hidden @ ( sk_D @ sk_A @ ( k7_relat_1 @ sk_B @ X0 ) ) @ X0 ) ) ),
    inference(demod,[status(thm)],['25','26'])).

thf('28',plain,(
    ! [X13: $i] :
      ( ( ( k1_funct_1 @ sk_A @ X13 )
        = ( k1_funct_1 @ sk_B @ X13 ) )
      | ~ ( r2_hidden @ X13 @ sk_C ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('29',plain,
    ( ( ( k7_relat_1 @ sk_B @ sk_C )
      = ( k7_relat_1 @ sk_A @ sk_C ) )
    | ( ( k1_funct_1 @ sk_A @ ( sk_D @ sk_A @ ( k7_relat_1 @ sk_B @ sk_C ) ) )
      = ( k1_funct_1 @ sk_B @ ( sk_D @ sk_A @ ( k7_relat_1 @ sk_B @ sk_C ) ) ) ) ),
    inference('sup-',[status(thm)],['27','28'])).

thf('30',plain,(
    ( k7_relat_1 @ sk_A @ sk_C )
 != ( k7_relat_1 @ sk_B @ sk_C ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('31',plain,
    ( ( k1_funct_1 @ sk_A @ ( sk_D @ sk_A @ ( k7_relat_1 @ sk_B @ sk_C ) ) )
    = ( k1_funct_1 @ sk_B @ ( sk_D @ sk_A @ ( k7_relat_1 @ sk_B @ sk_C ) ) ) ),
    inference('simplify_reflect-',[status(thm)],['29','30'])).

thf('32',plain,(
    ! [X0: $i] :
      ( ( r2_hidden @ ( sk_D @ sk_A @ ( k7_relat_1 @ sk_B @ X0 ) ) @ ( k1_relat_1 @ ( k7_relat_1 @ sk_B @ X0 ) ) )
      | ( ( k7_relat_1 @ sk_B @ X0 )
        = ( k7_relat_1 @ sk_A @ X0 ) ) ) ),
    inference(demod,[status(thm)],['20','21','22'])).

thf(t70_funct_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( v1_relat_1 @ C )
        & ( v1_funct_1 @ C ) )
     => ( ( r2_hidden @ A @ ( k1_relat_1 @ ( k7_relat_1 @ C @ B ) ) )
       => ( ( k1_funct_1 @ ( k7_relat_1 @ C @ B ) @ A )
          = ( k1_funct_1 @ C @ A ) ) ) ) )).

thf('33',plain,(
    ! [X10: $i,X11: $i,X12: $i] :
      ( ~ ( r2_hidden @ X10 @ ( k1_relat_1 @ ( k7_relat_1 @ X11 @ X12 ) ) )
      | ( ( k1_funct_1 @ ( k7_relat_1 @ X11 @ X12 ) @ X10 )
        = ( k1_funct_1 @ X11 @ X10 ) )
      | ~ ( v1_funct_1 @ X11 )
      | ~ ( v1_relat_1 @ X11 ) ) ),
    inference(cnf,[status(esa)],[t70_funct_1])).

thf('34',plain,(
    ! [X0: $i] :
      ( ( ( k7_relat_1 @ sk_B @ X0 )
        = ( k7_relat_1 @ sk_A @ X0 ) )
      | ~ ( v1_relat_1 @ sk_B )
      | ~ ( v1_funct_1 @ sk_B )
      | ( ( k1_funct_1 @ ( k7_relat_1 @ sk_B @ X0 ) @ ( sk_D @ sk_A @ ( k7_relat_1 @ sk_B @ X0 ) ) )
        = ( k1_funct_1 @ sk_B @ ( sk_D @ sk_A @ ( k7_relat_1 @ sk_B @ X0 ) ) ) ) ) ),
    inference('sup-',[status(thm)],['32','33'])).

thf('35',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('36',plain,(
    v1_funct_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('37',plain,(
    ! [X0: $i] :
      ( ( ( k7_relat_1 @ sk_B @ X0 )
        = ( k7_relat_1 @ sk_A @ X0 ) )
      | ( ( k1_funct_1 @ ( k7_relat_1 @ sk_B @ X0 ) @ ( sk_D @ sk_A @ ( k7_relat_1 @ sk_B @ X0 ) ) )
        = ( k1_funct_1 @ sk_B @ ( sk_D @ sk_A @ ( k7_relat_1 @ sk_B @ X0 ) ) ) ) ) ),
    inference(demod,[status(thm)],['34','35','36'])).

thf('38',plain,(
    ! [X7: $i,X8: $i,X9: $i] :
      ( ~ ( v1_relat_1 @ X7 )
      | ~ ( v1_funct_1 @ X7 )
      | ( X9
        = ( k7_relat_1 @ X7 @ X8 ) )
      | ( ( k1_funct_1 @ X9 @ ( sk_D @ X7 @ X9 ) )
       != ( k1_funct_1 @ X7 @ ( sk_D @ X7 @ X9 ) ) )
      | ( ( k1_relat_1 @ X9 )
       != ( k3_xboole_0 @ ( k1_relat_1 @ X7 ) @ X8 ) )
      | ~ ( v1_funct_1 @ X9 )
      | ~ ( v1_relat_1 @ X9 ) ) ),
    inference(cnf,[status(esa)],[t68_funct_1])).

thf('39',plain,(
    ! [X0: $i,X1: $i] :
      ( ( ( k1_funct_1 @ sk_B @ ( sk_D @ sk_A @ ( k7_relat_1 @ sk_B @ X0 ) ) )
       != ( k1_funct_1 @ sk_A @ ( sk_D @ sk_A @ ( k7_relat_1 @ sk_B @ X0 ) ) ) )
      | ( ( k7_relat_1 @ sk_B @ X0 )
        = ( k7_relat_1 @ sk_A @ X0 ) )
      | ~ ( v1_relat_1 @ ( k7_relat_1 @ sk_B @ X0 ) )
      | ~ ( v1_funct_1 @ ( k7_relat_1 @ sk_B @ X0 ) )
      | ( ( k1_relat_1 @ ( k7_relat_1 @ sk_B @ X0 ) )
       != ( k3_xboole_0 @ ( k1_relat_1 @ sk_A ) @ X1 ) )
      | ( ( k7_relat_1 @ sk_B @ X0 )
        = ( k7_relat_1 @ sk_A @ X1 ) )
      | ~ ( v1_funct_1 @ sk_A )
      | ~ ( v1_relat_1 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['37','38'])).

thf('40',plain,(
    v1_funct_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('41',plain,(
    v1_relat_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('42',plain,(
    ! [X0: $i,X1: $i] :
      ( ( ( k1_funct_1 @ sk_B @ ( sk_D @ sk_A @ ( k7_relat_1 @ sk_B @ X0 ) ) )
       != ( k1_funct_1 @ sk_A @ ( sk_D @ sk_A @ ( k7_relat_1 @ sk_B @ X0 ) ) ) )
      | ( ( k7_relat_1 @ sk_B @ X0 )
        = ( k7_relat_1 @ sk_A @ X0 ) )
      | ~ ( v1_relat_1 @ ( k7_relat_1 @ sk_B @ X0 ) )
      | ~ ( v1_funct_1 @ ( k7_relat_1 @ sk_B @ X0 ) )
      | ( ( k1_relat_1 @ ( k7_relat_1 @ sk_B @ X0 ) )
       != ( k3_xboole_0 @ ( k1_relat_1 @ sk_A ) @ X1 ) )
      | ( ( k7_relat_1 @ sk_B @ X0 )
        = ( k7_relat_1 @ sk_A @ X1 ) ) ) ),
    inference(demod,[status(thm)],['39','40','41'])).

thf('43',plain,(
    ! [X0: $i] :
      ( ( ( k1_funct_1 @ sk_A @ ( sk_D @ sk_A @ ( k7_relat_1 @ sk_B @ sk_C ) ) )
       != ( k1_funct_1 @ sk_A @ ( sk_D @ sk_A @ ( k7_relat_1 @ sk_B @ sk_C ) ) ) )
      | ( ( k7_relat_1 @ sk_B @ sk_C )
        = ( k7_relat_1 @ sk_A @ X0 ) )
      | ( ( k1_relat_1 @ ( k7_relat_1 @ sk_B @ sk_C ) )
       != ( k3_xboole_0 @ ( k1_relat_1 @ sk_A ) @ X0 ) )
      | ~ ( v1_funct_1 @ ( k7_relat_1 @ sk_B @ sk_C ) )
      | ~ ( v1_relat_1 @ ( k7_relat_1 @ sk_B @ sk_C ) )
      | ( ( k7_relat_1 @ sk_B @ sk_C )
        = ( k7_relat_1 @ sk_A @ sk_C ) ) ) ),
    inference('sup-',[status(thm)],['31','42'])).

thf('44',plain,(
    ! [X0: $i] :
      ( ( ( k7_relat_1 @ sk_B @ sk_C )
        = ( k7_relat_1 @ sk_A @ sk_C ) )
      | ~ ( v1_relat_1 @ ( k7_relat_1 @ sk_B @ sk_C ) )
      | ~ ( v1_funct_1 @ ( k7_relat_1 @ sk_B @ sk_C ) )
      | ( ( k1_relat_1 @ ( k7_relat_1 @ sk_B @ sk_C ) )
       != ( k3_xboole_0 @ ( k1_relat_1 @ sk_A ) @ X0 ) )
      | ( ( k7_relat_1 @ sk_B @ sk_C )
        = ( k7_relat_1 @ sk_A @ X0 ) ) ) ),
    inference(simplify,[status(thm)],['43'])).

thf('45',plain,(
    ( k7_relat_1 @ sk_A @ sk_C )
 != ( k7_relat_1 @ sk_B @ sk_C ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('46',plain,(
    ! [X0: $i] :
      ( ~ ( v1_relat_1 @ ( k7_relat_1 @ sk_B @ sk_C ) )
      | ~ ( v1_funct_1 @ ( k7_relat_1 @ sk_B @ sk_C ) )
      | ( ( k1_relat_1 @ ( k7_relat_1 @ sk_B @ sk_C ) )
       != ( k3_xboole_0 @ ( k1_relat_1 @ sk_A ) @ X0 ) )
      | ( ( k7_relat_1 @ sk_B @ sk_C )
        = ( k7_relat_1 @ sk_A @ X0 ) ) ) ),
    inference('simplify_reflect-',[status(thm)],['44','45'])).

thf('47',plain,(
    ! [X0: $i] :
      ( ~ ( v1_relat_1 @ sk_B )
      | ~ ( v1_funct_1 @ sk_B )
      | ( ( k7_relat_1 @ sk_B @ sk_C )
        = ( k7_relat_1 @ sk_A @ X0 ) )
      | ( ( k1_relat_1 @ ( k7_relat_1 @ sk_B @ sk_C ) )
       != ( k3_xboole_0 @ ( k1_relat_1 @ sk_A ) @ X0 ) )
      | ~ ( v1_funct_1 @ ( k7_relat_1 @ sk_B @ sk_C ) ) ) ),
    inference('sup-',[status(thm)],['2','46'])).

thf('48',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('49',plain,(
    v1_funct_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('50',plain,(
    ! [X0: $i] :
      ( ( ( k7_relat_1 @ sk_B @ sk_C )
        = ( k7_relat_1 @ sk_A @ X0 ) )
      | ( ( k1_relat_1 @ ( k7_relat_1 @ sk_B @ sk_C ) )
       != ( k3_xboole_0 @ ( k1_relat_1 @ sk_A ) @ X0 ) )
      | ~ ( v1_funct_1 @ ( k7_relat_1 @ sk_B @ sk_C ) ) ) ),
    inference(demod,[status(thm)],['47','48','49'])).

thf('51',plain,(
    ! [X0: $i] :
      ( ~ ( v1_relat_1 @ sk_B )
      | ~ ( v1_funct_1 @ sk_B )
      | ( ( k1_relat_1 @ ( k7_relat_1 @ sk_B @ sk_C ) )
       != ( k3_xboole_0 @ ( k1_relat_1 @ sk_A ) @ X0 ) )
      | ( ( k7_relat_1 @ sk_B @ sk_C )
        = ( k7_relat_1 @ sk_A @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['1','50'])).

thf('52',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('53',plain,(
    v1_funct_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('54',plain,(
    ! [X0: $i] :
      ( ( ( k1_relat_1 @ ( k7_relat_1 @ sk_B @ sk_C ) )
       != ( k3_xboole_0 @ ( k1_relat_1 @ sk_A ) @ X0 ) )
      | ( ( k7_relat_1 @ sk_B @ sk_C )
        = ( k7_relat_1 @ sk_A @ X0 ) ) ) ),
    inference(demod,[status(thm)],['51','52','53'])).

thf('55',plain,(
    ! [X0: $i] :
      ( ( ( k3_xboole_0 @ ( k1_relat_1 @ sk_B ) @ sk_C )
       != ( k3_xboole_0 @ ( k1_relat_1 @ sk_A ) @ X0 ) )
      | ~ ( v1_relat_1 @ sk_B )
      | ( ( k7_relat_1 @ sk_B @ sk_C )
        = ( k7_relat_1 @ sk_A @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['0','54'])).

thf('56',plain,
    ( ( k1_relat_1 @ sk_A )
    = ( k1_relat_1 @ sk_B ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('57',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('58',plain,(
    ! [X0: $i] :
      ( ( ( k3_xboole_0 @ ( k1_relat_1 @ sk_A ) @ sk_C )
       != ( k3_xboole_0 @ ( k1_relat_1 @ sk_A ) @ X0 ) )
      | ( ( k7_relat_1 @ sk_B @ sk_C )
        = ( k7_relat_1 @ sk_A @ X0 ) ) ) ),
    inference(demod,[status(thm)],['55','56','57'])).

thf('59',plain,
    ( ( k7_relat_1 @ sk_B @ sk_C )
    = ( k7_relat_1 @ sk_A @ sk_C ) ),
    inference(eq_res,[status(thm)],['58'])).

thf('60',plain,(
    ( k7_relat_1 @ sk_A @ sk_C )
 != ( k7_relat_1 @ sk_B @ sk_C ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('61',plain,(
    $false ),
    inference('simplify_reflect-',[status(thm)],['59','60'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.Z032Pq7qnT
% 0.13/0.34  % Computer   : n006.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 20:47:37 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running portfolio for 600 s
% 0.13/0.34  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.13/0.34  % Number of cores: 8
% 0.13/0.35  % Python version: Python 3.6.8
% 0.13/0.35  % Running in FO mode
% 1.94/2.17  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 1.94/2.17  % Solved by: fo/fo7.sh
% 1.94/2.17  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 1.94/2.17  % done 1218 iterations in 1.720s
% 1.94/2.17  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 1.94/2.17  % SZS output start Refutation
% 1.94/2.17  thf(k1_relat_1_type, type, k1_relat_1: $i > $i).
% 1.94/2.17  thf(v1_funct_1_type, type, v1_funct_1: $i > $o).
% 1.94/2.17  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 1.94/2.17  thf(sk_D_type, type, sk_D: $i > $i > $i).
% 1.94/2.17  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 1.94/2.17  thf(sk_A_type, type, sk_A: $i).
% 1.94/2.17  thf(k1_funct_1_type, type, k1_funct_1: $i > $i > $i).
% 1.94/2.17  thf(sk_C_type, type, sk_C: $i).
% 1.94/2.17  thf(k3_xboole_0_type, type, k3_xboole_0: $i > $i > $i).
% 1.94/2.17  thf(k7_relat_1_type, type, k7_relat_1: $i > $i > $i).
% 1.94/2.17  thf(sk_B_type, type, sk_B: $i).
% 1.94/2.17  thf(t90_relat_1, axiom,
% 1.94/2.17    (![A:$i,B:$i]:
% 1.94/2.17     ( ( v1_relat_1 @ B ) =>
% 1.94/2.17       ( ( k1_relat_1 @ ( k7_relat_1 @ B @ A ) ) =
% 1.94/2.17         ( k3_xboole_0 @ ( k1_relat_1 @ B ) @ A ) ) ))).
% 1.94/2.17  thf('0', plain,
% 1.94/2.17      (![X3 : $i, X4 : $i]:
% 1.94/2.17         (((k1_relat_1 @ (k7_relat_1 @ X3 @ X4))
% 1.94/2.17            = (k3_xboole_0 @ (k1_relat_1 @ X3) @ X4))
% 1.94/2.17          | ~ (v1_relat_1 @ X3))),
% 1.94/2.17      inference('cnf', [status(esa)], [t90_relat_1])).
% 1.94/2.17  thf(fc8_funct_1, axiom,
% 1.94/2.17    (![A:$i,B:$i]:
% 1.94/2.17     ( ( ( v1_relat_1 @ A ) & ( v1_funct_1 @ A ) ) =>
% 1.94/2.17       ( ( v1_relat_1 @ ( k7_relat_1 @ A @ B ) ) & 
% 1.94/2.17         ( v1_funct_1 @ ( k7_relat_1 @ A @ B ) ) ) ))).
% 1.94/2.17  thf('1', plain,
% 1.94/2.17      (![X5 : $i, X6 : $i]:
% 1.94/2.17         (~ (v1_funct_1 @ X5)
% 1.94/2.17          | ~ (v1_relat_1 @ X5)
% 1.94/2.17          | (v1_funct_1 @ (k7_relat_1 @ X5 @ X6)))),
% 1.94/2.17      inference('cnf', [status(esa)], [fc8_funct_1])).
% 1.94/2.17  thf('2', plain,
% 1.94/2.17      (![X5 : $i, X6 : $i]:
% 1.94/2.17         (~ (v1_funct_1 @ X5)
% 1.94/2.17          | ~ (v1_relat_1 @ X5)
% 1.94/2.17          | (v1_relat_1 @ (k7_relat_1 @ X5 @ X6)))),
% 1.94/2.17      inference('cnf', [status(esa)], [fc8_funct_1])).
% 1.94/2.17  thf('3', plain,
% 1.94/2.17      (![X5 : $i, X6 : $i]:
% 1.94/2.17         (~ (v1_funct_1 @ X5)
% 1.94/2.17          | ~ (v1_relat_1 @ X5)
% 1.94/2.17          | (v1_funct_1 @ (k7_relat_1 @ X5 @ X6)))),
% 1.94/2.17      inference('cnf', [status(esa)], [fc8_funct_1])).
% 1.94/2.17  thf('4', plain,
% 1.94/2.17      (![X5 : $i, X6 : $i]:
% 1.94/2.17         (~ (v1_funct_1 @ X5)
% 1.94/2.17          | ~ (v1_relat_1 @ X5)
% 1.94/2.17          | (v1_relat_1 @ (k7_relat_1 @ X5 @ X6)))),
% 1.94/2.17      inference('cnf', [status(esa)], [fc8_funct_1])).
% 1.94/2.17  thf(t166_funct_1, conjecture,
% 1.94/2.17    (![A:$i]:
% 1.94/2.17     ( ( ( v1_relat_1 @ A ) & ( v1_funct_1 @ A ) ) =>
% 1.94/2.17       ( ![B:$i]:
% 1.94/2.17         ( ( ( v1_relat_1 @ B ) & ( v1_funct_1 @ B ) ) =>
% 1.94/2.17           ( ![C:$i]:
% 1.94/2.17             ( ( ( ( k1_relat_1 @ A ) = ( k1_relat_1 @ B ) ) & 
% 1.94/2.17                 ( ![D:$i]:
% 1.94/2.17                   ( ( r2_hidden @ D @ C ) =>
% 1.94/2.17                     ( ( k1_funct_1 @ A @ D ) = ( k1_funct_1 @ B @ D ) ) ) ) ) =>
% 1.94/2.17               ( ( k7_relat_1 @ A @ C ) = ( k7_relat_1 @ B @ C ) ) ) ) ) ) ))).
% 1.94/2.17  thf(zf_stmt_0, negated_conjecture,
% 1.94/2.17    (~( ![A:$i]:
% 1.94/2.17        ( ( ( v1_relat_1 @ A ) & ( v1_funct_1 @ A ) ) =>
% 1.94/2.17          ( ![B:$i]:
% 1.94/2.17            ( ( ( v1_relat_1 @ B ) & ( v1_funct_1 @ B ) ) =>
% 1.94/2.17              ( ![C:$i]:
% 1.94/2.17                ( ( ( ( k1_relat_1 @ A ) = ( k1_relat_1 @ B ) ) & 
% 1.94/2.17                    ( ![D:$i]:
% 1.94/2.17                      ( ( r2_hidden @ D @ C ) =>
% 1.94/2.17                        ( ( k1_funct_1 @ A @ D ) = ( k1_funct_1 @ B @ D ) ) ) ) ) =>
% 1.94/2.17                  ( ( k7_relat_1 @ A @ C ) = ( k7_relat_1 @ B @ C ) ) ) ) ) ) ) )),
% 1.94/2.17    inference('cnf.neg', [status(esa)], [t166_funct_1])).
% 1.94/2.17  thf('5', plain, (((k1_relat_1 @ sk_A) = (k1_relat_1 @ sk_B))),
% 1.94/2.17      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.94/2.17  thf('6', plain,
% 1.94/2.17      (![X3 : $i, X4 : $i]:
% 1.94/2.17         (((k1_relat_1 @ (k7_relat_1 @ X3 @ X4))
% 1.94/2.17            = (k3_xboole_0 @ (k1_relat_1 @ X3) @ X4))
% 1.94/2.17          | ~ (v1_relat_1 @ X3))),
% 1.94/2.17      inference('cnf', [status(esa)], [t90_relat_1])).
% 1.94/2.17  thf(t68_funct_1, axiom,
% 1.94/2.17    (![A:$i,B:$i]:
% 1.94/2.17     ( ( ( v1_relat_1 @ B ) & ( v1_funct_1 @ B ) ) =>
% 1.94/2.17       ( ![C:$i]:
% 1.94/2.17         ( ( ( v1_relat_1 @ C ) & ( v1_funct_1 @ C ) ) =>
% 1.94/2.17           ( ( ( ( k1_relat_1 @ B ) = ( k3_xboole_0 @ ( k1_relat_1 @ C ) @ A ) ) & 
% 1.94/2.17               ( ![D:$i]:
% 1.94/2.17                 ( ( r2_hidden @ D @ ( k1_relat_1 @ B ) ) =>
% 1.94/2.17                   ( ( k1_funct_1 @ B @ D ) = ( k1_funct_1 @ C @ D ) ) ) ) ) =>
% 1.94/2.17             ( ( B ) = ( k7_relat_1 @ C @ A ) ) ) ) ) ))).
% 1.94/2.17  thf('7', plain,
% 1.94/2.17      (![X7 : $i, X8 : $i, X9 : $i]:
% 1.94/2.17         (~ (v1_relat_1 @ X7)
% 1.94/2.17          | ~ (v1_funct_1 @ X7)
% 1.94/2.17          | ((X9) = (k7_relat_1 @ X7 @ X8))
% 1.94/2.17          | (r2_hidden @ (sk_D @ X7 @ X9) @ (k1_relat_1 @ X9))
% 1.94/2.17          | ((k1_relat_1 @ X9) != (k3_xboole_0 @ (k1_relat_1 @ X7) @ X8))
% 1.94/2.17          | ~ (v1_funct_1 @ X9)
% 1.94/2.17          | ~ (v1_relat_1 @ X9))),
% 1.94/2.17      inference('cnf', [status(esa)], [t68_funct_1])).
% 1.94/2.17  thf('8', plain,
% 1.94/2.17      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 1.94/2.17         (((k3_xboole_0 @ (k1_relat_1 @ X1) @ X0)
% 1.94/2.17            != (k3_xboole_0 @ (k1_relat_1 @ X3) @ X2))
% 1.94/2.17          | ~ (v1_relat_1 @ X1)
% 1.94/2.17          | ~ (v1_relat_1 @ (k7_relat_1 @ X1 @ X0))
% 1.94/2.17          | ~ (v1_funct_1 @ (k7_relat_1 @ X1 @ X0))
% 1.94/2.17          | (r2_hidden @ (sk_D @ X3 @ (k7_relat_1 @ X1 @ X0)) @ 
% 1.94/2.17             (k1_relat_1 @ (k7_relat_1 @ X1 @ X0)))
% 1.94/2.17          | ((k7_relat_1 @ X1 @ X0) = (k7_relat_1 @ X3 @ X2))
% 1.94/2.17          | ~ (v1_funct_1 @ X3)
% 1.94/2.17          | ~ (v1_relat_1 @ X3))),
% 1.94/2.17      inference('sup-', [status(thm)], ['6', '7'])).
% 1.94/2.17  thf('9', plain,
% 1.94/2.17      (![X0 : $i, X1 : $i, X2 : $i]:
% 1.94/2.17         (((k3_xboole_0 @ (k1_relat_1 @ sk_A) @ X2)
% 1.94/2.17            != (k3_xboole_0 @ (k1_relat_1 @ X1) @ X0))
% 1.94/2.17          | ~ (v1_relat_1 @ X1)
% 1.94/2.17          | ~ (v1_funct_1 @ X1)
% 1.94/2.17          | ((k7_relat_1 @ sk_B @ X2) = (k7_relat_1 @ X1 @ X0))
% 1.94/2.17          | (r2_hidden @ (sk_D @ X1 @ (k7_relat_1 @ sk_B @ X2)) @ 
% 1.94/2.17             (k1_relat_1 @ (k7_relat_1 @ sk_B @ X2)))
% 1.94/2.17          | ~ (v1_funct_1 @ (k7_relat_1 @ sk_B @ X2))
% 1.94/2.17          | ~ (v1_relat_1 @ (k7_relat_1 @ sk_B @ X2))
% 1.94/2.17          | ~ (v1_relat_1 @ sk_B))),
% 1.94/2.17      inference('sup-', [status(thm)], ['5', '8'])).
% 1.94/2.17  thf('10', plain, ((v1_relat_1 @ sk_B)),
% 1.94/2.17      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.94/2.17  thf('11', plain,
% 1.94/2.17      (![X0 : $i, X1 : $i, X2 : $i]:
% 1.94/2.17         (((k3_xboole_0 @ (k1_relat_1 @ sk_A) @ X2)
% 1.94/2.17            != (k3_xboole_0 @ (k1_relat_1 @ X1) @ X0))
% 1.94/2.17          | ~ (v1_relat_1 @ X1)
% 1.94/2.17          | ~ (v1_funct_1 @ X1)
% 1.94/2.17          | ((k7_relat_1 @ sk_B @ X2) = (k7_relat_1 @ X1 @ X0))
% 1.94/2.17          | (r2_hidden @ (sk_D @ X1 @ (k7_relat_1 @ sk_B @ X2)) @ 
% 1.94/2.17             (k1_relat_1 @ (k7_relat_1 @ sk_B @ X2)))
% 1.94/2.17          | ~ (v1_funct_1 @ (k7_relat_1 @ sk_B @ X2))
% 1.94/2.17          | ~ (v1_relat_1 @ (k7_relat_1 @ sk_B @ X2)))),
% 1.94/2.17      inference('demod', [status(thm)], ['9', '10'])).
% 1.94/2.17  thf('12', plain,
% 1.94/2.17      (![X0 : $i]:
% 1.94/2.17         (~ (v1_relat_1 @ (k7_relat_1 @ sk_B @ X0))
% 1.94/2.17          | ~ (v1_funct_1 @ (k7_relat_1 @ sk_B @ X0))
% 1.94/2.17          | (r2_hidden @ (sk_D @ sk_A @ (k7_relat_1 @ sk_B @ X0)) @ 
% 1.94/2.17             (k1_relat_1 @ (k7_relat_1 @ sk_B @ X0)))
% 1.94/2.17          | ((k7_relat_1 @ sk_B @ X0) = (k7_relat_1 @ sk_A @ X0))
% 1.94/2.17          | ~ (v1_funct_1 @ sk_A)
% 1.94/2.17          | ~ (v1_relat_1 @ sk_A))),
% 1.94/2.17      inference('eq_res', [status(thm)], ['11'])).
% 1.94/2.17  thf('13', plain, ((v1_funct_1 @ sk_A)),
% 1.94/2.17      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.94/2.17  thf('14', plain, ((v1_relat_1 @ sk_A)),
% 1.94/2.17      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.94/2.17  thf('15', plain,
% 1.94/2.17      (![X0 : $i]:
% 1.94/2.17         (~ (v1_relat_1 @ (k7_relat_1 @ sk_B @ X0))
% 1.94/2.17          | ~ (v1_funct_1 @ (k7_relat_1 @ sk_B @ X0))
% 1.94/2.17          | (r2_hidden @ (sk_D @ sk_A @ (k7_relat_1 @ sk_B @ X0)) @ 
% 1.94/2.17             (k1_relat_1 @ (k7_relat_1 @ sk_B @ X0)))
% 1.94/2.17          | ((k7_relat_1 @ sk_B @ X0) = (k7_relat_1 @ sk_A @ X0)))),
% 1.94/2.17      inference('demod', [status(thm)], ['12', '13', '14'])).
% 1.94/2.17  thf('16', plain,
% 1.94/2.17      (![X0 : $i]:
% 1.94/2.17         (~ (v1_relat_1 @ sk_B)
% 1.94/2.17          | ~ (v1_funct_1 @ sk_B)
% 1.94/2.17          | ((k7_relat_1 @ sk_B @ X0) = (k7_relat_1 @ sk_A @ X0))
% 1.94/2.17          | (r2_hidden @ (sk_D @ sk_A @ (k7_relat_1 @ sk_B @ X0)) @ 
% 1.94/2.17             (k1_relat_1 @ (k7_relat_1 @ sk_B @ X0)))
% 1.94/2.17          | ~ (v1_funct_1 @ (k7_relat_1 @ sk_B @ X0)))),
% 1.94/2.17      inference('sup-', [status(thm)], ['4', '15'])).
% 1.94/2.17  thf('17', plain, ((v1_relat_1 @ sk_B)),
% 1.94/2.17      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.94/2.17  thf('18', plain, ((v1_funct_1 @ sk_B)),
% 1.94/2.17      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.94/2.17  thf('19', plain,
% 1.94/2.17      (![X0 : $i]:
% 1.94/2.17         (((k7_relat_1 @ sk_B @ X0) = (k7_relat_1 @ sk_A @ X0))
% 1.94/2.17          | (r2_hidden @ (sk_D @ sk_A @ (k7_relat_1 @ sk_B @ X0)) @ 
% 1.94/2.17             (k1_relat_1 @ (k7_relat_1 @ sk_B @ X0)))
% 1.94/2.17          | ~ (v1_funct_1 @ (k7_relat_1 @ sk_B @ X0)))),
% 1.94/2.17      inference('demod', [status(thm)], ['16', '17', '18'])).
% 1.94/2.17  thf('20', plain,
% 1.94/2.17      (![X0 : $i]:
% 1.94/2.17         (~ (v1_relat_1 @ sk_B)
% 1.94/2.17          | ~ (v1_funct_1 @ sk_B)
% 1.94/2.17          | (r2_hidden @ (sk_D @ sk_A @ (k7_relat_1 @ sk_B @ X0)) @ 
% 1.94/2.17             (k1_relat_1 @ (k7_relat_1 @ sk_B @ X0)))
% 1.94/2.17          | ((k7_relat_1 @ sk_B @ X0) = (k7_relat_1 @ sk_A @ X0)))),
% 1.94/2.17      inference('sup-', [status(thm)], ['3', '19'])).
% 1.94/2.17  thf('21', plain, ((v1_relat_1 @ sk_B)),
% 1.94/2.17      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.94/2.17  thf('22', plain, ((v1_funct_1 @ sk_B)),
% 1.94/2.17      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.94/2.17  thf('23', plain,
% 1.94/2.17      (![X0 : $i]:
% 1.94/2.17         ((r2_hidden @ (sk_D @ sk_A @ (k7_relat_1 @ sk_B @ X0)) @ 
% 1.94/2.17           (k1_relat_1 @ (k7_relat_1 @ sk_B @ X0)))
% 1.94/2.17          | ((k7_relat_1 @ sk_B @ X0) = (k7_relat_1 @ sk_A @ X0)))),
% 1.94/2.17      inference('demod', [status(thm)], ['20', '21', '22'])).
% 1.94/2.17  thf(t86_relat_1, axiom,
% 1.94/2.17    (![A:$i,B:$i,C:$i]:
% 1.94/2.17     ( ( v1_relat_1 @ C ) =>
% 1.94/2.17       ( ( r2_hidden @ A @ ( k1_relat_1 @ ( k7_relat_1 @ C @ B ) ) ) <=>
% 1.94/2.17         ( ( r2_hidden @ A @ B ) & ( r2_hidden @ A @ ( k1_relat_1 @ C ) ) ) ) ))).
% 1.94/2.17  thf('24', plain,
% 1.94/2.17      (![X0 : $i, X1 : $i, X2 : $i]:
% 1.94/2.17         (~ (r2_hidden @ X0 @ (k1_relat_1 @ (k7_relat_1 @ X2 @ X1)))
% 1.94/2.17          | (r2_hidden @ X0 @ X1)
% 1.94/2.17          | ~ (v1_relat_1 @ X2))),
% 1.94/2.17      inference('cnf', [status(esa)], [t86_relat_1])).
% 1.94/2.17  thf('25', plain,
% 1.94/2.17      (![X0 : $i]:
% 1.94/2.17         (((k7_relat_1 @ sk_B @ X0) = (k7_relat_1 @ sk_A @ X0))
% 1.94/2.17          | ~ (v1_relat_1 @ sk_B)
% 1.94/2.17          | (r2_hidden @ (sk_D @ sk_A @ (k7_relat_1 @ sk_B @ X0)) @ X0))),
% 1.94/2.17      inference('sup-', [status(thm)], ['23', '24'])).
% 1.94/2.17  thf('26', plain, ((v1_relat_1 @ sk_B)),
% 1.94/2.17      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.94/2.17  thf('27', plain,
% 1.94/2.17      (![X0 : $i]:
% 1.94/2.17         (((k7_relat_1 @ sk_B @ X0) = (k7_relat_1 @ sk_A @ X0))
% 1.94/2.17          | (r2_hidden @ (sk_D @ sk_A @ (k7_relat_1 @ sk_B @ X0)) @ X0))),
% 1.94/2.17      inference('demod', [status(thm)], ['25', '26'])).
% 1.94/2.17  thf('28', plain,
% 1.94/2.17      (![X13 : $i]:
% 1.94/2.17         (((k1_funct_1 @ sk_A @ X13) = (k1_funct_1 @ sk_B @ X13))
% 1.94/2.17          | ~ (r2_hidden @ X13 @ sk_C))),
% 1.94/2.17      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.94/2.17  thf('29', plain,
% 1.94/2.17      ((((k7_relat_1 @ sk_B @ sk_C) = (k7_relat_1 @ sk_A @ sk_C))
% 1.94/2.17        | ((k1_funct_1 @ sk_A @ (sk_D @ sk_A @ (k7_relat_1 @ sk_B @ sk_C)))
% 1.94/2.17            = (k1_funct_1 @ sk_B @ (sk_D @ sk_A @ (k7_relat_1 @ sk_B @ sk_C)))))),
% 1.94/2.17      inference('sup-', [status(thm)], ['27', '28'])).
% 1.94/2.17  thf('30', plain,
% 1.94/2.17      (((k7_relat_1 @ sk_A @ sk_C) != (k7_relat_1 @ sk_B @ sk_C))),
% 1.94/2.17      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.94/2.17  thf('31', plain,
% 1.94/2.17      (((k1_funct_1 @ sk_A @ (sk_D @ sk_A @ (k7_relat_1 @ sk_B @ sk_C)))
% 1.94/2.17         = (k1_funct_1 @ sk_B @ (sk_D @ sk_A @ (k7_relat_1 @ sk_B @ sk_C))))),
% 1.94/2.17      inference('simplify_reflect-', [status(thm)], ['29', '30'])).
% 1.94/2.17  thf('32', plain,
% 1.94/2.17      (![X0 : $i]:
% 1.94/2.17         ((r2_hidden @ (sk_D @ sk_A @ (k7_relat_1 @ sk_B @ X0)) @ 
% 1.94/2.17           (k1_relat_1 @ (k7_relat_1 @ sk_B @ X0)))
% 1.94/2.17          | ((k7_relat_1 @ sk_B @ X0) = (k7_relat_1 @ sk_A @ X0)))),
% 1.94/2.17      inference('demod', [status(thm)], ['20', '21', '22'])).
% 1.94/2.17  thf(t70_funct_1, axiom,
% 1.94/2.17    (![A:$i,B:$i,C:$i]:
% 1.94/2.17     ( ( ( v1_relat_1 @ C ) & ( v1_funct_1 @ C ) ) =>
% 1.94/2.17       ( ( r2_hidden @ A @ ( k1_relat_1 @ ( k7_relat_1 @ C @ B ) ) ) =>
% 1.94/2.17         ( ( k1_funct_1 @ ( k7_relat_1 @ C @ B ) @ A ) = ( k1_funct_1 @ C @ A ) ) ) ))).
% 1.94/2.17  thf('33', plain,
% 1.94/2.17      (![X10 : $i, X11 : $i, X12 : $i]:
% 1.94/2.17         (~ (r2_hidden @ X10 @ (k1_relat_1 @ (k7_relat_1 @ X11 @ X12)))
% 1.94/2.17          | ((k1_funct_1 @ (k7_relat_1 @ X11 @ X12) @ X10)
% 1.94/2.17              = (k1_funct_1 @ X11 @ X10))
% 1.94/2.17          | ~ (v1_funct_1 @ X11)
% 1.94/2.17          | ~ (v1_relat_1 @ X11))),
% 1.94/2.17      inference('cnf', [status(esa)], [t70_funct_1])).
% 1.94/2.17  thf('34', plain,
% 1.94/2.17      (![X0 : $i]:
% 1.94/2.17         (((k7_relat_1 @ sk_B @ X0) = (k7_relat_1 @ sk_A @ X0))
% 1.94/2.17          | ~ (v1_relat_1 @ sk_B)
% 1.94/2.17          | ~ (v1_funct_1 @ sk_B)
% 1.94/2.17          | ((k1_funct_1 @ (k7_relat_1 @ sk_B @ X0) @ 
% 1.94/2.17              (sk_D @ sk_A @ (k7_relat_1 @ sk_B @ X0)))
% 1.94/2.17              = (k1_funct_1 @ sk_B @ (sk_D @ sk_A @ (k7_relat_1 @ sk_B @ X0)))))),
% 1.94/2.17      inference('sup-', [status(thm)], ['32', '33'])).
% 1.94/2.17  thf('35', plain, ((v1_relat_1 @ sk_B)),
% 1.94/2.17      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.94/2.17  thf('36', plain, ((v1_funct_1 @ sk_B)),
% 1.94/2.17      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.94/2.17  thf('37', plain,
% 1.94/2.17      (![X0 : $i]:
% 1.94/2.17         (((k7_relat_1 @ sk_B @ X0) = (k7_relat_1 @ sk_A @ X0))
% 1.94/2.17          | ((k1_funct_1 @ (k7_relat_1 @ sk_B @ X0) @ 
% 1.94/2.17              (sk_D @ sk_A @ (k7_relat_1 @ sk_B @ X0)))
% 1.94/2.17              = (k1_funct_1 @ sk_B @ (sk_D @ sk_A @ (k7_relat_1 @ sk_B @ X0)))))),
% 1.94/2.17      inference('demod', [status(thm)], ['34', '35', '36'])).
% 1.94/2.17  thf('38', plain,
% 1.94/2.17      (![X7 : $i, X8 : $i, X9 : $i]:
% 1.94/2.17         (~ (v1_relat_1 @ X7)
% 1.94/2.17          | ~ (v1_funct_1 @ X7)
% 1.94/2.17          | ((X9) = (k7_relat_1 @ X7 @ X8))
% 1.94/2.17          | ((k1_funct_1 @ X9 @ (sk_D @ X7 @ X9))
% 1.94/2.17              != (k1_funct_1 @ X7 @ (sk_D @ X7 @ X9)))
% 1.94/2.17          | ((k1_relat_1 @ X9) != (k3_xboole_0 @ (k1_relat_1 @ X7) @ X8))
% 1.94/2.17          | ~ (v1_funct_1 @ X9)
% 1.94/2.17          | ~ (v1_relat_1 @ X9))),
% 1.94/2.17      inference('cnf', [status(esa)], [t68_funct_1])).
% 1.94/2.17  thf('39', plain,
% 1.94/2.17      (![X0 : $i, X1 : $i]:
% 1.94/2.17         (((k1_funct_1 @ sk_B @ (sk_D @ sk_A @ (k7_relat_1 @ sk_B @ X0)))
% 1.94/2.17            != (k1_funct_1 @ sk_A @ (sk_D @ sk_A @ (k7_relat_1 @ sk_B @ X0))))
% 1.94/2.17          | ((k7_relat_1 @ sk_B @ X0) = (k7_relat_1 @ sk_A @ X0))
% 1.94/2.17          | ~ (v1_relat_1 @ (k7_relat_1 @ sk_B @ X0))
% 1.94/2.17          | ~ (v1_funct_1 @ (k7_relat_1 @ sk_B @ X0))
% 1.94/2.17          | ((k1_relat_1 @ (k7_relat_1 @ sk_B @ X0))
% 1.94/2.17              != (k3_xboole_0 @ (k1_relat_1 @ sk_A) @ X1))
% 1.94/2.17          | ((k7_relat_1 @ sk_B @ X0) = (k7_relat_1 @ sk_A @ X1))
% 1.94/2.17          | ~ (v1_funct_1 @ sk_A)
% 1.94/2.17          | ~ (v1_relat_1 @ sk_A))),
% 1.94/2.17      inference('sup-', [status(thm)], ['37', '38'])).
% 1.94/2.17  thf('40', plain, ((v1_funct_1 @ sk_A)),
% 1.94/2.17      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.94/2.17  thf('41', plain, ((v1_relat_1 @ sk_A)),
% 1.94/2.17      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.94/2.17  thf('42', plain,
% 1.94/2.17      (![X0 : $i, X1 : $i]:
% 1.94/2.17         (((k1_funct_1 @ sk_B @ (sk_D @ sk_A @ (k7_relat_1 @ sk_B @ X0)))
% 1.94/2.17            != (k1_funct_1 @ sk_A @ (sk_D @ sk_A @ (k7_relat_1 @ sk_B @ X0))))
% 1.94/2.17          | ((k7_relat_1 @ sk_B @ X0) = (k7_relat_1 @ sk_A @ X0))
% 1.94/2.17          | ~ (v1_relat_1 @ (k7_relat_1 @ sk_B @ X0))
% 1.94/2.17          | ~ (v1_funct_1 @ (k7_relat_1 @ sk_B @ X0))
% 1.94/2.17          | ((k1_relat_1 @ (k7_relat_1 @ sk_B @ X0))
% 1.94/2.17              != (k3_xboole_0 @ (k1_relat_1 @ sk_A) @ X1))
% 1.94/2.17          | ((k7_relat_1 @ sk_B @ X0) = (k7_relat_1 @ sk_A @ X1)))),
% 1.94/2.17      inference('demod', [status(thm)], ['39', '40', '41'])).
% 1.94/2.17  thf('43', plain,
% 1.94/2.17      (![X0 : $i]:
% 1.94/2.17         (((k1_funct_1 @ sk_A @ (sk_D @ sk_A @ (k7_relat_1 @ sk_B @ sk_C)))
% 1.94/2.17            != (k1_funct_1 @ sk_A @ (sk_D @ sk_A @ (k7_relat_1 @ sk_B @ sk_C))))
% 1.94/2.17          | ((k7_relat_1 @ sk_B @ sk_C) = (k7_relat_1 @ sk_A @ X0))
% 1.94/2.17          | ((k1_relat_1 @ (k7_relat_1 @ sk_B @ sk_C))
% 1.94/2.17              != (k3_xboole_0 @ (k1_relat_1 @ sk_A) @ X0))
% 1.94/2.17          | ~ (v1_funct_1 @ (k7_relat_1 @ sk_B @ sk_C))
% 1.94/2.17          | ~ (v1_relat_1 @ (k7_relat_1 @ sk_B @ sk_C))
% 1.94/2.17          | ((k7_relat_1 @ sk_B @ sk_C) = (k7_relat_1 @ sk_A @ sk_C)))),
% 1.94/2.17      inference('sup-', [status(thm)], ['31', '42'])).
% 1.94/2.17  thf('44', plain,
% 1.94/2.17      (![X0 : $i]:
% 1.94/2.17         (((k7_relat_1 @ sk_B @ sk_C) = (k7_relat_1 @ sk_A @ sk_C))
% 1.94/2.17          | ~ (v1_relat_1 @ (k7_relat_1 @ sk_B @ sk_C))
% 1.94/2.17          | ~ (v1_funct_1 @ (k7_relat_1 @ sk_B @ sk_C))
% 1.94/2.17          | ((k1_relat_1 @ (k7_relat_1 @ sk_B @ sk_C))
% 1.94/2.17              != (k3_xboole_0 @ (k1_relat_1 @ sk_A) @ X0))
% 1.94/2.17          | ((k7_relat_1 @ sk_B @ sk_C) = (k7_relat_1 @ sk_A @ X0)))),
% 1.94/2.17      inference('simplify', [status(thm)], ['43'])).
% 1.94/2.17  thf('45', plain,
% 1.94/2.17      (((k7_relat_1 @ sk_A @ sk_C) != (k7_relat_1 @ sk_B @ sk_C))),
% 1.94/2.17      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.94/2.17  thf('46', plain,
% 1.94/2.17      (![X0 : $i]:
% 1.94/2.17         (~ (v1_relat_1 @ (k7_relat_1 @ sk_B @ sk_C))
% 1.94/2.17          | ~ (v1_funct_1 @ (k7_relat_1 @ sk_B @ sk_C))
% 1.94/2.17          | ((k1_relat_1 @ (k7_relat_1 @ sk_B @ sk_C))
% 1.94/2.17              != (k3_xboole_0 @ (k1_relat_1 @ sk_A) @ X0))
% 1.94/2.17          | ((k7_relat_1 @ sk_B @ sk_C) = (k7_relat_1 @ sk_A @ X0)))),
% 1.94/2.17      inference('simplify_reflect-', [status(thm)], ['44', '45'])).
% 1.94/2.17  thf('47', plain,
% 1.94/2.17      (![X0 : $i]:
% 1.94/2.17         (~ (v1_relat_1 @ sk_B)
% 1.94/2.17          | ~ (v1_funct_1 @ sk_B)
% 1.94/2.17          | ((k7_relat_1 @ sk_B @ sk_C) = (k7_relat_1 @ sk_A @ X0))
% 1.94/2.17          | ((k1_relat_1 @ (k7_relat_1 @ sk_B @ sk_C))
% 1.94/2.17              != (k3_xboole_0 @ (k1_relat_1 @ sk_A) @ X0))
% 1.94/2.17          | ~ (v1_funct_1 @ (k7_relat_1 @ sk_B @ sk_C)))),
% 1.94/2.17      inference('sup-', [status(thm)], ['2', '46'])).
% 1.94/2.17  thf('48', plain, ((v1_relat_1 @ sk_B)),
% 1.94/2.17      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.94/2.17  thf('49', plain, ((v1_funct_1 @ sk_B)),
% 1.94/2.17      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.94/2.17  thf('50', plain,
% 1.94/2.17      (![X0 : $i]:
% 1.94/2.17         (((k7_relat_1 @ sk_B @ sk_C) = (k7_relat_1 @ sk_A @ X0))
% 1.94/2.17          | ((k1_relat_1 @ (k7_relat_1 @ sk_B @ sk_C))
% 1.94/2.17              != (k3_xboole_0 @ (k1_relat_1 @ sk_A) @ X0))
% 1.94/2.17          | ~ (v1_funct_1 @ (k7_relat_1 @ sk_B @ sk_C)))),
% 1.94/2.17      inference('demod', [status(thm)], ['47', '48', '49'])).
% 1.94/2.17  thf('51', plain,
% 1.94/2.17      (![X0 : $i]:
% 1.94/2.17         (~ (v1_relat_1 @ sk_B)
% 1.94/2.17          | ~ (v1_funct_1 @ sk_B)
% 1.94/2.17          | ((k1_relat_1 @ (k7_relat_1 @ sk_B @ sk_C))
% 1.94/2.17              != (k3_xboole_0 @ (k1_relat_1 @ sk_A) @ X0))
% 1.94/2.17          | ((k7_relat_1 @ sk_B @ sk_C) = (k7_relat_1 @ sk_A @ X0)))),
% 1.94/2.17      inference('sup-', [status(thm)], ['1', '50'])).
% 1.94/2.17  thf('52', plain, ((v1_relat_1 @ sk_B)),
% 1.94/2.17      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.94/2.17  thf('53', plain, ((v1_funct_1 @ sk_B)),
% 1.94/2.17      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.94/2.17  thf('54', plain,
% 1.94/2.17      (![X0 : $i]:
% 1.94/2.17         (((k1_relat_1 @ (k7_relat_1 @ sk_B @ sk_C))
% 1.94/2.17            != (k3_xboole_0 @ (k1_relat_1 @ sk_A) @ X0))
% 1.94/2.17          | ((k7_relat_1 @ sk_B @ sk_C) = (k7_relat_1 @ sk_A @ X0)))),
% 1.94/2.17      inference('demod', [status(thm)], ['51', '52', '53'])).
% 1.94/2.17  thf('55', plain,
% 1.94/2.17      (![X0 : $i]:
% 1.94/2.17         (((k3_xboole_0 @ (k1_relat_1 @ sk_B) @ sk_C)
% 1.94/2.17            != (k3_xboole_0 @ (k1_relat_1 @ sk_A) @ X0))
% 1.94/2.17          | ~ (v1_relat_1 @ sk_B)
% 1.94/2.17          | ((k7_relat_1 @ sk_B @ sk_C) = (k7_relat_1 @ sk_A @ X0)))),
% 1.94/2.17      inference('sup-', [status(thm)], ['0', '54'])).
% 1.94/2.17  thf('56', plain, (((k1_relat_1 @ sk_A) = (k1_relat_1 @ sk_B))),
% 1.94/2.17      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.94/2.17  thf('57', plain, ((v1_relat_1 @ sk_B)),
% 1.94/2.17      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.94/2.17  thf('58', plain,
% 1.94/2.17      (![X0 : $i]:
% 1.94/2.17         (((k3_xboole_0 @ (k1_relat_1 @ sk_A) @ sk_C)
% 1.94/2.17            != (k3_xboole_0 @ (k1_relat_1 @ sk_A) @ X0))
% 1.94/2.17          | ((k7_relat_1 @ sk_B @ sk_C) = (k7_relat_1 @ sk_A @ X0)))),
% 1.94/2.17      inference('demod', [status(thm)], ['55', '56', '57'])).
% 1.94/2.17  thf('59', plain, (((k7_relat_1 @ sk_B @ sk_C) = (k7_relat_1 @ sk_A @ sk_C))),
% 1.94/2.17      inference('eq_res', [status(thm)], ['58'])).
% 1.94/2.17  thf('60', plain,
% 1.94/2.17      (((k7_relat_1 @ sk_A @ sk_C) != (k7_relat_1 @ sk_B @ sk_C))),
% 1.94/2.17      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.94/2.17  thf('61', plain, ($false),
% 1.94/2.17      inference('simplify_reflect-', [status(thm)], ['59', '60'])).
% 1.94/2.17  
% 1.94/2.17  % SZS output end Refutation
% 1.94/2.17  
% 1.94/2.18  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
