Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6441B524BA2
	for <lists+openipmi-developer@lfdr.de>; Thu, 12 May 2022 13:29:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1np70y-0000Pt-TU; Thu, 12 May 2022 11:29:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linmq006@gmail.com>) id 1np0hC-00048n-HI
 for openipmi-developer@lists.sourceforge.net; Thu, 12 May 2022 04:45:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=R30IJVXwSL1ZnJ1BIT6fsASUfGoZMEuIG7wV6MAjJno=; b=j8HwqNZh5QjYbD8fMmxfcLllJk
 1jsY/LPxSMR4n5l9sIfcyuHPwnCvct1KkGgkZUB9uayFQhtjdYLNju4i2gNQ6KPax8+sKwMzpLdDy
 /zzR2UHd/EdLKWsL/svC2Dbp0wDf/Lv6nQbPnIyD0EY4ltdBevRFPU26XJdHRyT88nGo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=R30IJVXwSL1ZnJ1BIT6fsASUfGoZMEuIG7wV6MAjJno=; b=h
 D7xhxbLB1T90vLMx+CjFkfL519mgvuJMVUvNO1t/ayYH0vLXq4JbfJMjCjfhXNRouuciUbXUzzo/H
 4ocYqYYyKxYgzwwM0fACWGjY9GD+wDEveHu28xfOdciw5cyEySExHYbAxzRiI3IwL9j2gx76iJQAJ
 PtMSxIN8SlABGKVI=;
Received: from mail-pf1-f170.google.com ([209.85.210.170])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1np0h9-009NUn-KI
 for openipmi-developer@lists.sourceforge.net; Thu, 12 May 2022 04:45:01 +0000
Received: by mail-pf1-f170.google.com with SMTP id 204so3762934pfx.3
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 11 May 2022 21:44:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=R30IJVXwSL1ZnJ1BIT6fsASUfGoZMEuIG7wV6MAjJno=;
 b=h+dZ7D555Y0ff/nw/PrelqhTvfGg6mV1wkRwlHQISW4SAYlgve8QYXHoBXLJYVvAX3
 V7dIXIcR7GpkdYPqL97NaURewls84oNM/BmyPIGFZxb85VSJHecbsYINz/YPqIf0zoZL
 5PiSm6RVfuYl6+iDo0QGHbhNR/gsVdvxiso6axaNYfWPyIiazAJj/CW1t1Cvnv6d0vEH
 +XMG2dSO1vRHo0Sv7pYBiMqGRN2IH/PvvEmG9OH3F1Qkm+DzuWtNGfiecKPqOeQQnp3h
 HF1QE8CFU4X+pr874n5hRKOUhtPVtdVNOdWgzGXqkSaBjNUUzjhKvObBKQndnLbfw0n9
 jHrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=R30IJVXwSL1ZnJ1BIT6fsASUfGoZMEuIG7wV6MAjJno=;
 b=2Cvv4tPifKd5M3AGR1cjxP2XyWFUuBdJ5Hl43P15/p+K7MsOQcLsoQHqTSyCQb3uu1
 GjUnGnkZiZ95zgFYmlPE6bU2VNM7NIsol31IaSge8/wKKoaL4x7paYhwlWTkBlBUMPxu
 6lTc3VVc7SKIdCSYW/dHj6FFqVZr9MMP2BWxzotmZ54pHlTcGWhT3KPxODrhM/Hr7OA9
 yl7AbbLRX2iWtZHFJsczXEiUwYNKE+MtDqdooV0FYIFK/nsOeVFB1d281aIlnedtR45I
 bxRD7nqX/VHm3tAYCWNS9s36Z0nbKlsmM+oKwEPLdRKZfojNS6lscPjhO9XXCZE83FZp
 KxJA==
X-Gm-Message-State: AOAM530KGbcR5YzasQjCLfvJEI0hVuq3rPaP9e0qXEgtq//seZDFPfep
 5+zMcphoH2Ebg5dZdLn+Rm0=
X-Google-Smtp-Source: ABdhPJx647XsCpk5dUpr8pTM+cEV6eKbfb7pvLcYKJx4e47f2P98TMMu9EY80y2LRb9+xo0KYSXA6A==
X-Received: by 2002:a05:6a00:14cc:b0:510:4b70:403e with SMTP id
 w12-20020a056a0014cc00b005104b70403emr28190061pfu.55.1652330694042; 
 Wed, 11 May 2022 21:44:54 -0700 (PDT)
Received: from localhost.localdomain ([202.120.234.246])
 by smtp.googlemail.com with ESMTPSA id
 s7-20020a17090aba0700b001d5943e826asm794167pjr.20.2022.05.11.21.44.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 May 2022 21:44:53 -0700 (PDT)
From: Miaoqian Lin <linmq006@gmail.com>
To: Corey Minyard <minyard@acm.org>, openipmi-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Date: Thu, 12 May 2022 08:44:45 +0400
Message-Id: <20220512044445.3102-1-linmq006@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: of_parse_phandle() returns a node pointer with refcount
 incremented, 
 we should use of_node_put() on it when done. Add missing of_node_put() to
 avoid refcount leak. Fixes: 00d93611f002 ("ipmi:ipmb: Add the ability to
 have a separate slave and master device") Signed-off-by: Miaoqian Lin ---
 drivers/char/ipmi/ipmi_ipmb.c | 1 + 1 file changed, 1 insertion(+) 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [linmq006[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [linmq006[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.170 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.170 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1np0h9-009NUn-KI
X-Mailman-Approved-At: Thu, 12 May 2022 11:29:50 +0000
Subject: [Openipmi-developer] [PATCH] ipmi:ipmb: Fix refcount leak in
 ipmi_ipmb_probe
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
Cc: linmq006@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

of_parse_phandle() returns a node pointer with refcount
incremented, we should use of_node_put() on it when done.
Add missing of_node_put() to avoid refcount leak.

Fixes: 00d93611f002 ("ipmi:ipmb: Add the ability to have a separate slave and master device")
Signed-off-by: Miaoqian Lin <linmq006@gmail.com>
---
 drivers/char/ipmi/ipmi_ipmb.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/char/ipmi/ipmi_ipmb.c b/drivers/char/ipmi/ipmi_ipmb.c
index b81b862532fb..a8bfe0ade082 100644
--- a/drivers/char/ipmi/ipmi_ipmb.c
+++ b/drivers/char/ipmi/ipmi_ipmb.c
@@ -476,6 +476,7 @@ static int ipmi_ipmb_probe(struct i2c_client *client,
 	slave_np = of_parse_phandle(dev->of_node, "slave-dev", 0);
 	if (slave_np) {
 		slave_adap = of_get_i2c_adapter_by_node(slave_np);
+		of_node_put(slave_np);
 		if (!slave_adap) {
 			dev_notice(&client->dev,
 				   "Could not find slave adapter\n");
-- 
2.25.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
