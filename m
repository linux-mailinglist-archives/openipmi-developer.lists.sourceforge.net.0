Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 172507C574
	for <lists+openipmi-developer@lfdr.de>; Wed, 31 Jul 2019 17:00:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1hsq65-0000sZ-6M; Wed, 31 Jul 2019 15:00:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1hsq63-0000sN-Un
 for openipmi-developer@lists.sourceforge.net; Wed, 31 Jul 2019 15:00:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ps9PpaSBIXq7Ne9E/d4KaHrc8XM/iSj4meBqG2KoY1I=; b=GDB+8ok6LBuigeGawocH/26ZFr
 c8t0NSZ95HXJOypIdhcavX1N/MnHT/TyDdZ4MXgHuR43YI8MU86cJyniwrr79hw/PnZ+Ukfk4r6lp
 msnpWlzuPChczfrQ2DuzQZLxFxfrOYuZH93RD7h5BSU4chMsn8EvQViMB+Y4qrnyrPpo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Reply-To:Message-ID:Subject:Cc:To:From:Date:
 Sender:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Ps9PpaSBIXq7Ne9E/d4KaHrc8XM/iSj4meBqG2KoY1I=; b=m
 rsQzObr1IAzCxqhXkzU+N8to/+nY//4aeqKDCy4nZVHud4uJIt5casdx5RVVtKP2TKmYRr3sPU0kP
 ypXM84Hu32MIJpN8zbmlWHbkP/HiXQLgUz5APthysw+on0xDvo+vWxTCsOHZFsX3gX/S5CoGkjpM8
 MmSHYT6jc8FWLv+0=;
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hsq62-005Meq-HN
 for openipmi-developer@lists.sourceforge.net; Wed, 31 Jul 2019 15:00:55 +0000
Received: by mail-ot1-f67.google.com with SMTP id l15so70484181otn.9
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 31 Jul 2019 08:00:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:mime-version
 :content-disposition:user-agent;
 bh=Ps9PpaSBIXq7Ne9E/d4KaHrc8XM/iSj4meBqG2KoY1I=;
 b=pC9hx7AHwKxWSDeiwxkq4gwqFcrs1NirWZa0eTpXuOngP+6AhmJ+xX6tzgJ2ujDo40
 8RU6/zZA/xhpEE6KJ8PuKci/KlfYs4yQrK8Mf3ycmM4mHP17fT67y6jCFDYUC31iXTwD
 YbkP2Fa0i9YY379Ot5ZUPwR7iMJReIQ+eK/HQ7X0HjMWV5WSqRFP2YiIo37WfM6vTbU6
 h95msVloAP3Nt/VYZHASJsVIMpd5SBtvq3NTTqaKwuf5kVFlTfYrANyDUjEvFRxocZeO
 1N4uWec5q8nODJTwNuoHnzIhy1QcM70UZM9kauci6W0hYXq4U3sfzsCoo1w28mIUIfB6
 f9aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:mime-version:content-disposition:user-agent;
 bh=Ps9PpaSBIXq7Ne9E/d4KaHrc8XM/iSj4meBqG2KoY1I=;
 b=UUVqUdMqFBoKb5wPCSqAO5z+Fd0gn5q7I3wiG0cFtsyrbvxm4ivGoUmXShjNMJ8vps
 pBrnuLXJgp1LHvdsGdJVBv5dchrY6XhqSouMXSFqR8trNiXbrjOVHRJuR7fxOZMi5ujN
 RujlyuAS+VPKzEUZQ6WI2BHZIOTA2RLkaKgZoYw5jBfB16DpVlBI22GO9KhVDuDjRLRn
 R5+GtAOBz/M45yBIn9ygpMHJbhsdnCEKH1cQkO2c7egPZpa01rjgztXrqsVz/z2KDhC1
 ydrw0n3a4bhJovJ2Q8vh2kjeRSyE/jXsf4+RbjMUYJyU0GkUDsFkye7fyfqae7j98uAo
 g/SA==
X-Gm-Message-State: APjAAAWJFastW4WaWch3D1OdYW4c0Z5k4rBp6jRgvPbNfIBb7UpjEgLq
 1MJ72ToZoUIz7lAsqTq0Jw==
X-Google-Smtp-Source: APXvYqw/Jh5IF7kfPSNLapJLn1m2Wst4sJnrhOAENuq/iPtlYO3+8t9V35oUUVXbIRFrJM4Khtyl5w==
X-Received: by 2002:a9d:618a:: with SMTP id g10mr21452912otk.217.1564585248491; 
 Wed, 31 Jul 2019 08:00:48 -0700 (PDT)
Received: from serve.minyard.net ([47.184.134.43])
 by smtp.gmail.com with ESMTPSA id b2sm23363929otf.48.2019.07.31.08.00.47
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 31 Jul 2019 08:00:47 -0700 (PDT)
Received: from minyard.net (unknown [IPv6:2001:470:b8f6:1b:e83a:d1d4:543d:69b])
 by serve.minyard.net (Postfix) with ESMTPSA id 67711180039;
 Wed, 31 Jul 2019 15:00:47 +0000 (UTC)
Date: Wed, 31 Jul 2019 10:00:46 -0500
From: Corey Minyard <minyard@acm.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20190731150046.GB5001@minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1hsq62-005Meq-HN
Subject: [Openipmi-developer] [GIT PULL] More IPMI bug fixes for 5.3
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
Reply-To: minyard@acm.org
Cc: openipmi-developer@lists.sourceforge.net,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Keep Geert from nagging me :-)

The following changes since commit fec88ab0af9706b2201e5daf377c5031c62d11f7:

  Merge tag 'for-linus-hmm' of git://git.kernel.org/pub/scm/linux/kernel/git/rdma/rdma (2019-07-14 19:42:11 -0700)

are available in the Git repository at:

  https://github.com/cminyard/linux-ipmi.git tags/for-linus-5.3-2

for you to fetch changes up to 71be7b0e7d4069822c89146daed800686db8f147:

  Fix uninitialized variable in ipmb_dev_int.c (2019-07-24 15:53:21 -0500)

----------------------------------------------------------------
One necessary fix for an uninitialized variable in the new IPMB driver.
Nothing else has come in besides things that need to wait until later.

----------------------------------------------------------------
Asmaa Mnebhi (1):
      Fix uninitialized variable in ipmb_dev_int.c

 drivers/char/ipmi/ipmb_dev_int.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
