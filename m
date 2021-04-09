Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0203D359DE9
	for <lists+openipmi-developer@lfdr.de>; Fri,  9 Apr 2021 13:50:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lUpeH-0006BB-Eq; Fri, 09 Apr 2021 11:50:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <arnd@kernel.org>) id 1lUm0f-0004cj-LG
 for openipmi-developer@lists.sourceforge.net; Fri, 09 Apr 2021 07:56:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kC1gyjjvixHuC10GjKYmtYDSPw2FrhbzPlolo7/gxTY=; b=AzuDas5pgF3jBT+WvrpLuHCKJO
 PoVNw8+lgG7FnevsWup2hTYx4peIpc8Da045YhtqkRAXx5zkRvcAH6FekkaNWxT5TW3uNVn91Cfa2
 t4KXwFGhJXuPD0ZjNQmgIGrS4GivrGhdXCPOMOFSAZG3Y6g86zYLxMV0c6FwKP6183Os=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kC1gyjjvixHuC10GjKYmtYDSPw2FrhbzPlolo7/gxTY=; b=m5DNf7gbPn8cr/HSZMdV88IZSm
 96eUUhVL155ksbC4vopTCNBdrqukCzUGA8R/JyDSPiJMfE4R+dNRl63K7p4E+iMRgSrZ1SenFkEp+
 IBJRgKfO2HTg9g5vLiUcpG65XW9evrRusmnHEjt6cv47xivvxGMdMb6sWHGKg77D6UEs=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lUm07-0008R6-AX
 for openipmi-developer@lists.sourceforge.net; Fri, 09 Apr 2021 07:56:49 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id AC17C611C2
 for <openipmi-developer@lists.sourceforge.net>;
 Fri,  9 Apr 2021 07:56:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1617954970;
 bh=g5uN6Pl+84n19Wf10nEdkopoOYV20QI0EjR4ZGbc7jw=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=u2BbVFCGWc0iS4ph2dc5d1nDl187zG5P9pXL1Cm6UOvWXL3L0dBEsKrg9/h1POc19
 h1WrlG2N5RR70AfSyZdWdMlRfjSGxKElfDb2SekhNnbfeKF4rnj6bxkOif0Ar50QQN
 L8FOwMyG1mXV7kTv/r2whQZMJUOhdTOYVDxPMGm6ArRqHL3EPwgc0LK+44RK7rTaEo
 QtrxjBMbCvXDQloY7nyKYEsuVDzznNlhD0KJKBz6g7AEXPQ+O+gkf4K5ostmrJzQXT
 Ao9W8Dtp2lp0FyPZk/qIJzxaOuEHjUxNrPcTk6TwRCsXKnPbtf7wW4aI220hiiVUBS
 iOtE6CzaWBe6Q==
Received: by mail-ot1-f46.google.com with SMTP id
 s16-20020a0568301490b02901b83efc84a0so4851911otq.10
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 09 Apr 2021 00:56:10 -0700 (PDT)
X-Gm-Message-State: AOAM5327DngWb22zRUCsxbC8xQE7POrTSW9DeX+SJ9hGwzukfODooCie
 DevH5TCticlqz+2nMV/lU4BoDynOzSXmb6HXAhI=
X-Google-Smtp-Source: ABdhPJyqkLL/YHm17TDMQcZw+JH1/6IOKmDcxX4k29Ovd57mDpReYbYM6BJUI+r5hcy0H4zXnuBQh0qM5jt0HH/0Mc4=
X-Received: by 2002:a05:6830:148c:: with SMTP id
 s12mr11539093otq.251.1617954970003; 
 Fri, 09 Apr 2021 00:56:10 -0700 (PDT)
MIME-Version: 1.0
References: <20210319062752.145730-1-andrew@aj.id.au>
 <20210319062752.145730-16-andrew@aj.id.au>
In-Reply-To: <20210319062752.145730-16-andrew@aj.id.au>
From: Arnd Bergmann <arnd@kernel.org>
Date: Fri, 9 Apr 2021 09:55:53 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1HDQdbTAT4aRMLu-VFz720ynPqPHG5b22NZ5p5QfUqOw@mail.gmail.com>
Message-ID: <CAK8P3a1HDQdbTAT4aRMLu-VFz720ynPqPHG5b22NZ5p5QfUqOw@mail.gmail.com>
To: Andrew Jeffery <andrew@aj.id.au>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lUm07-0008R6-AX
X-Mailman-Approved-At: Fri, 09 Apr 2021 11:50:03 +0000
Subject: Re: [Openipmi-developer] [PATCH v2 16/21] ipmi: kcs_bmc: Add a
 "raw" character device interface
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 DTML <devicetree@vger.kernel.org>, chiawei_wang@aspeedtech.com,
 Ryan Chen <ryan_chen@aspeedtech.com>, Tomer Maimon <tmaimon77@gmail.com>,
 Corey Minyard <minyard@acm.org>, Avi Fishman <avifishman70@gmail.com>,
 Patrick Venture <venture@google.com>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Tali Perry <tali.perry1@gmail.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, openipmi-developer@lists.sourceforge.net,
 Lee Jones <lee.jones@linaro.org>, Linus Walleij <linus.walleij@linaro.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 Benjamin Fair <benjaminfair@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, Mar 19, 2021 at 7:31 AM Andrew Jeffery <andrew@aj.id.au> wrote:
>
> The existing IPMI chardev encodes IPMI behaviours as the name suggests.
> However, KCS devices are useful beyond IPMI (or keyboards), as they
> provide a means to generate IRQs and exchange arbitrary data between a
> BMC and its host system.

I only noticed the series after Joel asked about the DT changes on the arm
side. One question though:

How does this related to the drivers/input/serio/ framework that also talks
to the keyboard controller for things that are not keyboards? Are these
separate communication channels on adjacent I/O ports, or does there
need to be some arbitration?

       Arnd


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
