Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 87C254EB194
	for <lists+openipmi-developer@lfdr.de>; Tue, 29 Mar 2022 18:13:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nZEKz-0003QV-6X; Tue, 29 Mar 2022 16:13:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <chen.chenchacha@foxmail.com>) id 1nZEKr-0003QF-TU
 for openipmi-developer@lists.sourceforge.net; Tue, 29 Mar 2022 16:12:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Date:Subject
 :Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=plXQD20lQSzZsGQoCpi+P8XSYcFNpRSGduCnfS0GTkU=; b=duhLg8/JGoRH9R5SJCUcQH8oua
 ppGSaDcV7KUpV8UL5ba4Ihe2ejhxtNIMxiBXte9jmD8CliyHfhuXNHQ7fkxst3pZMBkXWza93L75K
 4wVhFVoIpxS5Pc8iUxapZFaL8rmP3WAUmprCmLnk1krT6lvV3ZpVukzNRKmWosjoAQG4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Date:Subject:Cc:To:From:Message-ID
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=plXQD20lQSzZsGQoCpi+P8XSYcFNpRSGduCnfS0GTkU=; b=I
 kkLIkankpJmFwmnBYkH+XY32RFFMqvFW44PryzfSZkLHBUlc4olP4H4A8aqv5kHLCjQxVjSG8O+Fx
 EU4nV3Sdbo+Cs3xHJl0ybj5fnXSLUSCpGk+N3JYVZo5NP99XVeumyIAPTIM6nEOb/xX0mEbaGdHAJ
 DlaFVYsBLOJCo2EU=;
Received: from out162-62-57-210.mail.qq.com ([162.62.57.210])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nZESl-00Fxyo-6O
 for openipmi-developer@lists.sourceforge.net; Tue, 29 Mar 2022 16:12:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foxmail.com;
 s=s201512; t=1648570366;
 bh=plXQD20lQSzZsGQoCpi+P8XSYcFNpRSGduCnfS0GTkU=;
 h=From:To:Cc:Subject:Date;
 b=dCIMk3uy6U/ecJMb/ifOpvekCEc5WAFEjnGeqPVdPezbPfi1qsKXMsN301a0WCco/
 Qab7U69GN5NWSCkAb+K7S9/s5DtfzcCEokDtlle8qpB3rBtdDeWM586e8YUfiPY1IU
 Xpij+RRjwAGj5nu0mB4UxeJLtt9A7D8DIGbrSfyY=
Received: from localhost.localdomain ([120.245.132.52])
 by newxmesmtplogicsvrsza5.qq.com (NewEsmtp) with SMTP
 id 32C96631; Wed, 30 Mar 2022 00:12:44 +0800
X-QQ-mid: xmsmtpt1648570364twlbk78iv
Message-ID: <tencent_9D994CB589E97D7605023F5CF51D7DA4F50A@qq.com>
X-QQ-XMAILINFO: OMWm0AbyvxL+nDZ7vqp4YyGvUM+RaNvkyO5/mPxfy0VDt3hvjjTxH72ZE0svhb
 BND5Vi4zyQj7Ou32QjC7Ug2XhbrLf9uRcKLylz9I7lQHEIdw4+W+Jxdy/MFf8EvfFE9uixVZ30+C
 yje6kmwm0Wwp8LiW6LXFpeM8CfwEmCw1ojABUkI4iPxu+PnjFFkWj053DY+nqcUiYn0nZQw2uNIt
 ddA+KF5moCqMggH/ctgPHygRd9ME8h852CWVpkookTYYH1G7hcMvbE4GoKvUDvtA3CnHUjJKnBoN
 H6Hg+NdIVMF6Dfkf2inHpN60dwBOTl3dLRxIKbQSa4zurXcBcv+4JTTLoqToZaMGab7Zqxqc9LTQ
 0eI7zFE24/2eNg6pkxBlt21slxCjRLnnIpLMXzmOYgHxsWpJ7SPbr56p4Ev037bS19W7+adi8F/y
 Ml3HS54dMbdAjnqTP4UbcH62AJf9jva2emCR0J09csNwRA43YC1DAbElL42n/tfibvNp2GpnG5T0
 XtwLznXTHWVRzh4EfOdzIjyS4WbmBuCrMIo84w5n+4+/T6BW8e4ZsHO35YHRtFliWdOhuuODhd9z
 nEuRkTPWRnxqybL9b8QP11a/9AgePMMHpWKRw5FwiMSwDrztRkFR/zM6yJZDyNvuZXROuzcipDxZ
 CghNvram0cpq89hOGSO9vfeKxIT5IB4AhwIG1wuLwdH9MhYhtZ4XfvYfWpH4rWFTuVvqMth2xFyv
 ZfJRAD0RKDkgoy+7oM9QVeDQuET+jrrHC7/0D+D2wT6S+t0Yd5m3vTQCNq60KFzUkCcexCtn8Gl1
 2uqXIZpyIj4q0ZhpmOJH0s4AMNXJcDAjxHLkNSjl7ZqwloqF919AI8Ni4U4hECWVfMVZlq4qTVYK
 svm9tH7Y5zqS8byK1NaHalrLQsTndlWu/AA99P2eRm6ESBm+/Ya65yDaUZOw8httPbQyRb3HpT
From: Chen Guanqiao <chen.chenchacha@foxmail.com>
To: minyard@acm.org, openipmi-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Date: Wed, 30 Mar 2022 00:12:38 +0800
X-OQ-MSGID: <20220329161242.76457-1-chen.chenchacha@foxmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam-Score: 3.4 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  In some case, ipmi is frequently accessed,
 and the communication
 of bmc device is blocked, ipmi will consume a large amount of memory. This
 patch provides some limits for the number of user and messages in ipmi. 
 Content analysis details:   (3.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [162.62.57.210 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [chen.chenchacha[at]foxmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [162.62.57.210 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 3.2 HELO_DYNAMIC_IPADDR    Relay HELO'd using suspicious hostname (IP
 addr 1)
X-Headers-End: 1nZESl-00Fxyo-6O
Subject: [Openipmi-developer] [PATCH v2 0/4] add limit on the total number
 of users and oustanding messages
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

In some case, ipmi is frequently accessed, and the communication of bmc
device is blocked, ipmi will consume a large amount of memory.

This patch provides some limits for the number of user and messages in
ipmi.

In addition, this patch also provides a method to view the current number
of users and messages in ipmi, Used to diagnose and troubleshoot issues.
and introduce a simple interface to clear the message queue.

Changelog v2:
- Add a limit on the number of users
- Add a less rigid limit on the number of oustanding messages
- The interface for viewing the number of users and messages is retained
- The interface for cleanup messages is retained

Chen Guanqiao (4):
  ipmi: msghandler: Add a limit for the number of users
  ipmi: msghandler: Add a limit for the number of messages
  ipmi: msghandler: Get the number of users and messages through sysfs
  ipmi: msghandler: Add a interface to clean message queue in sysfs

 drivers/char/ipmi/ipmi_msghandler.c | 207 ++++++++++++++++++++++++++++
 1 file changed, 207 insertions(+)

--
2.25.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
