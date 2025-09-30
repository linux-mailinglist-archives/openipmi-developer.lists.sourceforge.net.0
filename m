Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F17F2BACF8A
	for <lists+openipmi-developer@lfdr.de>; Tue, 30 Sep 2025 15:06:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Cc:Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive
	:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:Sender:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=9wJxk+twioR32X2MOb5Q8tHc6eyHttfgGyc4NTXFgQs=; b=ISX5Hvnc1sI8Wmki2R6uE1t/og
	0+sCQamIAzGAzuNkhxbSFqpk0Nep9iY5w6p6vVg42gAl7Bs+2uo+QHF0kJdjsK2BPZi98tPQx3EuD
	63prOGkBpnxWVvSXepBaIw+suFWZMA4376VcSQSYnPCsl9Y89Vob5OJQanFEiCD7NMb4=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1v3a3E-0002Tx-FL;
	Tue, 30 Sep 2025 13:05:52 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <guojinhui.liam@bytedance.com>) id 1v3V1W-0000ZS-Bu
 for openipmi-developer@lists.sourceforge.net;
 Tue, 30 Sep 2025 07:43:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=axSEZrnXl/WyQ4MMR1Y0hlJLy0n8pxTq1p3rAAO8pa0=; b=Bc1BDDd/c1ZkKNOIRonAAF+8ZO
 9ZG4hI87vpIKmIgIE5yVlhUV8TOeEcbodvDg6/tKq5Wzcs2/jVmwXkmUa2Swr9Tld0wZabLQebRDl
 7WsRkTEEWg/Zh97sR5glaLbm5ACMcfJDdO1JGiqH7rMiOiGclGijLBBhyu27ATY/Wpkk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=axSEZrnXl/WyQ4MMR1Y0hlJLy0n8pxTq1p3rAAO8pa0=; b=Q8+kq4yLKh+WxsWNc5HItcVE7T
 apOHGx7CXB8e2ksYkhmc7qTjTgMOwm6rUCxrkhjWVi7gzSDB37Eo7v+ojJz+iPESsn08dMuGGLtm6
 kAm/hJfmN5813I0vomXo4yK+cvLwVqG3oZl95Ce/0wgh4ITc6rokqLndJaPqLDH+mTVA=;
Received: from mail-pg1-f178.google.com ([209.85.215.178])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1v3V1W-0000mw-GA for openipmi-developer@lists.sourceforge.net;
 Tue, 30 Sep 2025 07:43:47 +0000
Received: by mail-pg1-f178.google.com with SMTP id
 41be03b00d2f7-b551b040930so3759048a12.2
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 30 Sep 2025 00:43:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bytedance.com; s=google; t=1759218221; x=1759823021;
 darn=lists.sourceforge.net; 
 h=message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=axSEZrnXl/WyQ4MMR1Y0hlJLy0n8pxTq1p3rAAO8pa0=;
 b=V8xD9QgeO9zwdDxE1e0NexhBOIoljbSXpZfQlcQt+1TWVyivUYKaIGsGR8hXoexQJz
 R7CJO20DHX6NIwz682sQz/sTeU1N4B/ldIcd/E/3CIzzYyNe7c9sf2wGyBqwZg51hRLV
 LT79172K0pCGQd+x+E594VA0BkanvtE/HDynIfZPp/evn2vu6G2ltcEVtJvUpMNc5Scd
 2GQ6pfIZ/hOItwN11Qu0e5iN0DlXOluKUyjeKCgjeQBsksoJZMwYfXonisUx8uLKC6pa
 c5fXyUTrkrtzNXMnTDGePBN4GkOJY5o+dJzFKD7RSDpy/l3rZd4HF5VFya5iz5Eo1Syk
 Ex0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1759218221; x=1759823021;
 h=message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=axSEZrnXl/WyQ4MMR1Y0hlJLy0n8pxTq1p3rAAO8pa0=;
 b=NWTr28k3LKj5CAcokWk55xa9c2LXGi6jk/hJ2ZPwA92hfbC2NwSgQTBAvYqvE/Wtdg
 OYWDUEd3t3ypYsPPdwL/AKWkKPh5hROnoWxPXoetUQSzr5erVd97Cv4IhskkCq8RGRkK
 n+H3h+OA2p2KCJhVjTLHEAwiO6LjHRt/Zqcbl+50KBaX1tF+/lbnd/nU+3eQqs85ewBE
 ZtQVY9LDRQq+fwwKJqWOcffCKqj9cToleG2hvcmBk2FYzJ5WumPsvPrlZUbjonfpx8ei
 FJm25xMUEtb7RQMSijo3AhnUX0xi/+pyHxTAmiLNS+7fVXbzkSNh6ajrsc4l6tGOssh8
 J0XQ==
X-Gm-Message-State: AOJu0YwKcHIyg7HofCUKiB4wowkXf1vTFKkUmJDHjATUn1GGin39MkGz
 gqLXdq3qdXcHPlyaePhy39WSxAAFBgLFsf1QSnhSh0UYhNhx412hxlo/JH7X5KBnX9g=
X-Gm-Gg: ASbGncsEjdnft9f921GZow4w2kNatI5a/UxWKGg0a7r4MhnKJRji+ZGKQm+w0/xa/Pn
 0sVtG8PZhJ1SIS7rJg3rrlGhDFwgwOJZWXtXRF4BSWZL4ytSB09WxPAa/k9ITmnRH9JiR1c/kMH
 jbSfUDuRjFmZfcRDIXWIHhIuMHSaStDkOO5nJRxCwjTIFS857daDHGUmMH5ankrXynapl6r4WZW
 d9xAz7zWx01GlrdRvwBFKRp4YCj60fCCZNBcE1UHaJDzTjgPb88tkEylwYCJTx92MDxbjRRqEPo
 F1aqoawSaH0aFCGJZ9nVwa4qmq+M9RJYCop5sNculL0/0xVmeYvbWhQNTz+XGnBdKsqx2YussYA
 B7mRpLPfC0yRq2Rj8nC7h9pahhfwyDZYnmxMt618iAv+vEtGOEaH9veTTR8wJeZtSF00/mKazuO
 vIB8R8+HA62g7J+PdwoJWipnM=
X-Google-Smtp-Source: AGHT+IHRGJdlwrgUn8z0FVOOqiAI6aN/EQorplmJHIi20oB6cflxPIMxeuYCJCaPdCg6cetvuv/Aag==
X-Received: by 2002:a17:90b:1644:b0:330:6d5e:f17e with SMTP id
 98e67ed59e1d1-3342a2b94c2mr21467985a91.24.1759218220661; 
 Tue, 30 Sep 2025 00:43:40 -0700 (PDT)
Received: from 5CG3510V44-KVS.bytedance.net ([139.177.225.243])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-338386f577bsm3535374a91.2.2025.09.30.00.43.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 30 Sep 2025 00:43:40 -0700 (PDT)
To: corey@minyard.net
Date: Tue, 30 Sep 2025 15:42:36 +0800
Message-Id: <20250930074239.2353-1-guojinhui.liam@bytedance.com>
X-Mailer: git-send-email 2.17.1
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The command "ipmi -b -t" would occasionally fail: #ipmitool
 -b 6 -t 0x2c raw 0x6 0x01 Unable to send command: Invalid argument Unable
 to send RAW command (channel=0x6 netfn=0x6 lun=0x0 cmd=0x1) The race window
 between __scan_channels() and deliver_response() causes the parameters of
 some channels to be set to 0. 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.178 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1v3V1W-0000mw-GA
X-Mailman-Approved-At: Tue, 30 Sep 2025 13:05:51 +0000
Subject: [Openipmi-developer] [PATCH v2 0/3] ipmi: Close the race between
 __scan_channels() and deliver_response()
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
From: Jinhui Guo via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Jinhui Guo <guojinhui.liam@bytedance.com>
Cc: openipmi-developer@lists.sourceforge.net, guojinhui.liam@bytedance.com,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

The command "ipmi -b -t" would occasionally fail:
  #ipmitool -b 6 -t 0x2c raw 0x6 0x01
  Unable to send command: Invalid argument
  Unable to send RAW command (channel=0x6 netfn=0x6 lun=0x0 cmd=0x1)

The race window between __scan_channels() and deliver_response() causes
the parameters of some channels to be set to 0.

Fix the race between __scan_channels() and deliver_response() with the
following changes.

1. Only assign intf->channel_list = intf->wchannels and set
   intf->channels_ready = true in channel_handler() after all channels_ready
   have been successfully scanned or after failing to send the IPMI
   request.
2. channel_handler() sets intf->channels_ready to true but no one clears
   it, preventing __scan_channels() from rescanning channels. When the BMC
   firmware changes a rescan is required. Allow it by clearing the flag
   before starting a new scan.
3. Channels remain static unless the BMC firmware changes. Skip channel
   rescan when no BMC firmware update has occurred.


v1: https://lore.kernel.org/all/20250929081602.1901-1-guojinhui.liam@bytedance.com/

Changelog in v1 -> v2 (suggested by corey):
 - Split the fix into three independent patches, each addressing a
   separate issue.
 - Clear intf->channels_ready only when the BMC firmware changes.

Jinhui Guo (3):
  ipmi: Fix the race between __scan_channels() and deliver_response()
  ipmi: Fix __scan_channels() failing to rescan channels
  ipmi: Skip channel scan if channels are already marked ready

 drivers/char/ipmi/ipmi_msghandler.c | 24 +++++++++++++++++-------
 1 file changed, 17 insertions(+), 7 deletions(-)

-- 
2.20.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
