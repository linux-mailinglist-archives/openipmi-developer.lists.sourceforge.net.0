Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E26E040E1A5
	for <lists+openipmi-developer@lfdr.de>; Thu, 16 Sep 2021 18:40:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mQuRC-00021i-5f; Thu, 16 Sep 2021 16:40:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <glance@acc.umu.se>) id 1mQt9R-0002yA-37
 for openipmi-developer@lists.sourceforge.net; Thu, 16 Sep 2021 15:18:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fuJKIGCwTupVyiDFoPJ1ic+1ZOL4C7eorIrGgpkNhCw=; b=imSwhvjRevKkbSG6Xp0S7iv9zs
 jh3yVac0cZYA2Cu9X8d20mIyJf9O23SA8gaa7f9EM36odVS4Opa/g5C9cl62mGxgdl0Q1qqCp3QqP
 apI+1K2m6YeAgDuCKVMDJk5SsEm6MAkv/LT0WqRF4F9ETovvJ7hJXLQgqU6AzPNzgL6k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=fuJKIGCwTupVyiDFoPJ1ic+1ZOL4C7eorIrGgpkNhCw=; b=f
 Nz0s8RByFZrJqRGs55/zKoXi5ywqdiDDUVjKcADg93sKoDo6l9m0Jwu3DtP3eYfD0BUQmkX7+EgaE
 F2EJs3rjguzAOqP9OUPK+u4IHPM4cJa6MwEur+sFaj3k3raVT2oW9qxqQMttJa52AbRFvI5KGGwoz
 yY8SK1T1qUM1VvW8=;
Received: from mail.acc.umu.se ([130.239.18.156])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mQt9P-0005bu-OV
 for openipmi-developer@lists.sourceforge.net; Thu, 16 Sep 2021 15:18:13 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by amavisd-new (Postfix) with ESMTP id F122344B8F;
 Thu, 16 Sep 2021 16:53:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=acc.umu.se; s=mail1;
 t=1631803980; bh=fuJKIGCwTupVyiDFoPJ1ic+1ZOL4C7eorIrGgpkNhCw=;
 h=Date:From:To:Cc:Subject:From;
 b=D2WT5+1O8nQ/F3boTejXKmGmD3LsI7U+bTqvTFokW+XCqyP2R28xl1zh+Oadi4krx
 wKZjvjjerRK76rrkw1DvwcxQ7WPoxeRW7JRtLTjIRGr6VXupI20YD7wWMsxsPpog0I
 UIajLOKcs6DmL7nq7nmoC9Itqo39FwvnL4wuMryeQ0mAiIKvEbuYGgb8hiM1GyVCEb
 blKRtcLVWx5TzS8Sk6vJbmdhZyCZnzq/C1QHeAaVNeSG9ZEnXAN6pSTCUwXMIkctST
 nWYTDC2a9T+Rykp8+rDMY0QFODjVZSmTTz4L3lXLn8UkbCqw7AkNq7uI0qtjqmo392
 jsUO8N3hXaTFw==
Received: by mail.acc.umu.se (Postfix, from userid 24471)
 id A603544B90; Thu, 16 Sep 2021 16:53:00 +0200 (CEST)
Date: Thu, 16 Sep 2021 16:53:00 +0200
From: Anton Lundin <glance@acc.umu.se>
To: Corey Minyard <minyard@acm.org>
Message-ID: <20210916145300.GD108031@montezuma.acc.umu.se>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: -2.4 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi. I've just done a upgrade of the kernel we're using in
 a product from 4.19 to 5.10 and I noted a issue. It started that with that
 we didn't get panic and oops dumps in our erst backed pstore,
 and when debugging
 that I noted that the reboot on panic timer didn't work either. 
 Content analysis details:   (-2.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [130.239.18.156 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: umu.se]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [130.239.18.156 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1mQt9P-0005bu-OV
X-Mailman-Approved-At: Thu, 16 Sep 2021 16:40:37 +0000
Subject: [Openipmi-developer] Issue with panic handling and ipmi
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
Cc: openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hi.

I've just done a upgrade of the kernel we're using in a product from
4.19 to 5.10 and I noted a issue.

It started that with that we didn't get panic and oops dumps in our erst
backed pstore, and when debugging that I noted that the reboot on panic
timer didn't work either.

I've bisected it down to 2033f6858970 ("ipmi: Free receive messages when
in an oops").

I tested just reverting that and both dumps to pstore and the panic
reboot timer started working again.


//Anton


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
