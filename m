Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BCBF411682
	for <lists+openipmi-developer@lfdr.de>; Mon, 20 Sep 2021 16:12:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mSK2O-0006w2-Cp; Mon, 20 Sep 2021 14:12:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <glance@acc.umu.se>) id 1mSK2M-0006vl-VZ
 for openipmi-developer@lists.sourceforge.net; Mon, 20 Sep 2021 14:12:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=T4AqtI0p6J+NCy7IAJsD1e2wJes2cH3T8LeBxihUYtk=; b=Z79UrlE3cATmDautBV44JikMvH
 /XZZHtqoTOddnkg2cbhjBwq8aluYF4q9U9SnQ8l3XSKeftUlpyeT0+sJok7I++uXUu9AtqdEeBWIP
 PPqit31f8CVLjzEokDBNwwePXW4cpguazIn68kGs8adSYEU85FLFYEXK3TGkacKtvBYo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=T4AqtI0p6J+NCy7IAJsD1e2wJes2cH3T8LeBxihUYtk=; b=Qj9q+uKDcPNfi66Y8FSQRrwyNv
 fVDr8cy9AkztCfLs2DHRidhJ48ykf5L3dUoky8yBYL8sOZ5rsrIxQV+m7VD+AVJlSLzyuvbGkyhfk
 9KqxedPGbK34ADVLLVKO4NEJO1qBR05vOrcYKYJW8Wc10pl7jNOFWqc3H3hgCU3LE4DI=;
Received: from [130.239.18.156] (helo=mail.acc.umu.se)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mSK2I-00033E-U8
 for openipmi-developer@lists.sourceforge.net; Mon, 20 Sep 2021 14:12:50 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by amavisd-new (Postfix) with ESMTP id 10E6144B91;
 Mon, 20 Sep 2021 16:12:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=acc.umu.se; s=mail1;
 t=1632147152; bh=yR5l/oUZjaR0mgSFYnnmAeCKkRwVCyA2exwEIo5ycR8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=u9O1o2XAJJQn4QNkyyqzFCn6qre0apqDfGqKC2eWjD9IosukH0WT6Vvu0HDOAEvY3
 k5Yg85mWIwKheFgi/6+LYvIdL7stSHPOebMB+NW4qjEFWScWqK+kpCA/RUb0jz5L4D
 Xtl1cLDr22BIJ3Chsm8HSbtDKnn1TqgprUB1xAuje89WIdRatZRYn2oQ4yhUavHyce
 46sZy1Ed3xdocUW0aJD/mdXdmPN/3ZgpgcivRmnmCnen0VDh/YpO761zoRJfPRnKiQ
 s/5k2Lr5clMeWz40Vf1RJ0pUUPLAK7uReKRYLR+WfKdMLUBcDi5FyqUBe7WoA+HxhX
 vrtS3sFyFYzHg==
Received: by mail.acc.umu.se (Postfix, from userid 24471)
 id 9934A44B92; Mon, 20 Sep 2021 16:12:31 +0200 (CEST)
Date: Mon, 20 Sep 2021 16:12:31 +0200
From: Anton Lundin <glance@acc.umu.se>
To: Corey Minyard <minyard@acm.org>
Message-ID: <20210920141231.GH108031@montezuma.acc.umu.se>
References: <20210916145300.GD108031@montezuma.acc.umu.se>
 <20210916163945.GY545073@minyard.net>
 <20210917101419.GE108031@montezuma.acc.umu.se>
 <20210917120758.GA545073@minyard.net>
 <20210917125525.GF108031@montezuma.acc.umu.se>
 <20210917131916.GB545073@minyard.net>
 <20210917132648.GG108031@montezuma.acc.umu.se>
 <20210920113802.GC545073@minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210920113802.GC545073@minyard.net>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: -1.1 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 20 September, 2021 - Corey Minyard wrote: > Well, that
 was dumb. Fix follows... > > Thanks for working on this. On your approval,
 I'll send this to Linus. Winner winner chicken dinner! 
 Content analysis details:   (-1.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [130.239.18.156 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [130.239.18.156 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1mSK2I-00033E-U8
Subject: Re: [Openipmi-developer] Issue with panic handling and ipmi
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
Cc: openipmi-developer@lists.sourceforge.net,
 LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 20 September, 2021 - Corey Minyard wrote:

> Well, that was dumb.  Fix follows...
> 
> Thanks for working on this.  On your approval, I'll send this to Linus.

Winner winner chicken dinner!

This fixes the issue, and now panic timer works, and we get crashdumps
to pstore.

Great job, I approve!


Thanks for your help getting this fixed.


//Anton


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
