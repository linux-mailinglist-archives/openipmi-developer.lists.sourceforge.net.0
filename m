Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CD12A4BD6B8
	for <lists+openipmi-developer@lfdr.de>; Mon, 21 Feb 2022 08:04:26 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nM2k8-0000I7-Gp; Mon, 21 Feb 2022 07:04:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <joel.stan@gmail.com>) id 1nM2k5-0000Hr-Au
 for openipmi-developer@lists.sourceforge.net; Mon, 21 Feb 2022 07:04:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/eiwcrN4ADbCrGdR4ROiTkO+IoDEHApHd+vClHLmF8E=; b=ir0QH3ZT1yZGXw5XGrJsLxhkRd
 kpqTKrdFsseoLoCgQ4WRIklVbjVhgqUGpO4o9tsmibQxnsuwDXZtQ40VYf43dSi5h+s9XXFlMPPp8
 auUJOX2gtwLLS61bF5kXeFrrT67md7WfnRYlWy7YCU7C5r8rilr0xV3q5Wtg6ZZGXeTs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=/eiwcrN4ADbCrGdR4ROiTkO+IoDEHApHd+vClHLmF8E=; b=W
 lbV5kXA8Ev8aDfAM+iH0yNuwJnP3kOj5UQf6uC6JOZimy8GrpZ7SspMvmKRzAUi40zBACXYQwh3Ju
 Ba21dUSGcuO8ipe3wz4BmC8VwJR4iLjcyfRXKYG/5qhSvKxd/XgTonLk7YR0tmMqKl3LaHzGJzvH/
 c4SyfZ8srHt4eyTo=;
Received: from mail-pj1-f41.google.com ([209.85.216.41])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nM2jy-0003yh-3J
 for openipmi-developer@lists.sourceforge.net; Mon, 21 Feb 2022 07:04:15 +0000
Received: by mail-pj1-f41.google.com with SMTP id
 iq13-20020a17090afb4d00b001bc4437df2cso1595792pjb.2
 for <openipmi-developer@lists.sourceforge.net>;
 Sun, 20 Feb 2022 23:04:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/eiwcrN4ADbCrGdR4ROiTkO+IoDEHApHd+vClHLmF8E=;
 b=NRWTdrpQx7U1oJ/7ablQC25nJUWoFqG64cB1fg3qbO+UQ2XezTfYjBVhzgvxzpHrXj
 LYk/V49LdNqVx1OmvmoweRj4GJnUYErm/iVsP2As36Ln/zJntJ/RZ9P3xS8q7N+EuiAG
 TRv/c+dQdyWScwW0OjmW73xZPo2nFIFL+b8ol4z6IYAXzvmpTdGb6UdcQWVqbmzhihs1
 rmoYUDmInaxmudebfuQ9zFYcz6iiHPlK1Fbf5Z5JfV33r2TE065wqiz3eiDEn6ccKNVq
 P8p5sC/2lg+he+9N4jUQyizg4n3oNXlF4gz9RftYi2t1+5Rui6k3vy69jmstalH9spc9
 L9iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=/eiwcrN4ADbCrGdR4ROiTkO+IoDEHApHd+vClHLmF8E=;
 b=VvQPQo9vIDNWwjc0Q/gv/OqVBh77FJSk5AkhglrONpTMG90bMX7mZ63RvtUnTloJqj
 J4DpRbeUh1bUcbDPqJ9qmQlDVCaWHLf1VHJ9zOpmQVwndfJFbS2+5AKP+n+pujToZ1Dv
 ohW2OgUH2eMNDX+fTx0eSDR6QsXlhyYpRvzF2BI+AnRqHZLwsScNsGuO2pYJ7DanaDdZ
 7xIrrW5Ls3TWp5bziRHQ4Ux488sWBi3N1166GBgGQEe+jhQuDphQzqOpLOJjEIMa10CP
 Eji9Xgtzwhnhl8r4s2V1+OItvV+rRO9p/wl03VmEzx/NzzcF9aLED5ITKwr8WEQpGtM0
 tskw==
X-Gm-Message-State: AOAM533wOJI76So4wTceZ2EZ40JUHKMkg8QoEAuDr6N5bTCGRLGVhbA8
 WqSvCHhmq9sSx7/LUi7L34I=
X-Google-Smtp-Source: ABdhPJzA5t8Iw5+WX85Tv+GB0Iq3xAsTYdBjK1LVPlY/HRT+Ie5OzSnEamjM3sxowBnw7qNOjavtCg==
X-Received: by 2002:a17:902:74ca:b0:14f:acf5:a5b8 with SMTP id
 f10-20020a17090274ca00b0014facf5a5b8mr5194316plt.54.1645427044404; 
 Sun, 20 Feb 2022 23:04:04 -0800 (PST)
Received: from localhost.localdomain ([45.124.203.14])
 by smtp.gmail.com with ESMTPSA id s6sm11447175pfk.86.2022.02.20.23.04.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 20 Feb 2022 23:04:03 -0800 (PST)
From: Joel Stanley <joel@jms.id.au>
To: Corey Minyard <minyard@acm.org>,
	Andrew Jeffery <andrew@aj.id.au>
Date: Mon, 21 Feb 2022 17:33:51 +1030
Message-Id: <20220221070351.121905-1-joel@jms.id.au>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The AST2600 is already described in the bindings, but the
 driver never gained a compatible string. Signed-off-by: Joel Stanley
 <joel@jms.id.au>
 --- drivers/char/ipmi/kcs_bmc_aspeed.c | 1 + 1 file changed, 1 insertion(+)
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.41 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.41 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [joel.stan[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1nM2jy-0003yh-3J
Subject: [Openipmi-developer] [PATCH] ipmi: kcs: aspeed: Add AST2600
 compatible string
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
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

The AST2600 is already described in the bindings, but the driver never
gained a compatible string.

Signed-off-by: Joel Stanley <joel@jms.id.au>
---
 drivers/char/ipmi/kcs_bmc_aspeed.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/char/ipmi/kcs_bmc_aspeed.c b/drivers/char/ipmi/kcs_bmc_aspeed.c
index 92a37b33494c..b555286016b1 100644
--- a/drivers/char/ipmi/kcs_bmc_aspeed.c
+++ b/drivers/char/ipmi/kcs_bmc_aspeed.c
@@ -693,6 +693,7 @@ static const struct of_device_id ast_kcs_bmc_match[] = {
 	{ .compatible = "aspeed,ast2500-kcs-bmc", .data = &of_v1_ops },
 	{ .compatible = "aspeed,ast2400-kcs-bmc-v2", .data = &of_v2_ops },
 	{ .compatible = "aspeed,ast2500-kcs-bmc-v2", .data = &of_v2_ops },
+	{ .compatible = "aspeed,ast2600-kcs-bmc", .data = &of_v2_ops },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, ast_kcs_bmc_match);
-- 
2.34.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
