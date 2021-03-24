Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E5A30347AE2
	for <lists+openipmi-developer@lfdr.de>; Wed, 24 Mar 2021 15:38:29 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lP4eQ-00027x-EN; Wed, 24 Mar 2021 14:38:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <mnshsnghl@gmail.com>) id 1lP4eP-00027f-8v
 for openipmi-developer@lists.sourceforge.net; Wed, 24 Mar 2021 14:38:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=d2cHPXpHebONiqpo3ptAMNwodEN6sM3X9D25GdhyJdQ=; b=RhH8d06sJM5JHuANlxrcRKU60b
 6ig4e7rUjExYTNRktxd/XaJybsC+rUEBdgWVShSChOrKAxYiccDfEisVNb0YMgERqrrK8lNnklcTL
 cC2OvviOygEdIFOZPk7N3c61r6P/p75e9lMp80vBwyR0YMOZwmRvEvHiuLsetuYintCA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=d2cHPXpHebONiqpo3ptAMNwodEN6sM3X9D25GdhyJdQ=; b=R
 0ag+3eUQNdO2nqH/ldWZLNiOKt9swZGWNppdlfG+RDOFZkmSleAOtmV1UvrHdKFyZ3my4LY9EXrpO
 2P+fvUmJ3CCEMBnXrUBpwuxxUNNGg+JYX0xV68Mole3ePswLu1hS7jKe7iV/bUQZAz2e+9bp5x11Q
 tYG7CmEA08dLN+Ps=;
Received: from mail-qv1-f42.google.com ([209.85.219.42])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1lP4eM-005kC9-H9
 for openipmi-developer@lists.sourceforge.net; Wed, 24 Mar 2021 14:38:25 +0000
Received: by mail-qv1-f42.google.com with SMTP id x27so12369526qvd.2
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 24 Mar 2021 07:38:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=d2cHPXpHebONiqpo3ptAMNwodEN6sM3X9D25GdhyJdQ=;
 b=robNOwE1/NN3cROVZStX6ruhmatp9xy+1YfwL8FWiryrRbxi3Vjhu23l/v6ZTifK/6
 gqAETpTU+La/gAxWFsed9pOt+xExgK74DmmAabRDoCM6E6WyHLEkCCe+/7yxi1LbOX5l
 amo8lR2NxAhdavgoy/idp/1aAf+LbkFvivQJEn7t8l6bFivS7Ro7A3Cl9JLPAbiZzLc9
 YKsyZcyx4nV5CPX2m5zW+Lq6ECBA5+XfjO1oWsKIDQ2F4+YFTjdW02wrXYACH9Dx2Hj2
 lLkA24JVsrsnnuem43GH2M39w0CuDUO/Ty2nA0jHC1ZThY388VpUBWT0nNVB2kBv0OQb
 7hWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=d2cHPXpHebONiqpo3ptAMNwodEN6sM3X9D25GdhyJdQ=;
 b=RxU+r9zZGdeoxAkjAq4o1jxn65EglpELJqmGr1U+9mZTROCSgaMBbc/YT51G3ufYcH
 N/un9f5hWdJ1IPkI0KT/4BztjusD5wVwxW5eKJvhgdDIzlVmfVpiIAStl3nLgahrv61Y
 Dwk7oznqF4Xc1YiQBftPAhK/uczByY8xnoVKBcbH/IZnnzd2UDBr6wQh3d+7Lzc1wHn3
 THXWDv3ar171PtQTlq7zxdDd7KQCi/9hdFaY1rPNMfJB/u23YOm3V+oujlMeLarPYn0D
 vU+11LW/igIcaFp7OfCnYDC3bAbpB2pvmLytSyoFROPnJYkJXNAOo+5tVgqGiqRgK4If
 XXOQ==
X-Gm-Message-State: AOAM533TjfOhWi8NNJMrPCqksxo0wmNv4Z1JEGU+0QaiboPvqZT/byRV
 wXuu/RlEfyVj9ZXr30tRU6gOMUnMTPFQhBjPIiJS7czB5jufa+/y
X-Google-Smtp-Source: ABdhPJzTZL2Nu4rNvN0bzQYo801FFw7YTdrsmdYhMK6miif9CGXPNWSUYChZAcsmFHOi0JG0OdhgT0YhfXdfv+pa6sI=
X-Received: by 2002:a0c:9ad7:: with SMTP id k23mr3243118qvf.52.1616596696371; 
 Wed, 24 Mar 2021 07:38:16 -0700 (PDT)
MIME-Version: 1.0
From: Maneesh Singhal <mnshsnghl@gmail.com>
Date: Wed, 24 Mar 2021 20:08:05 +0530
Message-ID: <CAMp8WcrSvfm8445aGnE5AJ+qPB7OQB+PUL5ugCDfcvD6m=jBBg@mail.gmail.com>
To: openipmi-developer@lists.sourceforge.net
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (mnshsnghl[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.219.42 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.42 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lP4eM-005kC9-H9
Subject: [Openipmi-developer] Getting 16777411 (Timeout) error from IPMI code
X-BeenThere: openipmi-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Developer list of OpenIPMI library and Linux driver
 <openipmi-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=openipmi-developer>
List-Post: <mailto:openipmi-developer@lists.sourceforge.net>
List-Help: <mailto:openipmi-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2189915759107294487=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

--===============2189915759107294487==
Content-Type: multipart/alternative; boundary="000000000000d513ae05be493fa8"

--000000000000d513ae05be493fa8
Content-Type: text/plain; charset="UTF-8"

Hello Team

We built our code based on ipmicmd.c (The ipmi specifics are all same). The
commands that we are using are Power On (0x01) and Power Off (0x00) and we
are facing 16777411 error which I believe is timeout error.
I tried debugging it through, but no success how and where I am getting
timeout. Moreover, I rebooted the host multiple times, and still the
problem persists.
The problem is similar to someone mentioned in -
https://sourceforge.net/p/openipmi/mailman/message/6772361/
just that in my case I am trying it for different commands.

Interesting part is it was all working fine, and suddenly started
complaining. I would like to understand what has gone wrong, and also is
there any flag got set which is causing this timeout issue.
An early response will be very helpful.

Thanks

--000000000000d513ae05be493fa8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Team<div><br></div><div>We built our code based on i=
pmicmd.c (The ipmi specifics are all same). The commands that we are using =
are Power On (0x01) and Power Off (0x00) and we are facing 16777411 error w=
hich I believe is timeout error.=C2=A0</div><div>I tried debugging it throu=
gh, but no success how and where I am getting timeout. Moreover, I rebooted=
 the host multiple times, and still the problem persists.=C2=A0</div><div>T=
he problem is similar to someone mentioned in -</div><div><a href=3D"https:=
//sourceforge.net/p/openipmi/mailman/message/6772361/">https://sourceforge.=
net/p/openipmi/mailman/message/6772361/</a><br></div><div>just that in my c=
ase I am trying it for different commands.=C2=A0</div><div><br></div><div>I=
nteresting part is it was all working fine, and suddenly started complainin=
g. I would like to understand what has gone wrong, and also is there any fl=
ag got set which is causing this timeout issue.=C2=A0</div><div>An early re=
sponse will be very helpful.</div><div><br></div><div>Thanks</div></div>

--000000000000d513ae05be493fa8--


--===============2189915759107294487==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============2189915759107294487==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============2189915759107294487==--

