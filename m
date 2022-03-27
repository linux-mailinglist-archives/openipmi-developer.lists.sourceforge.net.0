Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 06CA14E88FA
	for <lists+openipmi-developer@lfdr.de>; Sun, 27 Mar 2022 18:48:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nYW3u-0001S6-Bw; Sun, 27 Mar 2022 16:48:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <chen.chenchacha@foxmail.com>) id 1nYW3p-0001Rz-4p
 for openipmi-developer@lists.sourceforge.net; Sun, 27 Mar 2022 16:48:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Date:Subject
 :Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vw4W9bVJMiNkljXZ10sTQBSfdwZmVEGDdSStOzPsh80=; b=bM5jFGVzszXjtgNVb+k7UmSjyE
 vCT2MXEPXxf9qE+ujrETcDns9I5HmNt/nEC77FvuiEPoh/AGt6nAT/I5ygxpFMeQfXqZneZklkwsP
 11WujwwcZ8UpML21pGR5+2BSuijWTF3MmzN+o61r+IzX9N00xqia5nCxy/5GnHU6LIzc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Date:Subject:Cc:To:From:Message-ID
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=vw4W9bVJMiNkljXZ10sTQBSfdwZmVEGDdSStOzPsh80=; b=D
 ttuyaG2XH7qv9iYf5OzE0AnchfxexhqXxr4NV2E/pcUfiF+iQ+E928yj45XxTot+RaKZqRKO0QjKO
 HH6rBlklOikN8dynK7wDkaJnKRwUAab0+DRBQGGBrFJwoGFFoo0EuBkVQ4YpullYSW6SMIj1v0VoY
 ZI5bUEbEaIuz34c8=;
Received: from out162-62-57-64.mail.qq.com ([162.62.57.64])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nYW3e-0001Qe-Fz
 for openipmi-developer@lists.sourceforge.net; Sun, 27 Mar 2022 16:48:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foxmail.com;
 s=s201512; t=1648399669;
 bh=vw4W9bVJMiNkljXZ10sTQBSfdwZmVEGDdSStOzPsh80=;
 h=From:To:Cc:Subject:Date;
 b=NrTjkP1GnLChuvvYTP0HOjxXy/AKuKvaEIWtKB9tM3e70os1r39eaglGS6gsR1cTn
 HBZ2dJhZohJNLOi3ZBdxewrAPy9mB3vPI4RG5bSlu2kIVOBnyIKTUXNYaBOZmhyNps
 /32KC9JeradYi4hJBtPzu2N85zUEQFVTg38oAOq8=
Received: from localhost.localdomain ([120.245.132.52])
 by newxmesmtplogicsvrszc10.qq.com (NewEsmtp) with SMTP
 id BEF2A844; Mon, 28 Mar 2022 00:47:47 +0800
X-QQ-mid: xmsmtpt1648399667tlb3y4xea
Message-ID: <tencent_BD6D4CB98B6D7FAA04F63D28F6457F10F40A@qq.com>
X-QQ-XMAILINFO: N9ac962MYdaQI8JmvpMXs1D0cKUe/X5p8kMNGhsvS/GIyjZWryGFu2A++pL2Wm
 51+aYaC1CLp0PFmlpf30msASKlPkEYHeYX+30k1iRh7BXABFsfY+BfnK0X+P2m7pMIfGBJTQdbVn
 R8q1fC6NLabS9pa1qRq8yeljY8LMGfFi+XEjRzBorGh4yVkJJhuH0rKG4KzKrLPeTZ1pJuakLFn3
 nMyhQGdw2yMgaWnZ/eDTk5t4O89U9a5ZiturHaIfyILxsjXJAOtOMHVjZgX1k4jw0PsKy/KxpsIA
 uNJPhFiwWgtiiP2qS4svAeCJrgUXTRR/cWCKS+QB7Q0Q0YOiMh6l0HuCl8b6VYi+n1lEdjFZhc3d
 Zie5acf57Qbw8ZDoLkK2QaS32S0RgNgC4PzCdQ9ew/T/hZr5gnMDax5mZDSYoqGR2dI/ovKeKZR4
 iKrwzxvaTsVwS5ArMjzIkP2mmZoMMloqnmo1WK47KHDdf4hpk9XmOZerEptLBOJ2IT1GSHQbXjlY
 2+IX2+vObBgbzwwlmV2T5yb/2Ug8aDTXLJ/AOFgO3H//ZVgdLn9/fNPcyMcKLANVw8857QDA29uX
 4mQVatneGiswe+X3jJYe95/+YTozbaMED2llRJLHermw8924tRDt7A8tfyJo2BulvPyjNaQ7n7Aa
 ogVdklNT2KQmeDoTN8eQlpUpxyJ+aA8qbIyKT7rlv8s7wNSaKsGZgDqaJicWc0JR1OrZ1sNQ7UYs
 yOKK1XQciQb/vjkobi1Xx2aNw/JDt1YGrUJcQNJuk6RVMUxm6NuqlTKUj0+9eizRzJkQGpVaGqQC
 Da9lE3UIZTo12TvgAmnrGbnkRCgX89Pq5MYLevyPbQydqZg0geAvUkjp0Von6+j/gTtA6oHNyaI6
 3LVyx9DWuje7fbxp0A6LDWU9GsmC5qSpa52w63ECVwU39gBa0bLaKAv5i6iTalQlVu+P+mmOpTHB
 GgZO5zdk4hbNqR/ei69hk9TGTEK5hV3leHY2cNklc=
From: Chen Guanqiao <chen.chenchacha@foxmail.com>
To: minyard@acm.org, openipmi-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Date: Mon, 28 Mar 2022 00:47:41 +0800
X-OQ-MSGID: <cover.1648397283.git.chen.chenchacha@foxmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam-Score: 3.4 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  At present, a scenario has been found that there are too many
 ipmi messages in a short period of time, and a large number of users and
 messages are blocked in the ipmi modules, resulting in a large am [...] 
 Content analysis details:   (3.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [162.62.57.64 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [162.62.57.64 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [chen.chenchacha[at]foxmail.com]
 0.0 T_SPF_TEMPERROR        SPF: test of record failed (temperror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 3.2 HELO_DYNAMIC_IPADDR    Relay HELO'd using suspicious hostname (IP
 addr 1)
X-Headers-End: 1nYW3e-0001Qe-Fz
Subject: [Openipmi-developer] [PATCH 0/3] ipmi: msghandler: check the users
 and msgs causing the system to block
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

At present, a scenario has been found that there are too many ipmi messages in a
short period of time, and a large number of users and messages are blocked in
the ipmi modules, resulting in a large amount of system memory being occupied by
ipmi, and ipmi communication always fails.

Frequent calls ipmi and failure of hardware communication will cause this
exception. And ipmi has no way to detect and perceive this problem, therefore
it is impossible to located and perceived online.

This patch provides a method to view the current number of users and messages in
ipmi, and introduce a simple interface to clear the message queue.

Chen Guanqiao (3):
  ipmi: Get the number of user through sysfs
  ipmi: Get the number of message through sysfs
  ipmi: add a interface to clean message queue in sysfs

 drivers/char/ipmi/ipmi_msghandler.c | 159 ++++++++++++++++++++++++++++
 1 file changed, 159 insertions(+)

-- 
2.25.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
