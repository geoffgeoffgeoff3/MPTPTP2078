%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.1kzzZFPd9v

% Computer   : n007.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:44:22 EST 2020

% Result     : Theorem 0.41s
% Output     : Refutation 0.41s
% Verified   : 
% Statistics : Number of formulae       :   85 ( 182 expanded)
%              Number of leaves         :   23 (  61 expanded)
%              Depth                    :   16
%              Number of atoms          :  753 (1867 expanded)
%              Number of equality atoms :  105 ( 247 expanded)
%              Maximal formula depth    :   15 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(sk_D_2_type,type,(
    sk_D_2: $i > $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k1_tarski_type,type,(
    k1_tarski: $i > $i )).

thf(k2_tarski_type,type,(
    k2_tarski: $i > $i > $i )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(v1_funct_1_type,type,(
    v1_funct_1: $i > $o )).

thf(k2_relat_1_type,type,(
    k2_relat_1: $i > $i )).

thf(sk_C_type,type,(
    sk_C: $i > $i > $i )).

thf(k9_relat_1_type,type,(
    k9_relat_1: $i > $i > $i )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(k11_relat_1_type,type,(
    k11_relat_1: $i > $i > $i )).

thf(k1_relat_1_type,type,(
    k1_relat_1: $i > $i )).

thf(k1_funct_1_type,type,(
    k1_funct_1: $i > $i > $i )).

thf(t14_funct_1,conjecture,(
    ! [A: $i,B: $i] :
      ( ( ( v1_relat_1 @ B )
        & ( v1_funct_1 @ B ) )
     => ( ( ( k1_relat_1 @ B )
          = ( k1_tarski @ A ) )
       => ( ( k2_relat_1 @ B )
          = ( k1_tarski @ ( k1_funct_1 @ B @ A ) ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i] :
        ( ( ( v1_relat_1 @ B )
          & ( v1_funct_1 @ B ) )
       => ( ( ( k1_relat_1 @ B )
            = ( k1_tarski @ A ) )
         => ( ( k2_relat_1 @ B )
            = ( k1_tarski @ ( k1_funct_1 @ B @ A ) ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t14_funct_1])).

thf('0',plain,
    ( ( k1_relat_1 @ sk_B )
    = ( k1_tarski @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t205_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( ( r2_hidden @ A @ ( k1_relat_1 @ B ) )
      <=> ( ( k11_relat_1 @ B @ A )
         != k1_xboole_0 ) ) ) )).

thf('1',plain,(
    ! [X21: $i,X22: $i] :
      ( ( ( k11_relat_1 @ X21 @ X22 )
        = k1_xboole_0 )
      | ( r2_hidden @ X22 @ ( k1_relat_1 @ X21 ) )
      | ~ ( v1_relat_1 @ X21 ) ) ),
    inference(cnf,[status(esa)],[t205_relat_1])).

thf('2',plain,(
    ! [X0: $i] :
      ( ( r2_hidden @ X0 @ ( k1_tarski @ sk_A ) )
      | ~ ( v1_relat_1 @ sk_B )
      | ( ( k11_relat_1 @ sk_B @ X0 )
        = k1_xboole_0 ) ) ),
    inference('sup+',[status(thm)],['0','1'])).

thf('3',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('4',plain,(
    ! [X0: $i] :
      ( ( r2_hidden @ X0 @ ( k1_tarski @ sk_A ) )
      | ( ( k11_relat_1 @ sk_B @ X0 )
        = k1_xboole_0 ) ) ),
    inference(demod,[status(thm)],['2','3'])).

thf(t69_enumset1,axiom,(
    ! [A: $i] :
      ( ( k2_tarski @ A @ A )
      = ( k1_tarski @ A ) ) )).

thf('5',plain,(
    ! [X6: $i] :
      ( ( k2_tarski @ X6 @ X6 )
      = ( k1_tarski @ X6 ) ) ),
    inference(cnf,[status(esa)],[t69_enumset1])).

thf(d2_tarski,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( C
        = ( k2_tarski @ A @ B ) )
    <=> ! [D: $i] :
          ( ( r2_hidden @ D @ C )
        <=> ( ( D = A )
            | ( D = B ) ) ) ) )).

thf('6',plain,(
    ! [X0: $i,X2: $i,X3: $i,X4: $i] :
      ( ~ ( r2_hidden @ X4 @ X2 )
      | ( X4 = X3 )
      | ( X4 = X0 )
      | ( X2
       != ( k2_tarski @ X3 @ X0 ) ) ) ),
    inference(cnf,[status(esa)],[d2_tarski])).

thf('7',plain,(
    ! [X0: $i,X3: $i,X4: $i] :
      ( ( X4 = X0 )
      | ( X4 = X3 )
      | ~ ( r2_hidden @ X4 @ ( k2_tarski @ X3 @ X0 ) ) ) ),
    inference(simplify,[status(thm)],['6'])).

thf('8',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( r2_hidden @ X1 @ ( k1_tarski @ X0 ) )
      | ( X1 = X0 )
      | ( X1 = X0 ) ) ),
    inference('sup-',[status(thm)],['5','7'])).

thf('9',plain,(
    ! [X0: $i,X1: $i] :
      ( ( X1 = X0 )
      | ~ ( r2_hidden @ X1 @ ( k1_tarski @ X0 ) ) ) ),
    inference(simplify,[status(thm)],['8'])).

thf('10',plain,(
    ! [X0: $i] :
      ( ( ( k11_relat_1 @ sk_B @ X0 )
        = k1_xboole_0 )
      | ( X0 = sk_A ) ) ),
    inference('sup-',[status(thm)],['4','9'])).

thf(l44_zfmisc_1,axiom,(
    ! [A: $i,B: $i] :
      ~ ( ( A
         != ( k1_tarski @ B ) )
        & ( A != k1_xboole_0 )
        & ! [C: $i] :
            ~ ( ( r2_hidden @ C @ A )
              & ( C != B ) ) ) )).

thf('11',plain,(
    ! [X16: $i,X17: $i] :
      ( ( X16 = k1_xboole_0 )
      | ( r2_hidden @ ( sk_C @ X17 @ X16 ) @ X16 )
      | ( X16
        = ( k1_tarski @ X17 ) ) ) ),
    inference(cnf,[status(esa)],[l44_zfmisc_1])).

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

thf('12',plain,(
    ! [X24: $i,X26: $i,X27: $i] :
      ( ( X26
       != ( k2_relat_1 @ X24 ) )
      | ( r2_hidden @ ( sk_D_2 @ X27 @ X24 ) @ ( k1_relat_1 @ X24 ) )
      | ~ ( r2_hidden @ X27 @ X26 )
      | ~ ( v1_funct_1 @ X24 )
      | ~ ( v1_relat_1 @ X24 ) ) ),
    inference(cnf,[status(esa)],[d5_funct_1])).

thf('13',plain,(
    ! [X24: $i,X27: $i] :
      ( ~ ( v1_relat_1 @ X24 )
      | ~ ( v1_funct_1 @ X24 )
      | ~ ( r2_hidden @ X27 @ ( k2_relat_1 @ X24 ) )
      | ( r2_hidden @ ( sk_D_2 @ X27 @ X24 ) @ ( k1_relat_1 @ X24 ) ) ) ),
    inference(simplify,[status(thm)],['12'])).

thf('14',plain,(
    ! [X0: $i,X1: $i] :
      ( ( ( k2_relat_1 @ X0 )
        = ( k1_tarski @ X1 ) )
      | ( ( k2_relat_1 @ X0 )
        = k1_xboole_0 )
      | ( r2_hidden @ ( sk_D_2 @ ( sk_C @ X1 @ ( k2_relat_1 @ X0 ) ) @ X0 ) @ ( k1_relat_1 @ X0 ) )
      | ~ ( v1_funct_1 @ X0 )
      | ~ ( v1_relat_1 @ X0 ) ) ),
    inference('sup-',[status(thm)],['11','13'])).

thf('15',plain,(
    ! [X21: $i,X22: $i] :
      ( ~ ( r2_hidden @ X22 @ ( k1_relat_1 @ X21 ) )
      | ( ( k11_relat_1 @ X21 @ X22 )
       != k1_xboole_0 )
      | ~ ( v1_relat_1 @ X21 ) ) ),
    inference(cnf,[status(esa)],[t205_relat_1])).

thf('16',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v1_relat_1 @ X0 )
      | ~ ( v1_funct_1 @ X0 )
      | ( ( k2_relat_1 @ X0 )
        = k1_xboole_0 )
      | ( ( k2_relat_1 @ X0 )
        = ( k1_tarski @ X1 ) )
      | ~ ( v1_relat_1 @ X0 )
      | ( ( k11_relat_1 @ X0 @ ( sk_D_2 @ ( sk_C @ X1 @ ( k2_relat_1 @ X0 ) ) @ X0 ) )
       != k1_xboole_0 ) ) ),
    inference('sup-',[status(thm)],['14','15'])).

thf('17',plain,(
    ! [X0: $i,X1: $i] :
      ( ( ( k11_relat_1 @ X0 @ ( sk_D_2 @ ( sk_C @ X1 @ ( k2_relat_1 @ X0 ) ) @ X0 ) )
       != k1_xboole_0 )
      | ( ( k2_relat_1 @ X0 )
        = ( k1_tarski @ X1 ) )
      | ( ( k2_relat_1 @ X0 )
        = k1_xboole_0 )
      | ~ ( v1_funct_1 @ X0 )
      | ~ ( v1_relat_1 @ X0 ) ) ),
    inference(simplify,[status(thm)],['16'])).

thf('18',plain,(
    ! [X0: $i] :
      ( ( k1_xboole_0 != k1_xboole_0 )
      | ( ( sk_D_2 @ ( sk_C @ X0 @ ( k2_relat_1 @ sk_B ) ) @ sk_B )
        = sk_A )
      | ~ ( v1_relat_1 @ sk_B )
      | ~ ( v1_funct_1 @ sk_B )
      | ( ( k2_relat_1 @ sk_B )
        = k1_xboole_0 )
      | ( ( k2_relat_1 @ sk_B )
        = ( k1_tarski @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['10','17'])).

thf('19',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('20',plain,(
    v1_funct_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('21',plain,(
    ! [X0: $i] :
      ( ( k1_xboole_0 != k1_xboole_0 )
      | ( ( sk_D_2 @ ( sk_C @ X0 @ ( k2_relat_1 @ sk_B ) ) @ sk_B )
        = sk_A )
      | ( ( k2_relat_1 @ sk_B )
        = k1_xboole_0 )
      | ( ( k2_relat_1 @ sk_B )
        = ( k1_tarski @ X0 ) ) ) ),
    inference(demod,[status(thm)],['18','19','20'])).

thf('22',plain,(
    ! [X0: $i] :
      ( ( ( k2_relat_1 @ sk_B )
        = ( k1_tarski @ X0 ) )
      | ( ( k2_relat_1 @ sk_B )
        = k1_xboole_0 )
      | ( ( sk_D_2 @ ( sk_C @ X0 @ ( k2_relat_1 @ sk_B ) ) @ sk_B )
        = sk_A ) ) ),
    inference(simplify,[status(thm)],['21'])).

thf('23',plain,(
    ! [X6: $i] :
      ( ( k2_tarski @ X6 @ X6 )
      = ( k1_tarski @ X6 ) ) ),
    inference(cnf,[status(esa)],[t69_enumset1])).

thf('24',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i] :
      ( ( X1 != X0 )
      | ( r2_hidden @ X1 @ X2 )
      | ( X2
       != ( k2_tarski @ X3 @ X0 ) ) ) ),
    inference(cnf,[status(esa)],[d2_tarski])).

thf('25',plain,(
    ! [X0: $i,X3: $i] :
      ( r2_hidden @ X0 @ ( k2_tarski @ X3 @ X0 ) ) ),
    inference(simplify,[status(thm)],['24'])).

thf('26',plain,(
    ! [X0: $i] :
      ( r2_hidden @ X0 @ ( k1_tarski @ X0 ) ) ),
    inference('sup+',[status(thm)],['23','25'])).

thf('27',plain,
    ( ( k1_relat_1 @ sk_B )
    = ( k1_tarski @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('28',plain,(
    ! [X21: $i,X22: $i] :
      ( ~ ( r2_hidden @ X22 @ ( k1_relat_1 @ X21 ) )
      | ( ( k11_relat_1 @ X21 @ X22 )
       != k1_xboole_0 )
      | ~ ( v1_relat_1 @ X21 ) ) ),
    inference(cnf,[status(esa)],[t205_relat_1])).

thf('29',plain,(
    ! [X0: $i] :
      ( ~ ( r2_hidden @ X0 @ ( k1_tarski @ sk_A ) )
      | ~ ( v1_relat_1 @ sk_B )
      | ( ( k11_relat_1 @ sk_B @ X0 )
       != k1_xboole_0 ) ) ),
    inference('sup-',[status(thm)],['27','28'])).

thf('30',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('31',plain,(
    ! [X0: $i] :
      ( ~ ( r2_hidden @ X0 @ ( k1_tarski @ sk_A ) )
      | ( ( k11_relat_1 @ sk_B @ X0 )
       != k1_xboole_0 ) ) ),
    inference(demod,[status(thm)],['29','30'])).

thf('32',plain,(
    ( k11_relat_1 @ sk_B @ sk_A )
 != k1_xboole_0 ),
    inference('sup-',[status(thm)],['26','31'])).

thf('33',plain,
    ( ( k1_relat_1 @ sk_B )
    = ( k1_tarski @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t146_relat_1,axiom,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ( ( k9_relat_1 @ A @ ( k1_relat_1 @ A ) )
        = ( k2_relat_1 @ A ) ) ) )).

thf('34',plain,(
    ! [X20: $i] :
      ( ( ( k9_relat_1 @ X20 @ ( k1_relat_1 @ X20 ) )
        = ( k2_relat_1 @ X20 ) )
      | ~ ( v1_relat_1 @ X20 ) ) ),
    inference(cnf,[status(esa)],[t146_relat_1])).

thf('35',plain,
    ( ( ( k9_relat_1 @ sk_B @ ( k1_tarski @ sk_A ) )
      = ( k2_relat_1 @ sk_B ) )
    | ~ ( v1_relat_1 @ sk_B ) ),
    inference('sup+',[status(thm)],['33','34'])).

thf('36',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('37',plain,
    ( ( k9_relat_1 @ sk_B @ ( k1_tarski @ sk_A ) )
    = ( k2_relat_1 @ sk_B ) ),
    inference(demod,[status(thm)],['35','36'])).

thf(d16_relat_1,axiom,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ! [B: $i] :
          ( ( k11_relat_1 @ A @ B )
          = ( k9_relat_1 @ A @ ( k1_tarski @ B ) ) ) ) )).

thf('38',plain,(
    ! [X18: $i,X19: $i] :
      ( ( ( k11_relat_1 @ X18 @ X19 )
        = ( k9_relat_1 @ X18 @ ( k1_tarski @ X19 ) ) )
      | ~ ( v1_relat_1 @ X18 ) ) ),
    inference(cnf,[status(esa)],[d16_relat_1])).

thf('39',plain,
    ( ( ( k11_relat_1 @ sk_B @ sk_A )
      = ( k2_relat_1 @ sk_B ) )
    | ~ ( v1_relat_1 @ sk_B ) ),
    inference('sup+',[status(thm)],['37','38'])).

thf('40',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('41',plain,
    ( ( k11_relat_1 @ sk_B @ sk_A )
    = ( k2_relat_1 @ sk_B ) ),
    inference(demod,[status(thm)],['39','40'])).

thf('42',plain,(
    ( k2_relat_1 @ sk_B )
 != k1_xboole_0 ),
    inference(demod,[status(thm)],['32','41'])).

thf('43',plain,(
    ! [X0: $i] :
      ( ( ( k2_relat_1 @ sk_B )
        = ( k1_tarski @ X0 ) )
      | ( ( sk_D_2 @ ( sk_C @ X0 @ ( k2_relat_1 @ sk_B ) ) @ sk_B )
        = sk_A ) ) ),
    inference('simplify_reflect-',[status(thm)],['22','42'])).

thf('44',plain,(
    ! [X16: $i,X17: $i] :
      ( ( X16 = k1_xboole_0 )
      | ( r2_hidden @ ( sk_C @ X17 @ X16 ) @ X16 )
      | ( X16
        = ( k1_tarski @ X17 ) ) ) ),
    inference(cnf,[status(esa)],[l44_zfmisc_1])).

thf('45',plain,(
    ! [X24: $i,X26: $i,X27: $i] :
      ( ( X26
       != ( k2_relat_1 @ X24 ) )
      | ( X27
        = ( k1_funct_1 @ X24 @ ( sk_D_2 @ X27 @ X24 ) ) )
      | ~ ( r2_hidden @ X27 @ X26 )
      | ~ ( v1_funct_1 @ X24 )
      | ~ ( v1_relat_1 @ X24 ) ) ),
    inference(cnf,[status(esa)],[d5_funct_1])).

thf('46',plain,(
    ! [X24: $i,X27: $i] :
      ( ~ ( v1_relat_1 @ X24 )
      | ~ ( v1_funct_1 @ X24 )
      | ~ ( r2_hidden @ X27 @ ( k2_relat_1 @ X24 ) )
      | ( X27
        = ( k1_funct_1 @ X24 @ ( sk_D_2 @ X27 @ X24 ) ) ) ) ),
    inference(simplify,[status(thm)],['45'])).

thf('47',plain,(
    ! [X0: $i,X1: $i] :
      ( ( ( k2_relat_1 @ X0 )
        = ( k1_tarski @ X1 ) )
      | ( ( k2_relat_1 @ X0 )
        = k1_xboole_0 )
      | ( ( sk_C @ X1 @ ( k2_relat_1 @ X0 ) )
        = ( k1_funct_1 @ X0 @ ( sk_D_2 @ ( sk_C @ X1 @ ( k2_relat_1 @ X0 ) ) @ X0 ) ) )
      | ~ ( v1_funct_1 @ X0 )
      | ~ ( v1_relat_1 @ X0 ) ) ),
    inference('sup-',[status(thm)],['44','46'])).

thf('48',plain,(
    ! [X0: $i] :
      ( ( ( sk_C @ X0 @ ( k2_relat_1 @ sk_B ) )
        = ( k1_funct_1 @ sk_B @ sk_A ) )
      | ( ( k2_relat_1 @ sk_B )
        = ( k1_tarski @ X0 ) )
      | ~ ( v1_relat_1 @ sk_B )
      | ~ ( v1_funct_1 @ sk_B )
      | ( ( k2_relat_1 @ sk_B )
        = k1_xboole_0 )
      | ( ( k2_relat_1 @ sk_B )
        = ( k1_tarski @ X0 ) ) ) ),
    inference('sup+',[status(thm)],['43','47'])).

thf('49',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('50',plain,(
    v1_funct_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('51',plain,(
    ! [X0: $i] :
      ( ( ( sk_C @ X0 @ ( k2_relat_1 @ sk_B ) )
        = ( k1_funct_1 @ sk_B @ sk_A ) )
      | ( ( k2_relat_1 @ sk_B )
        = ( k1_tarski @ X0 ) )
      | ( ( k2_relat_1 @ sk_B )
        = k1_xboole_0 )
      | ( ( k2_relat_1 @ sk_B )
        = ( k1_tarski @ X0 ) ) ) ),
    inference(demod,[status(thm)],['48','49','50'])).

thf('52',plain,(
    ! [X0: $i] :
      ( ( ( k2_relat_1 @ sk_B )
        = k1_xboole_0 )
      | ( ( k2_relat_1 @ sk_B )
        = ( k1_tarski @ X0 ) )
      | ( ( sk_C @ X0 @ ( k2_relat_1 @ sk_B ) )
        = ( k1_funct_1 @ sk_B @ sk_A ) ) ) ),
    inference(simplify,[status(thm)],['51'])).

thf('53',plain,(
    ( k2_relat_1 @ sk_B )
 != k1_xboole_0 ),
    inference(demod,[status(thm)],['32','41'])).

thf('54',plain,(
    ! [X0: $i] :
      ( ( ( k2_relat_1 @ sk_B )
        = ( k1_tarski @ X0 ) )
      | ( ( sk_C @ X0 @ ( k2_relat_1 @ sk_B ) )
        = ( k1_funct_1 @ sk_B @ sk_A ) ) ) ),
    inference('simplify_reflect-',[status(thm)],['52','53'])).

thf('55',plain,(
    ! [X16: $i,X17: $i] :
      ( ( X16 = k1_xboole_0 )
      | ( ( sk_C @ X17 @ X16 )
       != X17 )
      | ( X16
        = ( k1_tarski @ X17 ) ) ) ),
    inference(cnf,[status(esa)],[l44_zfmisc_1])).

thf('56',plain,(
    ! [X0: $i] :
      ( ( ( k1_funct_1 @ sk_B @ sk_A )
       != X0 )
      | ( ( k2_relat_1 @ sk_B )
        = ( k1_tarski @ X0 ) )
      | ( ( k2_relat_1 @ sk_B )
        = ( k1_tarski @ X0 ) )
      | ( ( k2_relat_1 @ sk_B )
        = k1_xboole_0 ) ) ),
    inference('sup-',[status(thm)],['54','55'])).

thf('57',plain,
    ( ( ( k2_relat_1 @ sk_B )
      = k1_xboole_0 )
    | ( ( k2_relat_1 @ sk_B )
      = ( k1_tarski @ ( k1_funct_1 @ sk_B @ sk_A ) ) ) ),
    inference(simplify,[status(thm)],['56'])).

thf('58',plain,(
    ( k2_relat_1 @ sk_B )
 != ( k1_tarski @ ( k1_funct_1 @ sk_B @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('59',plain,(
    ( k2_relat_1 @ sk_B )
 != k1_xboole_0 ),
    inference(demod,[status(thm)],['32','41'])).

thf('60',plain,(
    $false ),
    inference('simplify_reflect-',[status(thm)],['57','58','59'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.12/0.13  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.14  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.1kzzZFPd9v
% 0.13/0.35  % Computer   : n007.cluster.edu
% 0.13/0.35  % Model      : x86_64 x86_64
% 0.13/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.35  % Memory     : 8042.1875MB
% 0.13/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.35  % CPULimit   : 60
% 0.13/0.35  % DateTime   : Tue Dec  1 16:24:51 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.13/0.35  % Running portfolio for 600 s
% 0.13/0.35  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.13/0.35  % Number of cores: 8
% 0.13/0.35  % Python version: Python 3.6.8
% 0.13/0.36  % Running in FO mode
% 0.41/0.61  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.41/0.61  % Solved by: fo/fo7.sh
% 0.41/0.61  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.41/0.61  % done 221 iterations in 0.143s
% 0.41/0.61  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.41/0.61  % SZS output start Refutation
% 0.41/0.61  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.41/0.61  thf(sk_D_2_type, type, sk_D_2: $i > $i > $i).
% 0.41/0.61  thf(sk_A_type, type, sk_A: $i).
% 0.41/0.61  thf(k1_tarski_type, type, k1_tarski: $i > $i).
% 0.41/0.61  thf(k2_tarski_type, type, k2_tarski: $i > $i > $i).
% 0.41/0.61  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.41/0.61  thf(sk_B_type, type, sk_B: $i).
% 0.41/0.61  thf(v1_funct_1_type, type, v1_funct_1: $i > $o).
% 0.41/0.61  thf(k2_relat_1_type, type, k2_relat_1: $i > $i).
% 0.41/0.61  thf(sk_C_type, type, sk_C: $i > $i > $i).
% 0.41/0.61  thf(k9_relat_1_type, type, k9_relat_1: $i > $i > $i).
% 0.41/0.61  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.41/0.61  thf(k11_relat_1_type, type, k11_relat_1: $i > $i > $i).
% 0.41/0.61  thf(k1_relat_1_type, type, k1_relat_1: $i > $i).
% 0.41/0.61  thf(k1_funct_1_type, type, k1_funct_1: $i > $i > $i).
% 0.41/0.61  thf(t14_funct_1, conjecture,
% 0.41/0.61    (![A:$i,B:$i]:
% 0.41/0.61     ( ( ( v1_relat_1 @ B ) & ( v1_funct_1 @ B ) ) =>
% 0.41/0.61       ( ( ( k1_relat_1 @ B ) = ( k1_tarski @ A ) ) =>
% 0.41/0.61         ( ( k2_relat_1 @ B ) = ( k1_tarski @ ( k1_funct_1 @ B @ A ) ) ) ) ))).
% 0.41/0.61  thf(zf_stmt_0, negated_conjecture,
% 0.41/0.61    (~( ![A:$i,B:$i]:
% 0.41/0.61        ( ( ( v1_relat_1 @ B ) & ( v1_funct_1 @ B ) ) =>
% 0.41/0.61          ( ( ( k1_relat_1 @ B ) = ( k1_tarski @ A ) ) =>
% 0.41/0.61            ( ( k2_relat_1 @ B ) = ( k1_tarski @ ( k1_funct_1 @ B @ A ) ) ) ) ) )),
% 0.41/0.61    inference('cnf.neg', [status(esa)], [t14_funct_1])).
% 0.41/0.61  thf('0', plain, (((k1_relat_1 @ sk_B) = (k1_tarski @ sk_A))),
% 0.41/0.61      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.41/0.61  thf(t205_relat_1, axiom,
% 0.41/0.61    (![A:$i,B:$i]:
% 0.41/0.61     ( ( v1_relat_1 @ B ) =>
% 0.41/0.61       ( ( r2_hidden @ A @ ( k1_relat_1 @ B ) ) <=>
% 0.41/0.61         ( ( k11_relat_1 @ B @ A ) != ( k1_xboole_0 ) ) ) ))).
% 0.41/0.61  thf('1', plain,
% 0.41/0.61      (![X21 : $i, X22 : $i]:
% 0.41/0.61         (((k11_relat_1 @ X21 @ X22) = (k1_xboole_0))
% 0.41/0.61          | (r2_hidden @ X22 @ (k1_relat_1 @ X21))
% 0.41/0.61          | ~ (v1_relat_1 @ X21))),
% 0.41/0.61      inference('cnf', [status(esa)], [t205_relat_1])).
% 0.41/0.61  thf('2', plain,
% 0.41/0.61      (![X0 : $i]:
% 0.41/0.61         ((r2_hidden @ X0 @ (k1_tarski @ sk_A))
% 0.41/0.61          | ~ (v1_relat_1 @ sk_B)
% 0.41/0.61          | ((k11_relat_1 @ sk_B @ X0) = (k1_xboole_0)))),
% 0.41/0.61      inference('sup+', [status(thm)], ['0', '1'])).
% 0.41/0.61  thf('3', plain, ((v1_relat_1 @ sk_B)),
% 0.41/0.61      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.41/0.61  thf('4', plain,
% 0.41/0.61      (![X0 : $i]:
% 0.41/0.61         ((r2_hidden @ X0 @ (k1_tarski @ sk_A))
% 0.41/0.61          | ((k11_relat_1 @ sk_B @ X0) = (k1_xboole_0)))),
% 0.41/0.61      inference('demod', [status(thm)], ['2', '3'])).
% 0.41/0.61  thf(t69_enumset1, axiom,
% 0.41/0.61    (![A:$i]: ( ( k2_tarski @ A @ A ) = ( k1_tarski @ A ) ))).
% 0.41/0.61  thf('5', plain, (![X6 : $i]: ((k2_tarski @ X6 @ X6) = (k1_tarski @ X6))),
% 0.41/0.61      inference('cnf', [status(esa)], [t69_enumset1])).
% 0.41/0.61  thf(d2_tarski, axiom,
% 0.41/0.61    (![A:$i,B:$i,C:$i]:
% 0.41/0.61     ( ( ( C ) = ( k2_tarski @ A @ B ) ) <=>
% 0.41/0.61       ( ![D:$i]:
% 0.41/0.61         ( ( r2_hidden @ D @ C ) <=> ( ( ( D ) = ( A ) ) | ( ( D ) = ( B ) ) ) ) ) ))).
% 0.41/0.61  thf('6', plain,
% 0.41/0.61      (![X0 : $i, X2 : $i, X3 : $i, X4 : $i]:
% 0.41/0.61         (~ (r2_hidden @ X4 @ X2)
% 0.41/0.61          | ((X4) = (X3))
% 0.41/0.61          | ((X4) = (X0))
% 0.41/0.61          | ((X2) != (k2_tarski @ X3 @ X0)))),
% 0.41/0.61      inference('cnf', [status(esa)], [d2_tarski])).
% 0.41/0.61  thf('7', plain,
% 0.41/0.61      (![X0 : $i, X3 : $i, X4 : $i]:
% 0.41/0.61         (((X4) = (X0))
% 0.41/0.61          | ((X4) = (X3))
% 0.41/0.61          | ~ (r2_hidden @ X4 @ (k2_tarski @ X3 @ X0)))),
% 0.41/0.61      inference('simplify', [status(thm)], ['6'])).
% 0.41/0.61  thf('8', plain,
% 0.41/0.61      (![X0 : $i, X1 : $i]:
% 0.41/0.61         (~ (r2_hidden @ X1 @ (k1_tarski @ X0)) | ((X1) = (X0)) | ((X1) = (X0)))),
% 0.41/0.61      inference('sup-', [status(thm)], ['5', '7'])).
% 0.41/0.61  thf('9', plain,
% 0.41/0.61      (![X0 : $i, X1 : $i]:
% 0.41/0.61         (((X1) = (X0)) | ~ (r2_hidden @ X1 @ (k1_tarski @ X0)))),
% 0.41/0.61      inference('simplify', [status(thm)], ['8'])).
% 0.41/0.61  thf('10', plain,
% 0.41/0.61      (![X0 : $i]:
% 0.41/0.61         (((k11_relat_1 @ sk_B @ X0) = (k1_xboole_0)) | ((X0) = (sk_A)))),
% 0.41/0.61      inference('sup-', [status(thm)], ['4', '9'])).
% 0.41/0.61  thf(l44_zfmisc_1, axiom,
% 0.41/0.61    (![A:$i,B:$i]:
% 0.41/0.61     ( ~( ( ( A ) != ( k1_tarski @ B ) ) & ( ( A ) != ( k1_xboole_0 ) ) & 
% 0.41/0.61          ( ![C:$i]: ( ~( ( r2_hidden @ C @ A ) & ( ( C ) != ( B ) ) ) ) ) ) ))).
% 0.41/0.61  thf('11', plain,
% 0.41/0.61      (![X16 : $i, X17 : $i]:
% 0.41/0.61         (((X16) = (k1_xboole_0))
% 0.41/0.61          | (r2_hidden @ (sk_C @ X17 @ X16) @ X16)
% 0.41/0.61          | ((X16) = (k1_tarski @ X17)))),
% 0.41/0.61      inference('cnf', [status(esa)], [l44_zfmisc_1])).
% 0.41/0.61  thf(d5_funct_1, axiom,
% 0.41/0.61    (![A:$i]:
% 0.41/0.61     ( ( ( v1_relat_1 @ A ) & ( v1_funct_1 @ A ) ) =>
% 0.41/0.61       ( ![B:$i]:
% 0.41/0.61         ( ( ( B ) = ( k2_relat_1 @ A ) ) <=>
% 0.41/0.61           ( ![C:$i]:
% 0.41/0.61             ( ( r2_hidden @ C @ B ) <=>
% 0.41/0.61               ( ?[D:$i]:
% 0.41/0.61                 ( ( ( C ) = ( k1_funct_1 @ A @ D ) ) & 
% 0.41/0.61                   ( r2_hidden @ D @ ( k1_relat_1 @ A ) ) ) ) ) ) ) ) ))).
% 0.41/0.61  thf('12', plain,
% 0.41/0.61      (![X24 : $i, X26 : $i, X27 : $i]:
% 0.41/0.61         (((X26) != (k2_relat_1 @ X24))
% 0.41/0.61          | (r2_hidden @ (sk_D_2 @ X27 @ X24) @ (k1_relat_1 @ X24))
% 0.41/0.61          | ~ (r2_hidden @ X27 @ X26)
% 0.41/0.61          | ~ (v1_funct_1 @ X24)
% 0.41/0.61          | ~ (v1_relat_1 @ X24))),
% 0.41/0.61      inference('cnf', [status(esa)], [d5_funct_1])).
% 0.41/0.61  thf('13', plain,
% 0.41/0.61      (![X24 : $i, X27 : $i]:
% 0.41/0.61         (~ (v1_relat_1 @ X24)
% 0.41/0.61          | ~ (v1_funct_1 @ X24)
% 0.41/0.61          | ~ (r2_hidden @ X27 @ (k2_relat_1 @ X24))
% 0.41/0.61          | (r2_hidden @ (sk_D_2 @ X27 @ X24) @ (k1_relat_1 @ X24)))),
% 0.41/0.61      inference('simplify', [status(thm)], ['12'])).
% 0.41/0.61  thf('14', plain,
% 0.41/0.61      (![X0 : $i, X1 : $i]:
% 0.41/0.61         (((k2_relat_1 @ X0) = (k1_tarski @ X1))
% 0.41/0.61          | ((k2_relat_1 @ X0) = (k1_xboole_0))
% 0.41/0.61          | (r2_hidden @ (sk_D_2 @ (sk_C @ X1 @ (k2_relat_1 @ X0)) @ X0) @ 
% 0.41/0.61             (k1_relat_1 @ X0))
% 0.41/0.61          | ~ (v1_funct_1 @ X0)
% 0.41/0.61          | ~ (v1_relat_1 @ X0))),
% 0.41/0.61      inference('sup-', [status(thm)], ['11', '13'])).
% 0.41/0.61  thf('15', plain,
% 0.41/0.61      (![X21 : $i, X22 : $i]:
% 0.41/0.61         (~ (r2_hidden @ X22 @ (k1_relat_1 @ X21))
% 0.41/0.61          | ((k11_relat_1 @ X21 @ X22) != (k1_xboole_0))
% 0.41/0.61          | ~ (v1_relat_1 @ X21))),
% 0.41/0.61      inference('cnf', [status(esa)], [t205_relat_1])).
% 0.41/0.61  thf('16', plain,
% 0.41/0.61      (![X0 : $i, X1 : $i]:
% 0.41/0.61         (~ (v1_relat_1 @ X0)
% 0.41/0.61          | ~ (v1_funct_1 @ X0)
% 0.41/0.61          | ((k2_relat_1 @ X0) = (k1_xboole_0))
% 0.41/0.61          | ((k2_relat_1 @ X0) = (k1_tarski @ X1))
% 0.41/0.61          | ~ (v1_relat_1 @ X0)
% 0.41/0.61          | ((k11_relat_1 @ X0 @ 
% 0.41/0.61              (sk_D_2 @ (sk_C @ X1 @ (k2_relat_1 @ X0)) @ X0)) != (k1_xboole_0)))),
% 0.41/0.61      inference('sup-', [status(thm)], ['14', '15'])).
% 0.41/0.61  thf('17', plain,
% 0.41/0.61      (![X0 : $i, X1 : $i]:
% 0.41/0.61         (((k11_relat_1 @ X0 @ (sk_D_2 @ (sk_C @ X1 @ (k2_relat_1 @ X0)) @ X0))
% 0.41/0.61            != (k1_xboole_0))
% 0.41/0.61          | ((k2_relat_1 @ X0) = (k1_tarski @ X1))
% 0.41/0.61          | ((k2_relat_1 @ X0) = (k1_xboole_0))
% 0.41/0.61          | ~ (v1_funct_1 @ X0)
% 0.41/0.61          | ~ (v1_relat_1 @ X0))),
% 0.41/0.61      inference('simplify', [status(thm)], ['16'])).
% 0.41/0.61  thf('18', plain,
% 0.41/0.61      (![X0 : $i]:
% 0.41/0.61         (((k1_xboole_0) != (k1_xboole_0))
% 0.41/0.61          | ((sk_D_2 @ (sk_C @ X0 @ (k2_relat_1 @ sk_B)) @ sk_B) = (sk_A))
% 0.41/0.61          | ~ (v1_relat_1 @ sk_B)
% 0.41/0.61          | ~ (v1_funct_1 @ sk_B)
% 0.41/0.61          | ((k2_relat_1 @ sk_B) = (k1_xboole_0))
% 0.41/0.61          | ((k2_relat_1 @ sk_B) = (k1_tarski @ X0)))),
% 0.41/0.61      inference('sup-', [status(thm)], ['10', '17'])).
% 0.41/0.61  thf('19', plain, ((v1_relat_1 @ sk_B)),
% 0.41/0.61      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.41/0.61  thf('20', plain, ((v1_funct_1 @ sk_B)),
% 0.41/0.61      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.41/0.61  thf('21', plain,
% 0.41/0.61      (![X0 : $i]:
% 0.41/0.61         (((k1_xboole_0) != (k1_xboole_0))
% 0.41/0.61          | ((sk_D_2 @ (sk_C @ X0 @ (k2_relat_1 @ sk_B)) @ sk_B) = (sk_A))
% 0.41/0.61          | ((k2_relat_1 @ sk_B) = (k1_xboole_0))
% 0.41/0.61          | ((k2_relat_1 @ sk_B) = (k1_tarski @ X0)))),
% 0.41/0.61      inference('demod', [status(thm)], ['18', '19', '20'])).
% 0.41/0.61  thf('22', plain,
% 0.41/0.61      (![X0 : $i]:
% 0.41/0.61         (((k2_relat_1 @ sk_B) = (k1_tarski @ X0))
% 0.41/0.61          | ((k2_relat_1 @ sk_B) = (k1_xboole_0))
% 0.41/0.61          | ((sk_D_2 @ (sk_C @ X0 @ (k2_relat_1 @ sk_B)) @ sk_B) = (sk_A)))),
% 0.41/0.61      inference('simplify', [status(thm)], ['21'])).
% 0.41/0.61  thf('23', plain, (![X6 : $i]: ((k2_tarski @ X6 @ X6) = (k1_tarski @ X6))),
% 0.41/0.61      inference('cnf', [status(esa)], [t69_enumset1])).
% 0.41/0.61  thf('24', plain,
% 0.41/0.61      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 0.41/0.61         (((X1) != (X0))
% 0.41/0.61          | (r2_hidden @ X1 @ X2)
% 0.41/0.61          | ((X2) != (k2_tarski @ X3 @ X0)))),
% 0.41/0.61      inference('cnf', [status(esa)], [d2_tarski])).
% 0.41/0.61  thf('25', plain,
% 0.41/0.61      (![X0 : $i, X3 : $i]: (r2_hidden @ X0 @ (k2_tarski @ X3 @ X0))),
% 0.41/0.61      inference('simplify', [status(thm)], ['24'])).
% 0.41/0.61  thf('26', plain, (![X0 : $i]: (r2_hidden @ X0 @ (k1_tarski @ X0))),
% 0.41/0.61      inference('sup+', [status(thm)], ['23', '25'])).
% 0.41/0.61  thf('27', plain, (((k1_relat_1 @ sk_B) = (k1_tarski @ sk_A))),
% 0.41/0.61      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.41/0.61  thf('28', plain,
% 0.41/0.61      (![X21 : $i, X22 : $i]:
% 0.41/0.61         (~ (r2_hidden @ X22 @ (k1_relat_1 @ X21))
% 0.41/0.61          | ((k11_relat_1 @ X21 @ X22) != (k1_xboole_0))
% 0.41/0.61          | ~ (v1_relat_1 @ X21))),
% 0.41/0.61      inference('cnf', [status(esa)], [t205_relat_1])).
% 0.41/0.61  thf('29', plain,
% 0.41/0.61      (![X0 : $i]:
% 0.41/0.61         (~ (r2_hidden @ X0 @ (k1_tarski @ sk_A))
% 0.41/0.61          | ~ (v1_relat_1 @ sk_B)
% 0.41/0.61          | ((k11_relat_1 @ sk_B @ X0) != (k1_xboole_0)))),
% 0.41/0.61      inference('sup-', [status(thm)], ['27', '28'])).
% 0.41/0.61  thf('30', plain, ((v1_relat_1 @ sk_B)),
% 0.41/0.61      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.41/0.61  thf('31', plain,
% 0.41/0.61      (![X0 : $i]:
% 0.41/0.61         (~ (r2_hidden @ X0 @ (k1_tarski @ sk_A))
% 0.41/0.61          | ((k11_relat_1 @ sk_B @ X0) != (k1_xboole_0)))),
% 0.41/0.61      inference('demod', [status(thm)], ['29', '30'])).
% 0.41/0.61  thf('32', plain, (((k11_relat_1 @ sk_B @ sk_A) != (k1_xboole_0))),
% 0.41/0.61      inference('sup-', [status(thm)], ['26', '31'])).
% 0.41/0.61  thf('33', plain, (((k1_relat_1 @ sk_B) = (k1_tarski @ sk_A))),
% 0.41/0.61      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.41/0.61  thf(t146_relat_1, axiom,
% 0.41/0.61    (![A:$i]:
% 0.41/0.61     ( ( v1_relat_1 @ A ) =>
% 0.41/0.61       ( ( k9_relat_1 @ A @ ( k1_relat_1 @ A ) ) = ( k2_relat_1 @ A ) ) ))).
% 0.41/0.61  thf('34', plain,
% 0.41/0.61      (![X20 : $i]:
% 0.41/0.61         (((k9_relat_1 @ X20 @ (k1_relat_1 @ X20)) = (k2_relat_1 @ X20))
% 0.41/0.61          | ~ (v1_relat_1 @ X20))),
% 0.41/0.61      inference('cnf', [status(esa)], [t146_relat_1])).
% 0.41/0.61  thf('35', plain,
% 0.41/0.61      ((((k9_relat_1 @ sk_B @ (k1_tarski @ sk_A)) = (k2_relat_1 @ sk_B))
% 0.41/0.61        | ~ (v1_relat_1 @ sk_B))),
% 0.41/0.61      inference('sup+', [status(thm)], ['33', '34'])).
% 0.41/0.61  thf('36', plain, ((v1_relat_1 @ sk_B)),
% 0.41/0.61      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.41/0.61  thf('37', plain,
% 0.41/0.61      (((k9_relat_1 @ sk_B @ (k1_tarski @ sk_A)) = (k2_relat_1 @ sk_B))),
% 0.41/0.61      inference('demod', [status(thm)], ['35', '36'])).
% 0.41/0.61  thf(d16_relat_1, axiom,
% 0.41/0.61    (![A:$i]:
% 0.41/0.61     ( ( v1_relat_1 @ A ) =>
% 0.41/0.61       ( ![B:$i]:
% 0.41/0.61         ( ( k11_relat_1 @ A @ B ) = ( k9_relat_1 @ A @ ( k1_tarski @ B ) ) ) ) ))).
% 0.41/0.61  thf('38', plain,
% 0.41/0.61      (![X18 : $i, X19 : $i]:
% 0.41/0.61         (((k11_relat_1 @ X18 @ X19) = (k9_relat_1 @ X18 @ (k1_tarski @ X19)))
% 0.41/0.61          | ~ (v1_relat_1 @ X18))),
% 0.41/0.61      inference('cnf', [status(esa)], [d16_relat_1])).
% 0.41/0.61  thf('39', plain,
% 0.41/0.61      ((((k11_relat_1 @ sk_B @ sk_A) = (k2_relat_1 @ sk_B))
% 0.41/0.61        | ~ (v1_relat_1 @ sk_B))),
% 0.41/0.61      inference('sup+', [status(thm)], ['37', '38'])).
% 0.41/0.61  thf('40', plain, ((v1_relat_1 @ sk_B)),
% 0.41/0.61      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.41/0.61  thf('41', plain, (((k11_relat_1 @ sk_B @ sk_A) = (k2_relat_1 @ sk_B))),
% 0.41/0.61      inference('demod', [status(thm)], ['39', '40'])).
% 0.41/0.61  thf('42', plain, (((k2_relat_1 @ sk_B) != (k1_xboole_0))),
% 0.41/0.61      inference('demod', [status(thm)], ['32', '41'])).
% 0.41/0.61  thf('43', plain,
% 0.41/0.61      (![X0 : $i]:
% 0.41/0.61         (((k2_relat_1 @ sk_B) = (k1_tarski @ X0))
% 0.41/0.61          | ((sk_D_2 @ (sk_C @ X0 @ (k2_relat_1 @ sk_B)) @ sk_B) = (sk_A)))),
% 0.41/0.61      inference('simplify_reflect-', [status(thm)], ['22', '42'])).
% 0.41/0.61  thf('44', plain,
% 0.41/0.61      (![X16 : $i, X17 : $i]:
% 0.41/0.61         (((X16) = (k1_xboole_0))
% 0.41/0.61          | (r2_hidden @ (sk_C @ X17 @ X16) @ X16)
% 0.41/0.61          | ((X16) = (k1_tarski @ X17)))),
% 0.41/0.61      inference('cnf', [status(esa)], [l44_zfmisc_1])).
% 0.41/0.61  thf('45', plain,
% 0.41/0.61      (![X24 : $i, X26 : $i, X27 : $i]:
% 0.41/0.61         (((X26) != (k2_relat_1 @ X24))
% 0.41/0.61          | ((X27) = (k1_funct_1 @ X24 @ (sk_D_2 @ X27 @ X24)))
% 0.41/0.61          | ~ (r2_hidden @ X27 @ X26)
% 0.41/0.61          | ~ (v1_funct_1 @ X24)
% 0.41/0.61          | ~ (v1_relat_1 @ X24))),
% 0.41/0.61      inference('cnf', [status(esa)], [d5_funct_1])).
% 0.41/0.61  thf('46', plain,
% 0.41/0.61      (![X24 : $i, X27 : $i]:
% 0.41/0.61         (~ (v1_relat_1 @ X24)
% 0.41/0.61          | ~ (v1_funct_1 @ X24)
% 0.41/0.61          | ~ (r2_hidden @ X27 @ (k2_relat_1 @ X24))
% 0.41/0.61          | ((X27) = (k1_funct_1 @ X24 @ (sk_D_2 @ X27 @ X24))))),
% 0.41/0.61      inference('simplify', [status(thm)], ['45'])).
% 0.41/0.61  thf('47', plain,
% 0.41/0.61      (![X0 : $i, X1 : $i]:
% 0.41/0.61         (((k2_relat_1 @ X0) = (k1_tarski @ X1))
% 0.41/0.61          | ((k2_relat_1 @ X0) = (k1_xboole_0))
% 0.41/0.61          | ((sk_C @ X1 @ (k2_relat_1 @ X0))
% 0.41/0.61              = (k1_funct_1 @ X0 @ 
% 0.41/0.61                 (sk_D_2 @ (sk_C @ X1 @ (k2_relat_1 @ X0)) @ X0)))
% 0.41/0.61          | ~ (v1_funct_1 @ X0)
% 0.41/0.61          | ~ (v1_relat_1 @ X0))),
% 0.41/0.61      inference('sup-', [status(thm)], ['44', '46'])).
% 0.41/0.61  thf('48', plain,
% 0.41/0.61      (![X0 : $i]:
% 0.41/0.61         (((sk_C @ X0 @ (k2_relat_1 @ sk_B)) = (k1_funct_1 @ sk_B @ sk_A))
% 0.41/0.61          | ((k2_relat_1 @ sk_B) = (k1_tarski @ X0))
% 0.41/0.61          | ~ (v1_relat_1 @ sk_B)
% 0.41/0.61          | ~ (v1_funct_1 @ sk_B)
% 0.41/0.61          | ((k2_relat_1 @ sk_B) = (k1_xboole_0))
% 0.41/0.61          | ((k2_relat_1 @ sk_B) = (k1_tarski @ X0)))),
% 0.41/0.61      inference('sup+', [status(thm)], ['43', '47'])).
% 0.41/0.61  thf('49', plain, ((v1_relat_1 @ sk_B)),
% 0.41/0.61      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.41/0.61  thf('50', plain, ((v1_funct_1 @ sk_B)),
% 0.41/0.61      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.41/0.61  thf('51', plain,
% 0.41/0.61      (![X0 : $i]:
% 0.41/0.61         (((sk_C @ X0 @ (k2_relat_1 @ sk_B)) = (k1_funct_1 @ sk_B @ sk_A))
% 0.41/0.61          | ((k2_relat_1 @ sk_B) = (k1_tarski @ X0))
% 0.41/0.61          | ((k2_relat_1 @ sk_B) = (k1_xboole_0))
% 0.41/0.61          | ((k2_relat_1 @ sk_B) = (k1_tarski @ X0)))),
% 0.41/0.61      inference('demod', [status(thm)], ['48', '49', '50'])).
% 0.41/0.61  thf('52', plain,
% 0.41/0.61      (![X0 : $i]:
% 0.41/0.61         (((k2_relat_1 @ sk_B) = (k1_xboole_0))
% 0.41/0.61          | ((k2_relat_1 @ sk_B) = (k1_tarski @ X0))
% 0.41/0.61          | ((sk_C @ X0 @ (k2_relat_1 @ sk_B)) = (k1_funct_1 @ sk_B @ sk_A)))),
% 0.41/0.61      inference('simplify', [status(thm)], ['51'])).
% 0.41/0.61  thf('53', plain, (((k2_relat_1 @ sk_B) != (k1_xboole_0))),
% 0.41/0.61      inference('demod', [status(thm)], ['32', '41'])).
% 0.41/0.61  thf('54', plain,
% 0.41/0.61      (![X0 : $i]:
% 0.41/0.61         (((k2_relat_1 @ sk_B) = (k1_tarski @ X0))
% 0.41/0.61          | ((sk_C @ X0 @ (k2_relat_1 @ sk_B)) = (k1_funct_1 @ sk_B @ sk_A)))),
% 0.41/0.61      inference('simplify_reflect-', [status(thm)], ['52', '53'])).
% 0.41/0.61  thf('55', plain,
% 0.41/0.61      (![X16 : $i, X17 : $i]:
% 0.41/0.61         (((X16) = (k1_xboole_0))
% 0.41/0.61          | ((sk_C @ X17 @ X16) != (X17))
% 0.41/0.61          | ((X16) = (k1_tarski @ X17)))),
% 0.41/0.61      inference('cnf', [status(esa)], [l44_zfmisc_1])).
% 0.41/0.61  thf('56', plain,
% 0.41/0.61      (![X0 : $i]:
% 0.41/0.61         (((k1_funct_1 @ sk_B @ sk_A) != (X0))
% 0.41/0.61          | ((k2_relat_1 @ sk_B) = (k1_tarski @ X0))
% 0.41/0.61          | ((k2_relat_1 @ sk_B) = (k1_tarski @ X0))
% 0.41/0.61          | ((k2_relat_1 @ sk_B) = (k1_xboole_0)))),
% 0.41/0.61      inference('sup-', [status(thm)], ['54', '55'])).
% 0.41/0.61  thf('57', plain,
% 0.41/0.61      ((((k2_relat_1 @ sk_B) = (k1_xboole_0))
% 0.41/0.61        | ((k2_relat_1 @ sk_B) = (k1_tarski @ (k1_funct_1 @ sk_B @ sk_A))))),
% 0.41/0.61      inference('simplify', [status(thm)], ['56'])).
% 0.41/0.61  thf('58', plain,
% 0.41/0.61      (((k2_relat_1 @ sk_B) != (k1_tarski @ (k1_funct_1 @ sk_B @ sk_A)))),
% 0.41/0.61      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.41/0.61  thf('59', plain, (((k2_relat_1 @ sk_B) != (k1_xboole_0))),
% 0.41/0.61      inference('demod', [status(thm)], ['32', '41'])).
% 0.41/0.61  thf('60', plain, ($false),
% 0.41/0.61      inference('simplify_reflect-', [status(thm)], ['57', '58', '59'])).
% 0.41/0.61  
% 0.41/0.61  % SZS output end Refutation
% 0.41/0.61  
% 0.41/0.62  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
